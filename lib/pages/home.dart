import 'package:flutter/material.dart';
import 'package:se494_third_works/components/mybox.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The World of Witcher"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder(
            builder:(context,snapshot){
              var data = json.decode(snapshot.data.toString());
              return ListView.builder(itemBuilder: (BuildContext context, int index){
                return MyBox(
                  imageUrl: data[index]['image'],
                  title: data[index]['title'],
                  subtitle: data[index]['subtitle'],
                  detail: data[index]['detail'],
                );
              },
                itemCount: data.length,);
            },
            future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
          )
      )
    );
  }
}
