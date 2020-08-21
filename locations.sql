CREATE TABLE locations(
   name     VARCHAR(29) NOT NULL
  ,postcode VARCHAR(8) NOT NULL PRIMARY KEY
  ,type     VARCHAR(14) NOT NULL
  ,address  VARCHAR(54) NOT NULL
  ,phone    VARCHAR(13) NOT NULL
  ,website  VARCHAR(44) NOT NULL
);
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Bron Derw Medical Centre','LL57 1AH','gp','Glynne Rd, Bangor','01248 370900','bronderw.co.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Glanfa Surgery','LL57 1AY','gp','Orme Rd, Bangor','01248 351801','glanfasurgery.co.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Bodnant Surgery','LL57 2HH','gp','Menai Ave, Bangor','01248 364492','bodnantmedicalcentre.co.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Llanfairpwll Health Centre','LL61 5YZ','gp','Siglan Terrace, Ffordd Penmynydd, Llanfairpwllgwyngyll','01248 714388','llanfairpwllhealthcentre.co.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Menai Bridge Surgery','LL59 5BD','gp','Coronation Rd, Menai Bridge','01248 712210','nhsdirect.wales.nhs.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Beaumaris Health Centre','LL58 8AL','gp','Beaumaris Library, Beaumaris','01248 810818','beaumarishealthcentre.co.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Llanrug surgery','LL55 4AG','gp','Station Rd, Llanrug, Caernarfon','01286 673571','meddygfawaunfawr.co.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('MEDDYGFA LLANBERIS','LL55 4SU','gp','Caeheti, High Street, Llanberis, Caernarfon','01286 870634','wales.nhs.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Tal Y Bont Surgery','LL77 7NA','gp','43-47 High St, Llangefni','01248 722105','wales.nhs.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol David Hughes','LL59 5SS','secondary','Pentraeth Road, Menai Bridge','01248 712 287','http://ysgoldavidhughes.org');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Y Borth','LL59 5DS','primary','Tyddyn To, Menai Bridge','01248 713 000','http://www.borth.anglesey.sch.uk');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Gynradd Llanbedrgoch','LL76 8SX','primary','School Lane, Llanfair-Mathafarn-Eithaf','01248 450 291','http://www.ysgolllanbedrgoch.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Esceifiog','LL60 6DD','primary','Lon Groes, Lon Groes','01248 421669','https://www.estyn.gov.wales');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Gynradd Maesincla','LL55 1DF','primary','n/a? , Caernarfon','01248 673787','http://ysgolmaesincla.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Dolbadarn','LL55 4SH','primary','Capel-Coch Rd, Llanberis','01248 870711','http://www.ysgoldolbadarn.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Bodfeurig','LL57 4RN','primary','10 Strand Street, Llandygai','01248 600760','http://ysgolbodfeurig.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Dyffrn Ogwen','LL57 3NN','secondary','Coetmor Road, Ogwen','01248 600291','http://www.ysgoldyffrynogwen.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Tregarth','LL57 4PG','primary','n/a? ,Tregarth','01248 600735','http://ysgoltregarth.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Llanllechid','LL57 3EH','primary','Rachub','01248 600600','http://ysgolllanllechid.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Glancegin','LL57 1ST','primary','50 Ffordd Y Castell, Bangor','01248 353097','http://www.ysgolglancegin.cymru/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Y Garnedd','LL57 2LX','primary','Penrhos Road, Bangor','01248 352534','http://www.ysgolygarnedd.org.uk/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ysgol Tryfan','LL57 2TT','secondary','Ffriddoedd Road, Bangor','01248 352633','http://www.ysgoltryfan.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Capelulo Primary School','LL34 6RA','primary','Dwygyflylchi, Conwy','01492 622693','https://www.estyn.gov.wales/provider/6622023');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Our Lady''s R C Primary School','LL57 2UT','primary','Caernarfon Road, Bangor','01248 352463','http://www.ourladys.gwynedd.sch.uk/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('St Gerdards School Trust','LL57 2EL','private (both)','3 Ffriddoedd Road, Bangor','01248 351 656','http://www.st-gerards.org/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Fairways Nursery','LL57 2DR','nursery','Convent Lane, Bangor','01248 353444','n/a');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Ffalabalm','LL57 2BX','nursery','Penrhos Road, Bangor','01248 352555','http://www.ffalabalam.co.uk/');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Busy Bs Bangor Nursery','LL57 2RQ','nursery','Station Buildings, Treborth Business Park, Bangor','01248 371242','n/a');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Menai Nursery','LL57 4BL','nursery','Ffordd Gelli Morgan, Menai Nursery, Bangor','01248 670949','http://www.wyngarthdaynursery.com/bangor');
INSERT INTO locations(name,postcode,type,address,phone,website) VALUES ('Baginogion Menai Cyf','LL59 5HS','nursery','Pentraeth Road, Menai Bridge','01248 717427','http://www.babinogion.co.uk/');
