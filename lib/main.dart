import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                name: 'El cráter de Pululahua',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'images/craterpululahua.jpg',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El cráter del Pululahua es una caldera volcánica ubicada al norte de Quito, Ecuador. En lengua kichwa, su nombre significa "nube de agua", reflejando el clima frecuentemente nublado de la región. Este cráter es uno de los pocos en el mundo que está habitado y cultivado, con su fértil suelo sustentando una variedad de cultivos y una comunidad vibrante. Antiguamente, era considerado un lugar sagrado por las culturas precolombinas de la región, quienes reverenciaban su impresionante paisaje y su abundancia natural.',
              ),
              TitleSection(
                name: 'El museo del agua',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'images/museoagua.jpg',
              ),
              ButtonSection(),
              TextSection(
                  description:
                      "El Museo del Agua, también conocido como Yaku Parque Museo del Agua, es un centro interactivo ubicado en Quito, Ecuador. En lengua kichwa, Yaku significa agua, destacando la importancia vital de este recurso. El museo está situado en las laderas del volcán Pichincha, ofreciendo una vista panorámica de la ciudad. Su propósito es educar a los visitantes sobre la importancia del agua, su conservación y su ciclo natural. A través de exhibiciones interactivas y educativas, el museo busca fomentar una mayor conciencia ambiental y promover prácticas sostenibles en el uso del agua."),
              TitleSection(
                name: 'Montañitas',
                location: 'Santa Elena, Ecuador',
              ),
              ImageSection(
                image: 'images/montañitas.jpg',
              ),
              ButtonSection(),
              TextSection(
                  description:
                      "Montañita es un vibrante y pintoresco pueblo costero ubicado en la provincia de Santa Elena, Ecuador. Conocido por sus hermosas playas de arena dorada y su animada vida nocturna, Montañita se ha convertido en un destino popular tanto para los turistas nacionales como internacionales. Originariamente, Montañita era un tranquilo pueblo de pescadores, pero su fama creció entre los surfistas gracias a sus impresionantes olas, que son ideales para practicar este deporte."),
              TitleSection(
                name: 'Galapagos',
                location: 'Galapagos, Ecuador',
              ),
              ImageSection(
                image: 'images/galapagos.jpg',
              ),
              ButtonSection(),
              TextSection(
                  description:
                      "Fueron descubiertas por los españoles en 1535 y luego utilizadas como escala por los piratas ingleses durante sus travesías de ataque a los galeones españoles que llevaban oro y plata hacia España. Las islas fueron anexadas al territorio de Ecuador en 1832, bautizándolas como Archipiélago de Colón."),
              TitleSection(
                name: 'Olón',
                location: 'Santa Elena, Ecuador',
              ),
              ImageSection(
                image: 'images/olon.jpg',
              ),
              ButtonSection(),
              TextSection(
                  description:
                      "Olón es un encantador pueblo costero situado en la provincia de Santa Elena, Ecuador, a poca distancia de Montañita. Este tranquilo rincón del Pacífico es conocido por su atmósfera relajada y sus impresionantes paisajes naturales. Las playas de Olón son amplias y de arena dorada, ofreciendo un entorno perfecto para relajarse, nadar y disfrutar de hermosos atardeceres."),
            ],
          ),
        ),
        // #enddocregion add-widget
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
