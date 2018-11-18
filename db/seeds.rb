User.delete_all
User.create(email: "travis@hotmail.sg", password: "password")
User.create(email: "lj@hotmail.com", password: "password")

Product.delete_all
Product.create(name: "White Plain Twill", description: "With its cotton and terylene blend, this white shirt offers durability and versatility . It’s a medium weight and has substantial heft to acheive a structured drape. The terylene properties of the fabric make this shirting wrinkle resistant and help you stay crisp and professional throughout the day. We think you can’t go wrong with any of our collars for this.", color: "white", brand: "house", transparency: "Not Transparent", fabric_type: "Cotton Blend", fabric_pattern: "Plain", price: "89", image_url_1:"products/img1.jpg", image_url_2: "products/img2.jpg", image_url_3: "products/img3.jpg", image_url_4: "products/img4.jpg") 
Product.create(name: "White Plain Twill", description: "With its cotton and terylene blend, this white shirt offers durability and versatility . It’s a medium weight and has substantial heft to acheive a structured drape. The terylene properties of the fabric make this shirting wrinkle resistant and help you stay crisp and professional throughout the day. We think you can’t go wrong with any of our collars for this.", color: "white", brand: "house", transparency: "Not Transparent", fabric_type: "Cotton Blend", fabric_pattern: "Plain", price: "89", image_url_1:"products/img1.jpg", image_url_2: "products/img2.jpg", image_url_3: "products/img3.jpg", image_url_4: "products/img4.jpg") 
Product.create(name: "White Plain Twill", description: "With its cotton and terylene blend, this white shirt offers durability and versatility . It’s a medium weight and has substantial heft to acheive a structured drape. The terylene properties of the fabric make this shirting wrinkle resistant and help you stay crisp and professional throughout the day. We think you can’t go wrong with any of our collars for this.", color: "white", brand: "house", transparency: "Not Transparent", fabric_type: "Cotton Blend", fabric_pattern: "Plain", price: "89", image_url_1:"products/img1.jpg", image_url_2: "products/img2.jpg", image_url_3: "products/img3.jpg", image_url_4: "products/img4.jpg") 
Product.create(name: "White Plain Twill", description: "With its cotton and terylene blend, this white shirt offers durability and versatility . It’s a medium weight and has substantial heft to acheive a structured drape. The terylene properties of the fabric make this shirting wrinkle resistant and help you stay crisp and professional throughout the day. We think you can’t go wrong with any of our collars for this.", color: "white", brand: "house", transparency: "Not Transparent", fabric_type: "Cotton Blend", fabric_pattern: "Plain", price: "89", image_url_1:"products/img1.jpg", image_url_2: "products/img2.jpg", image_url_3: "products/img3.jpg", image_url_4: "products/img4.jpg") 

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

