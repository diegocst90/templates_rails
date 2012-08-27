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

ror = Technology.create :name=>"Ruby on Rails"
TechnologyVersion.create :name=>"2.3.6", :technology_id=>ror.id
TechnologyVersion.create :name=>"2.3.8", :technology_id=>ror.id
TechnologyVersion.create :name=>"3.0.3", :technology_id=>ror.id
TechnologyVersion.create :name=>"3.1.0", :technology_id=>ror.id
TechnologyVersion.create :name=>"3.2.1", :technology_id=>ror.id

TemplateCategory.create :name=>"E-commerce"
TemplateCategory.create :name=>"Organizational"
TemplateCategory.create :name=>"Entertainment"
TemplateCategory.create :name=>"Technology"
TemplateCategory.create :name=>"Administration"
TemplateCategory.create :name=>"Personal"
TemplateCategory.create :name=>"Other"

Author.create :name=>"Diego", :lastname=>"Castillo", :email=>"diego.cst90@gmail.com", :location=>"Lima, PE", :biography=>"Best Front-End Consultant ever!"

api_cat = LibraryCategory.create :name=>"APIs"

fb = Library.create :name=>"Facebook for Rails", :description=>"gem facebooker", :library_category_id=>api_cat.id
fb_v3 = LibraryVersion.create :name=>"3.0", :library_id=>fb.id

tw = Library.create :name=>"Twitter for Rails", :description=>"gem twitter", :library_category_id=>api_cat.id
tw_v1 = LibraryVersion.create :name=>"1.1", :library_id=>tw.id

goo = Library.create :name=>"Google+ for Rails", :description=>"gem google_plus", :library_category_id=>api_cat.id
goo_v1 = LibraryVersion.create :name=>"1.0", :library_id=>goo.id

perf_cat = LibraryCategory.create :name=>"Performance"

nr = Library.create :name=>"New Relic for Rails", :description=>"gem newrelic_rpm", :library_category_id=>perf_cat.id
nr_v1 = LibraryVersion.create :name=>"3.4.1", :library_id=>nr.id

mc = Library.create :name=>"Memcached for Rails", :description=>"gem memcached", :library_category_id=>perf_cat.id
mc_v1 = LibraryVersion.create :name=>"1.4.3", :library_id=>mc.id

rd = Library.create :name=>"Ruby Debug for Rails", :description=>"gem ruby-debug", :library_category_id=>perf_cat.id
rd_v1 = LibraryVersion.create :name=>"0.10", :library_id=>rd.id

db_cat = LibraryCategory.create :name=>"Databases"

my = Library.create :name=>"MySQL for Rails", :description=>"gem mysql2", :library_category_id=>db_cat.id
my_v1 = LibraryVersion.create :name=>"0.3", :library_id=>my.id

pg = Library.create :name=>"PostgreSQL for Rails", :description=>"gem pg", :library_category_id=>db_cat.id
pg_v1 = LibraryVersion.create :name=>"0.14", :library_id=>pg.id

slite = Library.create :name=>"SQLLite for Rails", :description=>"gem sqlite", :library_category_id=>db_cat.id
slite_v1 = LibraryVersion.create :name=>"3.0", :library_id=>slite.id

ss = Library.create :name=>"SQL Server for Rails", :description=>"gem activerecord-sqlserver-adapter", :library_category_id=>db_cat.id
ss_v2 = LibraryVersion.create :name=>"2.2", :library_id=>ss.id

sch = Library.create :name=>"Schema Plus", :description=>"gem schema_plus", :library_category_id=>db_cat.id
sch_v1 = LibraryVersion.create :name=>"0.4", :library_id=>sch.id

db_cat = LibraryCategory.create :name=>"Helpers"

ft = Library.create :name=>"Formtastic for Rails", :description=>"gem formtastic", :library_category_id=>db_cat.id
ft_v2 = LibraryVersion.create :name=>"2.2", :library_id=>ft.id

pc = Library.create :name=>"Paperclip for Rails", :description=>"gem paperclip", :library_category_id=>db_cat.id
pc_v3 = LibraryVersion.create :name=>"3.1", :library_id=>pc.id

dv = Library.create :name=>"Devise for Rails", :description=>"gem devise", :library_category_id=>db_cat.id
dv_v2 = LibraryVersion.create :name=>"2.1", :library_id=>dv.id

br_cat = LibraryCategory.create :name=>"Browsers"

iec = Library.create :name=>"IE Conditional Tag", :description=>"gem ie_conditional_tag", :library_category_id=>br_cat.id
iec_v1 = LibraryVersion.create :name=>"0.5", :library_id=>iec.id

js_cat = LibraryCategory.create :name=>"Javascript"

cs = Library.create :name=>"CoffeeScript for Rails", :description=>"gem coffeescript", :library_category_id=>js_cat.id
cs_v3 = LibraryVersion.create :name=>"3.2", :library_id=>cs.id

jr = Library.create :name=>"Jquery for Rails", :description=>"gem jquery-rails", :library_category_id=>js_cat.id
jr_v2 = LibraryVersion.create :name=>"2.1", :library_id=>jr.id

bb = Library.create :name=>"BackBone for Rails", :description=>"gem backbone-rails", :library_category_id=>js_cat.id
bb_v1 = LibraryVersion.create :name=>"0.7", :library_id=>bb.id

er = Library.create :name=>"Ember for Rails", :description=>"gem ember-rails", :library_category_id=>js_cat.id
er_v1 = LibraryVersion.create :name=>"0.7", :library_id=>er.id

ptr = Library.create :name=>"Prototype", :library_category_id=>js_cat.id
ptr_v1 = LibraryVersion.create :name=>"1.7", :library_id=>ptr.id

mtl = Library.create :name=>"MooTools", :library_category_id=>js_cat.id
mtl_v1 = LibraryVersion.create :name=>"1.4", :library_id=>mtl.id

jve = Library.create :name=>"JQuery Validation Engine", :library_category_id=>js_cat.id
jve_v1 = LibraryVersion.create :name=>"1.7", :library_id=>jve.id

fch = Library.create :name=>"Fusioncharts", :library_category_id=>js_cat.id
fch_v1 = LibraryVersion.create :name=>"v3", :library_id=>fch.id

css_cat = LibraryCategory.create :name=>"CSS"

sa = Library.create :name=>"Sass for Rails", :description=>"gem sass-rails", :library_category_id=>css_cat.id
sa_v3 = LibraryVersion.create :name=>"3.2", :library_id=>sa.id

cp = Library.create :name=>"Compass", :description=>"gem compass", :library_category_id=>css_cat.id
cp_v1 = LibraryVersion.create :name=>"0.12", :library_id=>cp.id





