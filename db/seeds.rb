User.destroy_all
Item.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

espresso = Item.create!(
    product: 'espresso',
    description: '2 oz gravy espresso, rich and nutty profile',
    image: 'https://i.imgur.com/Q65ZQMo.png',
    price: 2.00,
    active: true
)

cortado = Item.create!(
    product: 'cortado',
    description: '2 oz espresso, 2 oz steamed milk',
    image: 'https://i.imgur.com/9uzEBTm.png',
    price: 3.00,
    active: true
)

cappuccino = Item.create!(
    product: 'cappuccino',
    description: '2 oz espresso, 4 oz steamed milk',
    image: 'https://i.imgur.com/20V8M2e.png',
    price: 3.50,
    active: true
)

latte = Item.create!(
    product: 'latte',
    description: '2 oz espresso, 8 oz steamed milk',
    image: 'https://i.imgur.com/SnPLnAl.png',
    price: 4.00,
    active: true
)

mocha = Item.create!(
    product: 'mocha',
    description: '2 oz espresso, 8oz steamed milk, 2 oz chocolate',
    image: 'https://i.imgur.com/CwJbBLM.jpg',
    price: 5.00,
    active: true
)

chai = Item.create!(
    product: 'chai',
    description: '2 oz espresso, 4 oz steamed chai, 4 oz steamed milk',
    image: 'https://i.imgur.com/J9yMcD6.png',
    price: 5.00,
    active: true
)

drip_coffee = Item.create!(
    product: 'drip coffee',
    description: 'single origin seasonal coffee',
    image: 'https://i.imgur.com/AC0kCZn.jpg',
    price: 2.50,
    active: true
)

iced_coffee = Item.create!(
    product: 'iced coffee',
    description: 'single origin japanese style drip coffee',
    image: 'https://i.imgur.com/dMLvu6t.jpg',
    price: 3.00,
    active: true
)

chia_pudding = Item.create!(
    product: 'chai pudding',
    description: 'chia seed pudding, fresh seasonal berries, honey',
    image: 'https://i.imgur.com/cSbUhfm.png',
    price: 3.00,
    active: true
)

butter_crossant = Item.create!(
    product: 'butter croissant',
    description: 'fresh-baked daily',
    image: 'https://i.imgur.com/7IjH3Nv.jpg',
    price: 3.00,
    active: true
)

choc_croissant = Item.create!(
    product: 'chocolate croissant',
    description: 'local chocolate-filled butter croissant',
    image: 'https://i.imgur.com/V1xDDcJ.jpg',
    price: 4.00,
    active: true
)

almond_croissant = Item.create!(
    product: 'almond croissant',
    description: 'marzipan-filled butter croissant, topped w/sliced almonds',
    image: 'https://i.imgur.com/Uwgi0RQ.jpg',
    price: 4.00,
    active: true
)

diane = User.create!(
    email: 'diane@testemail.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'Diane'
)
diane.orders << cappuccino
diane.orders << choc_croissant
diane.order << chia_pudding

supriya = User.create!(
    email: 'supriya@testemail.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'Supriya'
)

ninti = User.create!(
    email: 'ninti@testemail.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'Ninti'
)