import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Screen',
    subTitle: 'Contador de clicks',
    link: '/counter',
    icon: Icons.add_circle_outline_outlined,
  ),
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios tipos de botones con Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenido con estilo',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicator',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y Dialogs',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Stateful widgets animados',
    link: '/animated',
    icon: Icons.check_box_outline_blank_outlined,
  ),
  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Controles de usuario',
    link: '/ui_controls',
    icon: Icons.settings,
  ),
  MenuItem(
    title: 'Tutorial de la app',
    subTitle: 'Aprende a usar la app',
    link: '/app_tutorial',
    icon: Icons.accessibility_rounded,
  ),
  MenuItem(
    title: 'InfiniteScroll y Pull',
    subTitle: 'Scroll infinito y pull to refresh',
    link: '/infinite_scroll',
    icon: Icons.list_alt_outlined,
  ),
  MenuItem(
    title: 'Theme Changer',
    subTitle: 'Cambia el tema global de la app',
    link: '/theme_changer',
    icon: Icons.color_lens_outlined,
  ),
];
