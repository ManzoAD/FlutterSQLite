import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed:() async {
          final scanListProvider =
              Provider.of<ScanListProvider>(context, listen: false);
              scanListProvider.borrarTodos();
    }, icon: const Icon(Icons.delete_forever_outlined), color: Colors.white,);
  }
}