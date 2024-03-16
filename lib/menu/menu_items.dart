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
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    link: '/card',
    icon: Icons.credit_card,
  ),
];