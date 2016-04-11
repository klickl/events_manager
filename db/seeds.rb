#Ajout de quelques données pour peupler la base



events_datas = [
     ['Musilac', '08/07/2016', 'orga@aix.fr', 'places: 30 000, scène: esplanade du lac, speaker: Muse, David Guetta... , lieu: aix les bains'],
     ['Francofolies', '13/07/2016', 'organisateur@test.fr', 'places: 110 000, scène: jean-louis foulquier, speaker: guts /bigflo & oli/nekfeu / maître gims , lieu: La Rochelle'],
     ["Fête du lac d'Annecy", '03/08/2014', 'maire@annecy.org', 'places: 10 000, scène: Paquier, speaker: Artistes divers , lieu: Annecy'],
     ["Fête du lac d'Annecy", '01/08/2015', 'maire@annecy.org', 'places: 10 000, scène: Paquier, speaker: Artistes divers , lieu: Annecy'],
     ["Fête du lac d'Annecy", '06/08/2016', 'maire@annecy.org', 'places: 10 000, scène: Paquier, speaker: Artistes divers , lieu: Annecy'],
     ["Festival d'animation Annecy", '13/06/2016', 'mairie@annecy.org', '2500, scène: Paquier, speaker: Animateurs , lieu: Annecy'],
     ['Concert école de musique Poisy', '08/04/2016', 'mairie@poisy.fr', "places: 250, scène: Forum, speaker: Enfants de l'école de musique communale'. , lieu: Poisy'"],
     ['Concert école de musique Meythet', '15/04/2016', 'mairie@meythet.fr', "places: 150, scène: Auditorium MJC, speaker: Enfants de l'école de musique communale, lieu: Meythet"],
     ['Concert école de musique Metz-Tessy', '22/04/2016', 'mairie@metz-tessy.fr', "places: 100,  scène: Auditorim école de musique, speaker: Enfants de l'école de musique communale , lieu: Metz-Tessy"],
     ['Concert école de musique Seynod', '09/04/2016', 'mairie@seynod.fr', "places: 325, scène: Salle de musique, speaker: Enfants de l'école de musique communale, lieu: Seynod"]
]


events_datas.each do |v|
  Event.create({name: v[0], dateEvent: v[1], email_organizer: v[2], description: v[3]})
end
