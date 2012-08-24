# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# ---------------------------- Browsers -----------------------------------
Browser.create :name=>"IE6-"
Browser.create :name=>"IE7"
Browser.create :name=>"IE8"
Browser.create :name=>"IE9+"
Browser.create :name=>"Chrome"
Browser.create :name=>"Mozilla"
Browser.create :name=>"Safari"
Browser.create :name=>"Opera"

ror_id = Technology.create :name=>"Ruby on Rails"
TechnologyVersion.create :name=>"2.3.6", :technology_id=>ror_id
TechnologyVersion.create :name=>"2.3.8", :technology_id=>ror_id
TechnologyVersion.create :name=>"3.0.3", :technology_id=>ror_id
TechnologyVersion.create :name=>"3.1.0", :technology_id=>ror_id
TechnologyVersion.create :name=>"3.2.1", :technology_id=>ror_id

api_cat_id = LibraryCategory.create :name=>"APIs"
perf_cat_id = LibraryCategory.create :name=>"Performance"
db_cat_id = LibraryCategory.create :name=>"Databases"
br_cat_id = LibraryCategory.create :name=>"Browsers"
js_cat_id = LibraryCategory.create :name=>"Javascript"
css_cat_id = LibraryCategory.create :name=>"CSS"

