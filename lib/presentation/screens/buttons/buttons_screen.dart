import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Elevated Button')),
              const ElevatedButton(
                  onPressed: null, child: Text('Elevated Disabled')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text('Elevated Icon')),
              FilledButton(onPressed: () {}, child: const Text('Fill')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility_sharp),
                  label: const Text('Fill Icon')),
              OutlinedButton(onPressed:(){}, child: const Text('Outlined Button')),
              OutlinedButton.icon(
                onPressed:(){}, 
                icon: const Icon(Icons.terminal_rounded),
                label: const Text('Outlined Icon'),
              ),
              TextButton(onPressed: (){}, child: const Text('Text')),
              TextButton.icon(
                onPressed: (){}, 
                label: const Text('Text Icon'),
                icon: const Icon(Icons.account_box_rounded),
              ),
              IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.app_registration_rounded),
                color: colors.primary,
              ),
              IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)
                ),
              ),

              const CustomButtons()
            ],
          ),
        ),
      ),
    );
  }
}


class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle( color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
