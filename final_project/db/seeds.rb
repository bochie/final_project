# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Category.create(name: 'Air Tanks', description: 'A diving cylinder, scuba tank or diving tank is a gas cylinder used to store and transport high pressure breathing gas as a component of a scuba set. It provides gas to the scuba diver through the demand valve of a diving regulator.')
    Category.create(name: 'Masks', description: 'Diving Masks is an item of diving equipment that allows scuba divers, free-divers, and snorkelers to see clearly underwater.')
    Category.create(name: 'Wetsuits & Drysuits', description: 'Wetsuits keep you warm when under water by locking a layer of water in between your skin and the suit. Drysuits keep you warm but the does not let water into the suit and is air tight.')
    Category.create(name: 'Buoyancy Control Device', description: 'Buoyancy Control Device is a piece of diving equipment containing a bladder which is worn by divers to establish neutral buoyancy underwater and positive buoyancy on the surface, when needed')
    Category.create(name: 'Regulators', description: 'A diving regulator is a pressure regulator used in scuba or surface supplied diving equipment that reduces pressurized breathing gas to ambient pressure and delivers it to the diver. The gas may be air or one of a variety of specially blended breathing gases.')
    Category.create(name: 'Air Hoses', description: 'Air hoses are used in underwater diving, such as scuba diving, to carry air from the surface or from air tanks or diving pumps to the diver. Air hoses are therefore a necessary part of standard diving dress and any type of surface supplied diving equipment. They are an essential part of scuba diving equipment, used to deliver pressurised air from the first stage of a diving regulator to the other components.')
    Category.create(name: 'Miscellaneous', description: 'This contains other less common items that one might take diving.')
    Customer.create(first_name: 'Matt', last_name: 'Boch', email_address: 'mboch94@gmail.com')
    Customer.create(first_name: 'David', last_name: 'Mendez', email_address: 'dmakldfj@gmail.com')
