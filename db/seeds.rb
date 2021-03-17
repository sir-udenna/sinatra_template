Console.destroy_all
Game.destroy_all


xbox = Console.create(name: "Xbox")
ps4 = Console.create(name: "PS4")
pc = Console.create(name: "PC Master Race")

Game.create(title: 'Forza Horizon 4', console_id: xbox.id)
Game.create(title: 'Gears 5', console_id: xbox.id)
Game.create(title: 'Halo 3', console_id: xbox.id)
Game.create(title: 'Spiderman', console_id: ps4.id)
Game.create(title: 'Monster Hunter World', console_id: ps4.id)
Game.create(title: 'God of War', console_id: ps4.id)
Game.create(title: 'League of Legends', console_id: pc.id)
Game.create(title: 'Micraft Java Edition', console_id: pc.id)


puts "Seeded"