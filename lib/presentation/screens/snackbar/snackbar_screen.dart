import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hola, soy un SnackBar'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    ));
  }

  void mostrarDialogo(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text('Estas seguro?'),
            content: const Text(
                'Dolor nisi velit excepteur Lorem do sit cillum Lorem deserunt non. Quis amet nulla laboris in cupidatat non minim nisi cupidatat irure tempor. Ad ullamco Lorem commodo eiusmod nulla irure id non deserunt nisi elit.'),
            actions: [
              TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text('Cancelar')),
              FilledButton(
                  onPressed: () => context.pop(), child: const Text('Aceptar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Snackbars y Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Aliquip fugiat deserunt consequat laboris. Commodo nulla in deserunt laboris exercitation nisi. Eu fugiat eu nulla mollit est id. Ad labore laboris qui culpa minim irure ut ex esse. Laboris exercitation aliquip et officia non ad et non ea minim. Duis magna exercitation adipisicing cupidatat reprehenderit voluptate voluptate est officia consequat consequat dolor veniam. Laboris sunt officia ea proident exercitation nulla voluptate officia deserunt occaecat consectetur.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => mostrarDialogo(context),
                child: const Text('Mostrar Dialogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar SnackBar'),
        icon: const Icon(Icons.info_outline),
        onPressed: () => _showSnackBar(context),
      ),
    );
  }
}
