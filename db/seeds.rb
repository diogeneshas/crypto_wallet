# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cadastrando tipos de mineração.....'

MiningType.create!([
  { description: "Proof of Work", acronym: "PoW" },
  { description: "Proof of Stake", acronym: "PoS" },
  { description: "Proof of Capacity", acronym: "PoC" }
])

puts 'Tipos de mineração cadastradas com sucesso'

puts 'Cadastrando moedas.....'

Coin.create!([

  { description: 'Bitcoin',
  acronym: 'BTC',
  url_image: 'https://logosmarcas.net/wp-content/uploads/2020/08/Bitcoin-Logo.png',
  mining_type: MiningType.all.sample },

  { description: 'Ethereum',
  acronym: 'ETH',
  url_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png/600px-ETHEREUM-YOUTUBE-PROFILE-PIC.png',
  mining_type: MiningType.all.sample },

  { description: 'Dash',
  acronym: 'Dash',
  url_image: 'https://pngimage.net/wp-content/uploads/2018/05/dash-coin-logo-png-3.png',
  mining_type: MiningType.all.sample },

])

puts 'Moedas cadastradas com sucesso'
