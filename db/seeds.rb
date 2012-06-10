# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
Category.create!(:name => "Photographers")
Category.create!(:name => "Musicians")
Category.create!(:name => "Designers")
Category.create!(:name => "Painters")
Category.create!(:name => "Writers")
Category.create!(:name => "Others")

SubCategory.destroy_all
photographer_id = Category.find_by_name("Photographers").id
SubCategory.create!(:name => "Band Photographer", :category_id => photographer_id)
SubCategory.create!(:name => "Concert Photographer", :category_id => photographer_id)
SubCategory.create!(:name => "Portraits Photographer", :category_id => photographer_id)

Artist.destroy_all
band_sub_category_id = (SubCategory.find_by_name "Band Photographer").id
artist = Artist.create! :name => "Kaushik Bhasker", :sub_category_id => band_sub_category_id
Image.create! :title => "Band: ADONAI", :artist_id => artist.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc7/294918_296538183769324_1750675682_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => artist.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/598829_303901369699672_2121550146_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => artist.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/601950_303901396366336_873765403_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => artist.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-prn1/540256_303901429699666_1545163115_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => artist.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/546572_303901549699654_1504676650_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => artist.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc7/600110_303901589699650_389360069_n.jpg"