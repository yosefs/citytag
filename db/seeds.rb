# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.create([
{name: 'Colorado',latitude: 38.891033,longitude: -104.414062},
{name: 'Manitoba',latitude: 56.12106,longitude: -97.998047},
{name: 'colorado',latitude: 38.891033,longitude: -104.414062},
{name: 'Jerusalem',latitude: 31.774878,longitude: 35.14801},
{name: 'Ashdod',latitude: 31.798224,longitude: 34.642639},
{name: 'Kiryat Gat',latitude: 31.604271,longitude: 34.763489},
{name: 'Beit Shemesh',latitude: 31.737511,longitude: 34.991455},
{name: 'Rishon LeZion',latitude: 31.954493,longitude: 34.799194},
{name: 'Netanya',latitude: 32.324276,longitude: 34.859619},
{name: 'Hadera',latitude: 32.440249,longitude: 34.900818},
{name: 'Beersheba',latitude: 31.257422,longitude: 34.755249}])

Tag.create([
{name: 'old'},
{name: 'new'},
{name: 'great'},
{name: 'small'},
{name: 'cool'},
{name: 'culture'},
{name: 'big'}])


Tagcity.create([
{city_id: 1,tag_id: 2},
{city_id: 1,tag_id:  4},
{city_id: 1,tag_id:  3},
{city_id: 2,tag_id:  1},
{city_id: 3,tag_id:  4},
{city_id: 4,tag_id:  3},
{city_id: 4,tag_id: 1},
{city_id: 5,tag_id:  2},
{city_id: 5,tag_id: 5},
{city_id: 6,tag_id:  1}])
