User.delete_all
User.create(email: "travis@hotmail.sg", password: "password")
User.create(email: "lj@hotmail.com", password: "password")

Product.delete_all
Product.create(name: "Ash Blue White Stripes Pinpoint Oxford", description: "This medium weight pinpoint oxford shirting feels relatively substantial, but definitely not overly thick, giving it a nice structured drape. Pair this with a coffee chinos for a smart casual look. Perfect for dress down Fridays.", color: "Blue, White", brand: "House", transparency: "Not Transparent", fabric_type: "100% Cotton", fabric_pattern: "Stripes", price: "109", image_url_1:"products/img1.jpg", image_url_2: "products/img2.jpg", image_url_3: "products/img3.jpg") 
Product.create(name: "Vintage Orange Cream Bengal Stripes Oxford", description: "This medium weight oxford shirting feels relatively substantial, but definitely not overly thick, giving it a nice structured drape. Pair this orange bengal stripes shirt with a cream chinos for a smart casual look. Perfect for dress down Fridays.", color: "Orange, White", brand: "house", transparency: "Not Transparent", fabric_type: "100% cotton", fabric_pattern: "Stripes", price: "109", image_url_1:"products/img4.jpg", image_url_2: "products/img5.jpg", image_url_3: "products/img6")
Product.create(name: "Vintage Green White Stripes Oxford", description: "This medium weight oxford shirting feels relatively substantial, but definitely not overly thick, giving it a nice structured drape. Pair this with a cream or navy pants for a smart casual look. Perfect for dress down Fridays.", color: "Green, White", brand: "house", transparency: "Not Transparent", fabric_type: "100% Cotton", fabric_pattern: "Stripesn", price: "109", image_url_1:"products/img7.jpg", image_url_2: "products/img8.jpg", image_url_3: "products/img9.jpg") 

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"