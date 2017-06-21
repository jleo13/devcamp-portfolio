# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.fir

10.times do |topic|
 if topic < 3
    if topic == 1
       Topic.create!(
    title: "Software Development"
    )
  end
  if topic == 2
      Topic.create!(
    title: "Cinemetorgraphy and Filmaking"
    )
  end
  if topic == 3 
    Topic.create!(
        title: "Flat design"
       )
     end
   else
     
     Topic.create!(
        title: "Topic #{topic}"
       )
       
       puts "10 topics created"
     end
     
   end
     
     
    


10.times do |blog|
 t = blog
 Blog.create!(

title: "My Blog Post #{blog}",
  body: "Sed ut perspiciatis unde
   omnis iste natus error s
   it voluptatem accusantium dol
   oremque laudantium, totam rem ape
   riam, eaque ipsa quae ab illo inve
   ntore veritatis et quasi architecto be
   atae vitae dicta sunt explicabo. Nemo
   enim ipsam voluptatem quia voluptas sit
   aspernatur aut odit aut fugit, sed quia
   consequuntur magni dolores eos qui ratio
   ne voluptatem sequi nesciunt. Neque porr
   o quisquam est, qui dolorem ipsum quia d
   olor sit amet, consectetur, adipisci veli
   t, sed quia non numquam eius modi tempora
   incidunt ut labore et dolore magnam aliquam
   quaerat voluptatem. Ut enim ad minima veniam
   quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut
   aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in
   ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum
   fugiat quo voluptas nulla pariatu",
 topic_id: Topic.last.id


)
  end
  puts "10 blog posts created"

  5.times do |skill|
    Skill.create!(
      title: "Rails #(skill)" ,
      percent_utilized: 15
      )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service, ABJ",
    body:" An Avatar is an iconic portrait
used to represent yourself.
Usually shown without any eyes
, they are a simple and effective way to sho
w who you are without posting an image of yourself.",
    main_image: "http://via.placeholder.com/600x400" ,
    thumb_image: "http://via.placeholder.com/350x200"
    )

  end



1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails ",
    body:" An Avatar is an iconic portrait
used to represent yourself.
Usually shown without any eyes
, they are a simple and effective way to sho
w who you are without posting an image of yourself.",
    main_image: "http://via.placeholder.com/600x400" ,
    thumb_image: "http://via.placeholder.com/350x200"
    )

  end


puts "9 portfolio items created"
