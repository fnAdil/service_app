import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

int counter = 0;

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ürünler"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("fitre kafe"),
                subtitle: Text("yrram gibi"),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            counter--;
                            setState(() {});
                          },
                          child: Center(
                              child: Icon(Icons.remove_circle_outline_rounded,
                                  color: Colors.brown[200])),
                        ),
                        Text(counter.toString()),
                        GestureDetector(
                          onTap: () {
                            counter++;

                            setState(() {});
                          },
                          child: Center(
                              child: Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.brown[200],
                          )),
                        ),
                      ]),
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: 25));
  }
}
