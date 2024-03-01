import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/db_provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Center(child:  Text('Historial')),
        actions: [
          IconButton(
            onPressed: (){}, icon:const  Icon(Icons.delete_forever)
            )
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);


    final currentIndex =uiProvider.selectedMenuOpt;
    final tempScan =  ScanModel(valor:'https://google.com');
    //DBProvider.db.database;
    //DBProvider.db.nuevoScanRaw(tempScan);
    DBProvider.db.getScanById(1).then((value) => print(value!.valor));
    

    switch (currentIndex){
      case 0:
        return const MapasPage();
      case 1:
        return const DireccionesPage();

      default:
        return const MapasPage();
    }
  }
}