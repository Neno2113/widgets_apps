import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        title: const Text('Estas Seguro?'),
        content: const Text(
            'Voluptate proident quis nisi excepteur ex excepteur Lorem ipsum ea dolor incididunt ad. Minim pariatur esse aliquip exercitation nulla voluptate pariatur. Non exercitation excepteur laboris fugiat amet nulla mollit nulla pariatur. Lorem nostrud tempor sunt in. Lorem occaecat qui ad fugiat commodo.'
          ),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Voluptate tempor amet eiusmod ea occaecat laborum mollit dolor consequat consectetur nostrud labore. Excepteur amet quis proident fugiat. Deserunt in sint amet veniam cillum commodo. Veniam mollit ipsum laboris occaecat culpa qui excepteur id irure deserunt consectetur pariatur.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar Dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
