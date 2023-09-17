import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:state_management/state_management.dart';

import 'widgets/image_container.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('A block pattern Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<ThemeCubit, ThemeData>(
              builder: (_, theme) => Container(
                height: 100,
                alignment: Alignment.center,
                color: theme.scaffoldBackgroundColor,
                child: Text(
                  'Click on the buttons and see what happens',
                  style: theme.textTheme.headlineLarge?.copyWith(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(child: ImageContainer()),
            BlocBuilder<CounterBloc, int>(
              builder: (context, count) {
                context.read<ThemeCubit>().toggleTheme(count % 2 == 0);
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.displayLarge,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(left: 30),
        // width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(Increment()),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(Decrement()),
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
