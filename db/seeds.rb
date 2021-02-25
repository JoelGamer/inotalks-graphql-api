guilherme = User.create!(
  first_name: 'Guilherme',
  last_name: 'Theodoro',
  email: 'guilherme.theodoro@agro1.inf.br',
  age: 19
)

daemon = User.create!(
  first_name: 'Daemon',
  last_name: 'do Inferno',
  email: 'daemon666@gmail.com',
  age: 666
)

Item.create!([
  {
    name: 'Macbook Pro 13, 2021',
    price: 21000,
    user: daemon
  },
  {
    name: 'Macbook Pro 15, 2021',
    price: 26000,
    user: guilherme
  }
])