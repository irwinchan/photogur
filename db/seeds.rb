# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.create!(
  :title  => "The old church on the coast of White sea",
  :artist => "Sergey Ershov",
  :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
)

Picture.create!(
  :title  => "Sea Power",
  :artist => "Stephen Scullion",
  :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
)

Picture.create!(
  :title  => "Into the Poppies",
  :artist => "John Wilhelm",
  :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
)


Comment.create!(
  :title  => "Into the Poppies",
  :user => "John Wilhelm",
  :comment    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg",
  :email => "This@email.com",
  :picture_id => 1
)

Comment.create!(
  :title  => "Into the stuff",
  :user => "asdfasd",
  :comment    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg",
  :email => "This@email.com",
  :picture_id => 1
)

Comment.create!(
  :title  => "foofofofooofoo",
  :user => "John Wilhelm",
  :comment    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg",
  :email => "This@email.com",
  :picture_id => 1
)

Comment.create!(
  :title  => "Into the Poppies",
  :user => "John Wilhelm",
  :comment    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg",
  :email => "This@email.com",
  :picture_id => 2
)

Comment.create!(
  :title  => "fasdfffffffPoppies",
  :user => "John Wilhelm",
  :comment    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg",
  :email => "This@email.com",
  :picture_id => 2
)

Comment.create!(
  :title  => "ghfghfghfghfghf",
  :user => "John Wilhelm",
  :comment    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg",
  :email => "This@email.com",
  :picture_id => 3
)

Comment.create!(
  :title  => "Idfasdfasdfasdfass",
  :user => "John Wilhelm",
  :comment    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg",
  :email => "This@email.com",
  :picture_id => 3
)

