if Person.count.zero?
  team1 = Team.create!(
    name: 'Gorgonstone',
    creature: 'Gorgon'
  )
  team1.avatar.attach(io: File.open(Rails.root.join('app','assets','images','gorgonstone.jpg')), filename: 'avatar.jpg')

  team2 = Team.create!(
    name: 'Dragonnest',
    creature: 'Dragon'
  )
  team2.avatar.attach(io: File.open(Rails.root.join('app','assets','images','dragonnest.jpg')), filename: 'avatar.jpg')

  team3 = Team.create!(
    name: 'Phoenixeye',
    creature: 'Phoenix'
  )
  team3.avatar.attach(io: File.open(Rails.root.join('app','assets','images','phoenixeye.jpg')), filename: 'avatar.jpg')

  team4 = Team.create!(
    name: 'Krakenids',
    creature: 'Kraken'
  )
  team4.avatar.attach(io: File.open(Rails.root.join('app','assets','images','krakenids.jpg')), filename: 'avatar.jpg')

  person1 = Person.create!(name: 'Alexandra Grancho')
  person2 = Person.create!(name: 'Beatriz Beato')
  person3 = Person.create!(name: 'Daniel Lopes')
  person4 = Person.create!(name: 'Diogo Laginha')
  person5 = Person.create!(name: 'Diogo Lucas')
  person6 = Person.create!(name: 'Gonçalo Louzada')
  person7 = Person.create!(name: 'João Barbosa')
  person8 = Person.create!(name: 'João Marques', team_id: team2.id)
  person9 = Person.create!(name: 'João Nogueira')
  person10 = Person.create!(name: 'Luís Antunes')
  person11 = Person.create!(name: 'Maria João Ferreira')
  person12 = Person.create!(name: 'Mariana Cerveira')
  person13 = Person.create!(name: 'Matt Drew')
  person14 = Person.create!(name: 'Marta Pais')
  person15 = Person.create!(name: 'Miguel Tavares', team_id: team1.id)
  person16 = Person.create!(name: 'Nuno Lopes')
  person17 = Person.create!(name: 'Pedro Janeiro', team_id: team3.id)
  person18 = Person.create!(name: 'Rafael Jegundo')
  person19 = Person.create!(name: 'Renato Leão')
  person20 = Person.create!(name: 'Ricardo Pereira')
  person21 = Person.create!(name: 'Rui Magalhães')
  person22 = Person.create!(name: 'Samuel Moreira')
  person23 = Person.create!(name: 'Tomás Marques', team_id: team4.id)
end

if Sentence.count.zero?
  Sentence.create!(content: 'Hmm, difficult. Very difficult.')
  Sentence.create!(content: 'Plenty of courage, I see...')
  Sentence.create!(content: 'Not a bad mind...')
  Sentence.create!(content: 'There\'s talent, oh yes!')
  Sentence.create!(content: 'I sense a thirst to prove yourself')
  Sentence.create!(content: "Would you like to go to wise #{Team.third.name}?")
  Sentence.create!(content: "Would you fit within the ranks of #{Team.second.name}?")
  Sentence.create!(content: "Perhaps you'd have a good future as a member of #{Team.first.name}...")
  Sentence.create!(content: "How would you like to share your destiny with the house of #{Team.fourth.name}?")
  Sentence.create!(content: 'Oh shit, that\'s right I\'m a hat!')
  Sentence.create!(content: 'I\'ll need a good rest after this one...')
  Sentence.create!(content: 'Are we gonna be doing this all day?')
end
