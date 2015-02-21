b1 = Brewery.create name:"Koff", year:1897
b2 = Brewery.create name:"Malmgard", year:2001
b3 = Brewery.create name:"Weihenstephaner", year:1042
#byebug
s1 = Style.create name:"Lager", description:"Lageri"
s2 = Style.create name:"Pale Ale", description:"Pale Ale -tyyppinen olut"
s3 = Style.create name:"Porter", description:"Portteri"
s4 = Style.create name:"Weizen", description:"Veizeni"
b1.beers.create name:"Iso 3", style:s1
b1.beers.create name:"Karhu", style:s1
b1.beers.create name:"Tuplahumala", style:s1
b2.beers.create name:"Huvila Pale Ale", style:s2
b2.beers.create name:"X Porter", style:s3
b3.beers.create name:"Hefezeizen", style:s4
b3.beers.create name:"Helles", style:s1
u1 = User.create username:"arto", password:"Arto1", password_confirmation:"Arto1"
u2 = User.create username:"janne", password:"Janne1", password_confirmation:"Janne1"
c1 = BeerClub.create name:"Oluinen", founded:2001, city:"Espoo"
c2 = BeerClub.create name:"Juojat", founded:1901, city:"Helsinki"
