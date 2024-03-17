import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    super.key, 
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Counter con Riverpod',
    subtitle: 'Introducción a riverpod',
    link: '/counter',
    icon: Icons.numbers,
  ),
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progess Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y dialogos',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank,
  ),
  MenuItem(
    title: 'UI Controls + Tiles',
    subtitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'Introducción a la aplicación',
    subtitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility_rounded,
  ),
  MenuItem(
    title: 'InfiniteScroll y Pull',
    subtitle: 'Vistas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_outlined,
  ),
  MenuItem(
    title: 'Cambiar tema',
    subtitle: 'Cambiar tema de la aplicación',
    link: '/theme-change',
    icon: Icons.color_lens_outlined,
  ),
];