# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rails.logger.info "Creating Categories"
Category.create(:name => "Photographers")
Category.create(:name => "Musicians")
Category.create(:name => "Designers")
Category.create(:name => "Painters")
Category.create(:name => "Writers")
Category.create(:name => "Others")
Rails.logger.info "Finished creating Categories"

