# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rails.logger.info "Creating Categories"
Category.destroy_all
Category.create!(:name => "Photographers")
Category.create!(:name => "Musicians")
Category.create!(:name => "Designers")
Category.create!(:name => "Painters")
Category.create!(:name => "Writers")
Category.create!(:name => "Others")
Rails.logger.info "Finished creating Categories"

SubCategory.destroy_all
photographer_id = Category.find_by_name("Photographers").id
SubCategory.create!(:name => "Wedding Photographer", :category_id => photographer_id)
SubCategory.create!(:name => "Potrait Photographer", :category_id => photographer_id)
SubCategory.create!(:name => "Product Photographer", :category_id => photographer_id)

