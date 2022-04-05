import 'package:flutter/material.dart';
import 'package:service_app/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Masa Seç'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 10,
            ),
            RowView(size: size),
            const SizedBox(
              height: 10,
            ),
            RowView(size: size),
            const SizedBox(
              height: 10,
            ),
            RowView(size: size),
            const SizedBox(
              height: 10,
            ),
            RowView(size: size),
            const SizedBox(
              height: 10,
            ),
            RowView(size: size),
          ],
        ),
      ),
    );
  }
}

class RowView extends StatelessWidget {
  const RowView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TableView(size: size),
        TableView(size: size),
      ],
    );
  }
}

class TableView extends StatelessWidget {
  const TableView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailPage(),
            ));
      },
      child: Container(
        child: const Center(
          child: Text(
            "Masa 1",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        width: size.width * .3,
        height: size.height * .1,
        decoration: BoxDecoration(
          color: Colors.brown[200],
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
