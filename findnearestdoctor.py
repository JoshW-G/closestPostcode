import sqlite3, geopy.distance, tkinter as tk
from math import log10, floor


def executeSQL(c, filename):
    
    fd = open(filename,'r')
    sqlFile = fd.read()
    fd.close()

    sqlCommands = sqlFile.split(';')

    for command in sqlCommands:
        c.execute(command)
    
def createConnection():

    conn = sqlite3.connect('Locations.db')
    c = conn.cursor()

    c.execute('DROP TABLE IF EXISTS locations')
    c.execute('DROP TABLE IF EXISTS llpostcodes')
    executeSQL(c, "locations.sql")
    executeSQL(c, "LLpostcodes.sql")
    conn.commit()
    return conn

def check_distance(conn,pc1,pc2):

    c = conn.cursor()

    coordinates_1 = None
    coordinates_2 = None
    lat1 = 0.0
    lat2 = 0.0
    long1 = 0.0 
    long2 = 0.0
    
    
    c.execute("SELECT Latitude FROM llpostcodes WHERE Postcode=?", (pc1,))
    lat1 = c.fetchone()[0]
    
    c.execute("SELECT Longitude FROM llpostcodes  WHERE Postcode=?", (pc1,))
    long1 = c.fetchone()[0]
    
    c.execute("SELECT Latitude FROM llpostcodes WHERE Postcode=?", (pc2,))
    lat2 = c.fetchone()[0]
    
    c.execute("SELECT Longitude FROM llpostcodes  WHERE Postcode=?", (pc2,))
    long2 = c.fetchone()[0]
    
    coordinates_1 = (lat1,long1)
    coordinates_2 = (lat2,long2)
    
    # Check for non-valid postcodes.
    if coordinates_1 == None or coordinates_2 == None:
        print("postcode(s) invalid")
        quit()
    else:
        # Calculate the distance and return it.
        distanceinmiles = geopy.distance.distance(coordinates_1, coordinates_2).miles
        return(distanceinmiles)


# check distance of all doctors to user postcode, return postcode of closest doctor
def findDoctor(pc1,Type):

        conn = createConnection()
        c = conn.cursor()
        pc2,closest_pc, closest_distance = "", "", 10
        
        #validate if postcode exists
        try:
            c.execute("SELECT Postcode FROM llpostcodes WHERE Postcode=?", (pc1,))
            c.fetchone()[0]
        except:
            c.close()
            conn.close()
            return 0




        c.execute("SELECT postcode FROM locations WHERE type=?", (Type,))
        rows = c.fetchall()
 
        for row in rows:                
                pc2 = pc2.join(row)
                 
                distance=(check_distance(conn,pc1,pc2))
                
                if distance < closest_distance:
                    closest_distance = distance
                    closest_pc = pc2
                    
                    
        #find info of the closest location           
        name,address,phone,website = "","","",""
        
        name=c.execute("SELECT name FROM locations WHERE Postcode=?", (closest_pc,)).fetchone()[0]
        address=c.execute("SELECT address FROM locations where Postcode=?", (closest_pc,)).fetchone()[0]
        phone= c.execute("SELECT phone FROM locations where Postcode=?", (closest_pc,)).fetchone()[0]
        website = c.execute("SELECT website FROM locations where Postcode=?", (closest_pc,)).fetchone()[0]
        Type = c.execute("SELECT type FROM locations where Postcode=?", (closest_pc,)).fetchone()[0]
        closest_distance = round(closest_distance, 2-int(floor(log10(abs(closest_distance))))-1)

        closest_info = [name, closest_pc, address, phone, website, closest_distance,Type]
        c.close()
        conn.close()
        return(closest_info)
        
        

def submit(pc, placeType):
    
    # TODO: include multiple types in db and clear results.
    
    
    info = findDoctor( pc.upper(),placeType.lower() )
    if info == 0:
        resultLabel = tk.Label(window, text="Please input valid postcode and select type", anchor = "w", font = ("Helvetica",9), fg = '#252525')
        
        
    else:
        resultString = "%s located at: %s, is your nearest %s, %s miles away." % (info[0], info[2], info[6],  info[5])
        resultLabel = tk.Label(window, text=resultString, anchor = "w", font = ("Helvetica",9), fg = '#252525')
        
    resultLabel.pack()
               



# TODO: scale to include all types, make permenant db instead of recreating it everytime


#USER INTERFACE

window = tk.Tk()

window.minsize(700,300)
window.title("Find Nearest Doctor")
window.configure(bg='#f1f1f1')
window.resizable(False, False)

postcode = tk.StringVar(window)
locType = tk.StringVar(window)
OptionList = [
"GP",
"Secondary School",
"Primary School",
"Nursery"
] 
locType.set(OptionList[0])

postcodeLabel = tk.Label(window, text = "Postcode: ", anchor = "w", font = ("Helvetica", 16), fg = '#252525')
postcodeEntry = tk.Entry(window, font = ("Helvetica", 16), fg = '#252525', textvariable=postcode)
postcodeLabel.pack()   
postcodeEntry.pack()

typeOption = tk.OptionMenu(window, locType, *OptionList)
typeOption.pack()
submitButton = tk.Button(window, text="Submit", command = lambda: submit(postcodeEntry.get(), locType.get() ))

submitButton.pack()



window.mainloop()


