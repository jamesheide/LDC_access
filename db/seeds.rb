# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ApplicationRole.create(application: 'LDC', role: 'Admin', webtailor_string: 'ND_LDC_ADMIN')
ApplicationRole.create(application: 'LDC', role: 'Faculty', webtailor_string: 'ND_LDC_FACULTY')
ApplicationRole.create(application: 'LDC', role: 'Student', webtailor_string: 'ND_LDC_STUDENT')
ApplicationRole.create(application: 'LDC', role: 'Post Doc', webtailor_string: 'ND_LDC_POST_DOC')
ApplicationRole.create(application: 'LDC', role: 'Staff', webtailor_string: 'ND_LDC_STAFF')