import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'RiverPod Counter', 
    subTitle: 'Counter Screen with Riverpod', 
    link: '/counter', 
    icon: Icons.numbers_rounded
  ),
  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un Contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),
  MenuItem(
    title: 'Progress Indicators', 
    subTitle: 'Generales y Controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
  MenuItem(
    title: 'SnackBars y Dialogs', 
    subTitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline_rounded
  ),
  MenuItem(
    title: 'Animated Container', 
    subTitle: 'Stateful widget animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank
  ),
  MenuItem(
    title: 'UI Controls + Tiles', 
    subTitle: 'Serie de controles en Flutter', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined
  ),
  MenuItem(
    title: 'App Tutorial - Intorduccion', 
    subTitle: 'Tutorial App', 
    link: '/app-tutorial', 
    icon: Icons.accessible_rounded
  ),
  MenuItem(
    title: 'InfiniteScroll y Pull', 
    subTitle: 'Infinite Scroll', 
    link: '/infinite', 
    icon: Icons.list_alt_rounded
  ),
  MenuItem(
    title: 'Theme Changer', 
    subTitle: 'Change theme of the app', 
    link: '/theme-changer', 
    icon: Icons.color_lens_outlined
  ),
];