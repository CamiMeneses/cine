
Movie.find_or_initialize_by(name: 'In time')
  .update(
    duration: 109,
    synopsis: 'Un hombre es acusado de asesinato y debe encontrar la forma de
    acabar con un sistema en donde el tiempo es dinero, permitiéndole a los ricos
    vivir para siempre, mientras los pobres ruegan por cada minuto de vida.',
    genre: 'Suspenso, Ciencia ficcion',
    trailer: 'https://www.youtube.com/embed/fdadZ_KrZVw',
    image: 'http://www.caratulasdecine.com/Caratulas6/intime.jpg',
    big_image: 'https://image.tmdb.org/t/p/w1280/W2qS7hjH5Ic5a90a1HU2UC6MDw.jpg'
  )

Movie.find_or_initialize_by(name:'La La Land: una historia de amor')
  .update(
    duration: 128,
    synopsis: 'Sebastian, un pianista de jazz, y Mia, una aspirante a actriz,
    se enamoran locamente; pero la ambición desmedida que tienen por triunfar en
    sus respectivas carreras, en una ciudad como Los Ángeles, repleta de
    competencia y carente de piedad, pone en peligro su amor',
    genre: 'Drama, Comedia romatica',
    trailer: 'https://www.youtube.com/embed/0pdqf4P9MB8',
    image: 'https://http2.mlstatic.com/pelicula-la-la-land-espanol-latino-hd-digital-D_NQ_NP_829334-MLA27662094129_062018-F.webp',
    big_image: 'https://i2.wp.com/p3.no/filmpolitiet/wp-content/uploads/2017/02/La-La-Land-bilde-5.jpg?resize=1150%2C647&ssl=1'
  )

Movie.find_or_initialize_by(name: 'Los juegos del hambre: Sinsajo - Parte 1')
  .update(
    duration: 123,
    synopsis: 'Después de destruir los juegos para siempre, Katniss llega al
    Distrito 13 para salvar a Peeta y una nación conmovida por su coraje',
    genre: 'Drama, Fantasia',
    trailer: 'https://www.youtube.com/embed/C_Tsj_wTJkQ',
    image: 'https://es.web.img3.acsta.net/pictures/14/09/12/10/51/011753.jpg',
    big_image: 'https://i.pinimg.com/originals/a0/49/76/a04976487ce68f5e7eb87efe5c6fa4d6.jpg'
  )

Movie.find_or_initialize_by(name:'¿Y dónde están las rubias?')
  .update(
    duration: 115,
    synopsis: 'Dos torpes agentes del FBI se hacen pasar por dos chicas de la alta
    sociedad para investigar una serie de secuestros. No obstante, mientras preparan su plan,
    descubren que irrumpir en la clase privilegiada es mucho más duro de lo que creían',
    genre: 'Cine policiaco/ Comedia',
    trailer: 'https://www.youtube.com/embed/aeVkbNka9HM',
    image: 'https://static.vix.com/es/sites/default/files/styles/1x1/public/c/cosas_que_solo_entenderas_si_eres_intolerante_a_la_lactosa.jpg',
    big_image: 'https://www.elinfluencer.com/wp-content/uploads/2019/07/dondeestan-1440x612.jpeg'
  )

# Creates 20 events /w 20 movies associated with it
FactoryBot.create_list(:event, 20)
