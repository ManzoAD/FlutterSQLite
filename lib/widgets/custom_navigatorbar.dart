import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex =uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: const[
      BottomNavigationBarItem(
        icon:  Icon(Icons.map_outlined),
        label: 'Mapa'),
      BottomNavigationBarItem(
        icon: Icon(Icons.compass_calibration_outlined),
        label:'Direcciones')],
    );
  }
}