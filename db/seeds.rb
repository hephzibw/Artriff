# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
photographer = Category.create!(:name => "Photographers")
#Category.create!(:name => "Musicians")
#Category.create!(:name => "Designers")
#Category.create!(:name => "Painters")
#Category.create!(:name => "Writers")
#Category.create!(:name => "Others")

SubCategory.destroy_all
band_sub_category = SubCategory.create!(:name => "Band Photographers", :category_id => photographer.id)
concert_sub_category = SubCategory.create!(:name => "Concert Photographers", :category_id => photographer.id)
portrait_sub_category = SubCategory.create!(:name => "Portraits Photographers", :category_id => photographer.id)

Artist.destroy_all
band_artist_kaushik = Artist.create! :name => "Kaushik Bhasker", :sub_category_id => band_sub_category.id
concert_artist_kaushik = Artist.create! :name => "Kaushik Bhasker", :sub_category_id => concert_sub_category.id
portrait_artist_kaushik = Artist.create! :name => "Kaushik Bhasker", :sub_category_id => portrait_sub_category.id
concert_artist_mohit = Artist.create! :name => "Mohit Kapil", :sub_category_id => concert_sub_category.id
band_artist_mohit = Artist.create! :name => "Mohit Kapil", :sub_category_id => band_sub_category.id

Image.create! :title => "Band: ADONAI", :artist_id => band_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc7/294918_296538183769324_1750675682_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => band_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/598829_303901369699672_2121550146_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => band_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/601950_303901396366336_873765403_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => band_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-prn1/540256_303901429699666_1545163115_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => band_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/546572_303901549699654_1504676650_n.jpg"
Image.create! :title => "Band: Urban Early Men", :artist_id => band_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc7/600110_303901589699650_389360069_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc6/208968_303926209697188_728429109_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc7/294923_303926236363852_56446653_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-prn1/542879_303926253030517_569819693_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash4/484255_303926269697182_1834112108_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-prn1/545107_303926289697180_1372667554_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/8115_303926299697179_1070067572_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-prn1/556655_303926323030510_181658649_n.jpg"
Image.create! :title => "", :artist_id => portrait_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash4/484218_303913526365123_1743206785_n.jpg"
Image.create! :title => "", :artist_id => portrait_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc7/456585_303914253031717_1290506446_o.jpg"
Image.create! :title => "", :artist_id => portrait_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-prn1/525929_303918999697909_198112943_n.jpg"
Image.create! :title => "", :artist_id => portrait_artist_kaushik.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash4/463329_303918666364609_1600782178_o.jpg"

Image.create! :title => "", :artist_id => concert_artist_mohit.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/540582_303923673030775_572241986_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_mohit.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/577577_303923696364106_2028530593_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_mohit.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc6/165884_303923723030770_882786893_n.jpg"
Image.create! :title => "", :artist_id => concert_artist_mohit.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash4/484221_303923756364100_1584541026_n.jpg"
Image.create! :title => "Artist: Jasleen Royal", :artist_id => band_artist_mohit.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-snc7/292166_303908813032261_1845305496_n.jpg"
Image.create! :title => "Artist: Jasleen Royal", :artist_id => band_artist_mohit.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/554583_303908866365589_463342277_n.jpg"
Image.create! :title => "Artist: Jasleen Royal", :artist_id => band_artist_mohit.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-prn1/528957_303908913032251_389530757_n.jpg"
Image.create! :title => "Artist: Jasleen Royal", :artist_id => band_artist_mohit.id, :url => "https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash3/599926_303908949698914_507390283_n.jpg"
