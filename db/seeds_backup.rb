# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongspark_ide the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Pest Colours
Colour.create(name: 'Red')
Colour.create(name: 'Blue')
Colour.create(name: 'Green')
Colour.create(name: 'Yellow')
Colour.create(name: 'Orange')
Colour.create(name: 'Pink')
Colour.create(name: 'Purple')
Colour.create(name: 'Brown')
Colour.create(name: 'Black')

# Pest Marking Types
Marking.create(name: 'Scars')
Marking.create(name: 'Stripes')
Marking.create(name: 'Spots')
Marking.create(name: 'Patches')

# Pest Types
PestType.create(name: 'Dog')
PestType.create(name: 'Cat')
PestType.create(name: 'Fox')
PestType.create(name: 'Rat')
PestType.create(name: 'Rabbit')
PestType.create(name: 'Sheep')

# Pest Sources
Source.create(name: 'Surveilance Camera')
Source.create(name: 'Tracking Tag')
Source.create(name: 'Visual Sighting')

# Test pests
Pest.create(name: 'Brown Fox #1927', pest_type_id: '3', characteristics: 'Tall, brown unit.', colour_id: '8', size:'84')
Pest.create(name: 'Red Dog #1291', pest_type_id: '1', characteristics: 'This bloke hurt. Characteristic field', colour_id: '1', size:'92')

# Test M:M data for pests
MarkingPest.create(marking_id: '1', pest_id: '1')
MarkingPest.create(marking_id: '3', pest_id: '1')
MarkingPest.create(marking_id: '1', pest_id: '1')
MarkingPest.create(marking_id: '2', pest_id: '1')
MarkingPest.create(marking_id: '4', pest_id: '1')

# Person Types
PersonType.create(name: 'Employee')
PersonType.create(name: 'Conservation partner')
PersonType.create(name: 'Tour Operator')
PersonType.create(name: 'Volunteer')
PersonType.create(name: 'Fitness Trainer')

# Users
User.create(user_id: '10827', name: 'Loree Basnett', date_joined: '2004-01-08', person_type_id: '4')
User.create(user_id: '10162', name: 'Elvera Hunley', date_joined: '2001-11-22', person_type_id: '4')
User.create(user_id: '10064', name: 'Abe Bhakta', date_joined: '1999-09-29', person_type_id: '2')
User.create(user_id: '10957', name: 'Lorita Schartz', date_joined: '2001-07-25', person_type_id: '1')
User.create(user_id: '10106', name: 'Sheri Coplan', date_joined: '2009-09-11', person_type_id: '1')
User.create(user_id: '10414', name: "Katheleen O'Callaghan", date_joined: '2009-03-29', person_type_id: '3')
User.create(user_id: '10122', name: 'Cassie Rochin', date_joined: '2007-04-07', person_type_id: '5')
User.create(user_id: '10641', name: 'Karmen Gin', date_joined: '2004-09-04', person_type_id: '1')
User.create(user_id: '10033', name: 'Magda Harrah', date_joined: '2001-08-16', person_type_id: '1')
User.create(user_id: '10883', name: 'Eusebio Ingram', date_joined: '2010-06-03', person_type_id: '1')
User.create(user_id: '10292', name: 'Christena Free', date_joined: '1998-08-29', person_type_id: '3')
User.create(user_id: '10294', name: 'Letisha Asuncion', date_joined: '2001-02-09', person_type_id: '1')
User.create(user_id: '10373', name: 'Bruna Haire', date_joined: '2011-03-13', person_type_id: '2')
User.create(user_id: '10980', name: 'Rubye Simeon', date_joined: '2008-11-26', person_type_id: '2')
User.create(user_id: '10174', name: 'Tajuana Crumpton', date_joined: '2010-08-18', person_type_id: '1')
User.create(user_id: '10248', name: 'Layada Jess', date_joined: '2009-12-26', person_type_id: '1')
User.create(user_id: '10282', name: 'Margarite Segura', date_joined: '2001-06-26', person_type_id: '1')
User.create(user_id: '10402', name: 'Regina Ison', date_joined: '2001-12-24', person_type_id: '1')
User.create(user_id: '10469', name: 'Alycia Dandridge', date_joined: '2012-10-19', person_type_id: '3')
User.create(user_id: '10269', name: 'Lisette Karns', date_joined: '2003-07-14', person_type_id: '5')

# Phone Types
PhoneType.create(name: 'Home')
PhoneType.create(name: 'Mobile')
PhoneType.create(name: 'Business')

# Phones
Phone.create(user_id: '10033', country_code: '61', area_code: '2', phone: '96706517', phone_type_id: '3')
Phone.create(user_id: '10064', country_code: '61', area_code: '2', phone: '96627114', phone_type_id: '3')
Phone.create(user_id: '10106', country_code: '61', area_code: '2', phone: '96869417', phone_type_id: '3')
Phone.create(user_id: '10106', country_code: '61', area_code: '411', phone: '614587', phone_type_id: '2')
Phone.create(user_id: '10122', country_code: '61', area_code: '418', phone: '179770', phone_type_id: '2')
Phone.create(user_id: '10122', country_code: '61', area_code: '2', phone: '96179770', phone_type_id: '1', comment: 'Emergency only')
Phone.create(user_id: '10162', country_code: '61', area_code: '2', phone: '95630406', phone_type_id: '1')
Phone.create(user_id: '10174', country_code: '61', area_code: '2', phone: '92639745', phone_type_id: '3')
Phone.create(user_id: '10248', country_code: '61', area_code: '2', phone: '96630077', phone_type_id: '3')
Phone.create(user_id: '10269', country_code: '61', area_code: '2', phone: '97654342', phone_type_id: '3')
Phone.create(user_id: '10282', country_code: '61', area_code: '2', phone: '90654354', phone_type_id: '3')
Phone.create(user_id: '10292', country_code: '61', area_code: '415', phone: '761602', phone_type_id: '2')
Phone.create(user_id: '10294', country_code: '61', area_code: '418', phone: '236553', phone_type_id: '3')
Phone.create(user_id: '10373', country_code: '61', area_code: '416', phone: '450439', phone_type_id: '2')
Phone.create(user_id: '10402', country_code: '61', area_code: '2', phone: '96931763', phone_type_id: '1')
Phone.create(user_id: '10402', country_code: '61', area_code: '2', phone: '98876545', phone_type_id: '3')
Phone.create(user_id: '10402', country_code: '61', area_code: '417', phone: '892969', phone_type_id: '2')
Phone.create(user_id: '10414', country_code: '61', area_code: '417', phone: '046398', phone_type_id: '2')
Phone.create(user_id: '10469', country_code: '61', area_code: '416', phone: '329731', phone_type_id: '2')
Phone.create(user_id: '10641', country_code: '61', area_code: '411', phone: '424708', phone_type_id: '3')
Phone.create(user_id: '10827', country_code: '61', area_code: '411', phone: '207063', phone_type_id: '2')
Phone.create(user_id: '10883', country_code: '61', area_code: '414', phone: '884215', phone_type_id: '2')
Phone.create(user_id: '10957', country_code: '61', area_code: '413', phone: '834051', phone_type_id: '2')
Phone.create(user_id: '10980', country_code: '61', area_code: '416', phone: '154513', phone_type_id: '2')

# Areas
Area.create(name: 'Central NSW')
Area.create(name: 'Hunter and Mid North Coast')
Area.create(name: 'Northern Rivers')
Area.create(name: 'Northern Tablelands')
Area.create(name: 'Outback NSW')
Area.create(name: 'South Coast and Highlands')
Area.create(name: 'Sydney')

# Parks
Park.create(park_id: '2100100', name: 'Turon', area_id: '1')
Park.create(park_id: '2100105', name: 'Nangar', area_id: '1')
Park.create(park_id: '2100108', name: 'Coolah Tops', area_id: '1')
Park.create(park_id: '2100114', name: 'Goobang', area_id: '1')
Park.create(park_id: '2100134', name: 'Conimbla', area_id: '1')
Park.create(park_id: '2100135', name: 'Abercrombie River', area_id: '1')
Park.create(park_id: '2100136', name: 'Oolambeyan', area_id: '1')
Park.create(park_id: '2100148', name: 'Weddin Mountains', area_id: '1')
Park.create(park_id: '2100166', name: 'Mount Kaputar', area_id: '1')
Park.create(park_id: '2100169', name: 'Cataract', area_id: '1')
Park.create(park_id: '2100170', name: 'Kalyarr', area_id: '1')
Park.create(park_id: '2100177', name: 'Garrawilla', area_id: '1')
Park.create(park_id: '2100178', name: 'Timbarra', area_id: '1')
Park.create(park_id: '2100190', name: 'Cocoparra', area_id: '1')
Park.create(park_id: '2100192', name: 'Belford', area_id: '1')
Park.create(park_id: '2100193', name: 'Goulburn River', area_id: '1')
Park.create(park_id: '2100196', name: 'Warrumbungle', area_id: '1')
Park.create(park_id: '2101102', name: 'Booti Booti', area_id: '2')
Park.create(park_id: '2101109', name: 'Maria', area_id: '2')
Park.create(park_id: '2101111', name: 'Bellinger River', area_id: '2')
Park.create(park_id: '2101115', name: 'Tomaree', area_id: '2')
Park.create(park_id: '2101121', name: 'Junuy Juluum', area_id: '2')
Park.create(park_id: '2101128', name: 'Barakee', area_id: '2')
Park.create(park_id: '2101134', name: 'Towarri', area_id: '2')
Park.create(park_id: '2101136', name: 'Hat Head', area_id: '2')
Park.create(park_id: '2101138', name: 'Bindarri', area_id: '2')
Park.create(park_id: '2101140', name: 'Barrington Tops', area_id: '2')
Park.create(park_id: '2101141', name: 'Yarriabini', area_id: '2')
Park.create(park_id: '2101145', name: 'Dooragan', area_id: '2')
Park.create(park_id: '2101146', name: 'Myall Lakes', area_id: '2')
Park.create(park_id: '2101147', name: 'Crowdy Bay', area_id: '2')
Park.create(park_id: '2101155', name: 'Ulidarra', area_id: '2')
Park.create(park_id: '2101161', name: 'Wallarah', area_id: '2')
Park.create(park_id: '2101165', name: 'Bongil Bongil', area_id: '2')
Park.create(park_id: '2101166', name: 'Bago Bluff', area_id: '2')
Park.create(park_id: '2101167', name: 'Tapin Tops', area_id: '2')
Park.create(park_id: '2101170', name: 'Dunggir', area_id: '2')
Park.create(park_id: '2101173', name: 'Willi Willi', area_id: '2')
Park.create(park_id: '2101174', name: 'Kumbatine', area_id: '2')
Park.create(park_id: '2101176', name: 'Watagans', area_id: '2')
Park.create(park_id: '2101178', name: 'Mount Royal', area_id: '2')
Park.create(park_id: '2101179', name: 'Ben Halls Gap', area_id: '2')
Park.create(park_id: '2101181', name: 'Ghin-Doo-ee', area_id: '2')
Park.create(park_id: '2101183', name: 'Biriwal Bulga', area_id: '2')
Park.create(park_id: '2101184', name: 'Woko', area_id: '2')
Park.create(park_id: '2101190', name: 'Coorabakh', area_id: '2')
Park.create(park_id: '2101192', name: 'Willingat', area_id: '2')
Park.create(park_id: '2101193', name: 'Cascade', area_id: '2')
Park.create(park_id: '2101195', name: 'Dorrigo', area_id: '2')
Park.create(park_id: '2101197', name: 'Middle Brother', area_id: '2')
Park.create(park_id: '2101198', name: 'Saltwater', area_id: '2')
Park.create(park_id: '2103106', name: 'Mallanganee', area_id: '3')
Park.create(park_id: '2103109', name: 'Yabbra', area_id: '3')
Park.create(park_id: '2103113', name: 'Goonengerry', area_id: '3')
Park.create(park_id: '2103108', name: 'Wollumbin', area_id: '3')
Park.create(park_id: '2103125', name: 'Richmond Range', area_id: '3')
Park.create(park_id: '2103107', name: 'Mount Pikapene', area_id: '3')
Park.create(park_id: '2103134', name: 'Mount Nothofagus', area_id: '3')
Park.create(park_id: '2103136', name: 'Koreelah', area_id: '3')
Park.create(park_id: '2103138', name: 'Tooloom', area_id: '3')
Park.create(park_id: '2103139', name: 'Broadwater', area_id: '3')
Park.create(park_id: '2103157', name: 'Ramorine', area_id: '3')
Park.create(park_id: '2103161', name: 'Mebbin', area_id: '3')
Park.create(park_id: '2103164', name: 'Yuraygir', area_id: '3')
Park.create(park_id: '2103165', name: 'Mount Jerusalem', area_id: '3')
Park.create(park_id: '2103166', name: 'Fortis Creek', area_id: '3')
Park.create(park_id: '2103167', name: 'Mount Clunie', area_id: '3')
Park.create(park_id: '2103169', name: 'Bungawalbin', area_id: '3')
Park.create(park_id: '2103170', name: 'Maryland', area_id: '3')
Park.create(park_id: '2103171', name: 'Toonumbar', area_id: '3')
Park.create(park_id: '2103172', name: 'Border Ranges', area_id: '3')
Park.create(park_id: '2103183', name: 'Mount Warning', area_id: '3')
Park.create(park_id: '2103184', name: 'Bundjalung', area_id: '3')
Park.create(park_id: '2103185', name: 'Arakwal', area_id: '3')
Park.create(park_id: '2103192', name: 'Mooball', area_id: '3')
Park.create(park_id: '2103193', name: 'Nightcap', area_id: '3')
Park.create(park_id: '2102106', name: 'Cottan-Bimbang', area_id: '4')
Park.create(park_id: '2102109', name: 'Single', area_id: '4')
Park.create(park_id: '2102110', name: 'Guy Fawkes River', area_id: '4')
Park.create(park_id: '2102114', name: 'Kwiambal', area_id: '4')
Park.create(park_id: '2102122', name: 'Cunnawarra', area_id: '4')
Park.create(park_id: '2102124', name: 'Bald Rock', area_id: '4')
Park.create(park_id: '2102125', name: 'Boonoo Boonoo', area_id: '4')
Park.create(park_id: '2102133', name: 'New England', area_id: '4')
Park.create(park_id: '2102135', name: 'Capoompeta', area_id: '4')
Park.create(park_id: '2102141', name: 'Chaelundi', area_id: '4')
Park.create(park_id: '2102144', name: 'Butterleaf', area_id: '4')
Park.create(park_id: '2102151', name: 'Gibraltar Ranger', area_id: '4')
Park.create(park_id: '2102157', name: 'Werrikimbe', area_id: '4')
Park.create(park_id: '2102158', name: 'Barool', area_id: '4')
Park.create(park_id: '2102163', name: 'Warrabah', area_id: '4')
Park.create(park_id: '2102164', name: 'Cathedral Rock', area_id: '4')
Park.create(park_id: '2102169', name: 'Washpool', area_id: '4')
Park.create(park_id: '2102170', name: 'Nowendoc', area_id: '4')
Park.create(park_id: '2102182', name: 'Kings Plains', area_id: '4')
Park.create(park_id: '2102183', name: 'Mummel Gulf', area_id: '4')
Park.create(park_id: '2102188', name: 'Oxley Wild Rivers', area_id: '4')
Park.create(park_id: '2102191', name: 'Warra', area_id: '4')
Park.create(park_id: '2102193', name: 'Carrai', area_id: '4')
Park.create(park_id: '2102195', name: 'Indwarra', area_id: '4')
Park.create(park_id: '2102198', name: 'Basket Swamp', area_id: '4')
Park.create(park_id: '2102199', name: 'Nymboida', area_id: '4')
Park.create(park_id: '2104121', name: 'Willandra', area_id: '5')
Park.create(park_id: '2104125', name: 'Culgoa', area_id: '5')
Park.create(park_id: '2104136', name: 'Yanga', area_id: '5')
Park.create(park_id: '2104150', name: 'Mutawintii', area_id: '5')
Park.create(park_id: '2104164', name: 'Mungo', area_id: '5')
Park.create(park_id: '2104167', name: 'Kinchega', area_id: '5')
Park.create(park_id: '2104177', name: 'Sturt', area_id: '5')
Park.create(park_id: '2104193', name: 'Gundabooka', area_id: '5')
Park.create(park_id: '2104194', name: 'Mallee Cliffs', area_id: '5')
Park.create(park_id: '2104195', name: 'Paroo-Darling', area_id: '5')
Park.create(park_id: '2105100', name: 'Bugong', area_id: '6')
Park.create(park_id: '2105101', name: 'Gourock', area_id: '6')
Park.create(park_id: '2105104', name: 'Monga', area_id: '6')
Park.create(park_id: '2105106', name: 'Kosciuszko', area_id: '6')
Park.create(park_id: '2105107', name: 'Murramarang', area_id: '6')
Park.create(park_id: '2105110', name: 'Deua', area_id: '6')
Park.create(park_id: '2105111', name: 'Livingstone', area_id: '6')
Park.create(park_id: '2105113', name: 'Brindabella', area_id: '6')
Park.create(park_id: '2105118', name: 'Biamanga', area_id: '6')
Park.create(park_id: '2105122', name: 'Mimosa Rocks', area_id: '6')
Park.create(park_id: '2105133', name: 'Bournda', area_id: '6')
Park.create(park_id: '2105148', name: 'Jerrawangala', area_id: '6')
Park.create(park_id: '2105149', name: 'Bundderoo', area_id: '6')
Park.create(park_id: '2105152', name: 'Bangadilly', area_id: '6')
Park.create(park_id: '2105156', name: 'Benambra', area_id: '6')
Park.create(park_id: '2105157', name: 'Tallaganda', area_id: '6')
Park.create(park_id: '2105160', name: 'Woomargama', area_id: '6')
Park.create(park_id: '2105166', name: 'Meroo', area_id: '6')
Park.create(park_id: '2105167', name: 'Seven Mile Beach', area_id: '6')
Park.create(park_id: '2105168', name: 'Gulaga', area_id: '6')
Park.create(park_id: '2105169', name: 'Jervis Bay', area_id: '6')
Park.create(park_id: '2105171', name: 'Morton', area_id: '6')
Park.create(park_id: '2105172', name: 'Wadbilliga', area_id: '6')
Park.create(park_id: '2105176', name: 'Tarlo River', area_id: '6')
Park.create(park_id: '2105177', name: 'Bimberamala', area_id: '6')
Park.create(park_id: '2105178', name: 'Conjola', area_id: '6')
Park.create(park_id: '2105185', name: 'Minjary', area_id: '6')
Park.create(park_id: '2105187', name: 'Budawang', area_id: '6')
Park.create(park_id: '2105189', name: 'Mount Imlay', area_id: '6')
Park.create(park_id: '2105192', name: 'Macquarie Pass', area_id: '6')
Park.create(park_id: '2105193', name: 'Clyde River', area_id: '6')
Park.create(park_id: '2105194', name: 'Kooraban', area_id: '6')
Park.create(park_id: '2105195', name: 'Ben Boyd', area_id: '6')
Park.create(park_id: '2105196', name: 'Yamununbeyan', area_id: '6')
Park.create(park_id: '2105198', name: 'Eurobodalla', area_id: '6')
Park.create(park_id: '2106102', name: 'Heathcote', area_id: '7')
Park.create(park_id: '2106105', name: 'Blue Mountains', area_id: '7')
Park.create(park_id: '2106106', name: 'Yellomundee', area_id: '7')
Park.create(park_id: '2106107', name: 'Gardens of Stone', area_id: '7')
Park.create(park_id: '2106111', name: 'Wollemi', area_id: '7')
Park.create(park_id: '2106112', name: 'Lane Cove', area_id: '7')
Park.create(park_id: '2106113', name: 'Botany Bay', area_id: '7')
Park.create(park_id: '2106115', name: 'Sydney Harbour', area_id: '7')
Park.create(park_id: '2106116', name: 'Ku-ring-gai Chase', area_id: '7')
Park.create(park_id: '2106118', name: 'Cattai', area_id: '7')
Park.create(park_id: '2106130', name: 'Nattai', area_id: '7')
Park.create(park_id: '2106132', name: 'Royal', area_id: '7')
Park.create(park_id: '2106134', name: 'Wyrrabalong', area_id: '7')
Park.create(park_id: '2106140', name: 'Werakata', area_id: '7')
Park.create(park_id: '2106142', name: 'Bouddi', area_id: '7')
Park.create(park_id: '2106144', name: 'Dharug', area_id: '7')
Park.create(park_id: '2106150', name: 'Scheyville', area_id: '7')
Park.create(park_id: '2106159', name: 'Brisbane Water', area_id: '7')
Park.create(park_id: '2106160', name: 'Garigal', area_id: '7')
Park.create(park_id: '2106165', name: 'Yengo', area_id: '7')
Park.create(park_id: '2106173', name: 'Popran', area_id: '7')
Park.create(park_id: '2106174', name: 'Marramarra', area_id: '7')
Park.create(park_id: '2106177', name: 'Georges River', area_id: '7')
Park.create(park_id: '2106178', name: 'Thirlmere Lakes', area_id: '7')
Park.create(park_id: '2106191', name: 'Kanangra-Boyd', area_id: '7')