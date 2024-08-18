import 'package:flutter/material.dart';
import 'package:timeline_widget/widgets/timeline.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Timeline Widget'),
        ),
        body: body(),
      ),
    );
  }

  Widget body() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 0,
      ),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        child: Column(
          children: List.generate(
            10,
            (index) {
              return Timeline(
                isFirst: index == 0,
                isLast: index < 10 - 1,
                child: item(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget item() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade300),
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue.shade50,
        ),
        margin: const EdgeInsets.only(left: 10, bottom: 10),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Ini adalah Judul'),
            Text('Ini adalah Isi'),
            Text('Ini adalah Footer'),
          ],
        ),
      ),
    );
  }
}
