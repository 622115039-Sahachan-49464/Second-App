import 'package:flutter/material.dart';
import 'package:se494_third_works/components/mybox.dart';

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
        title: const Text("Computer Knowledge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(height: 20,),
            MyBox(imageUrl:"https://cdn.pixabay.com/photo/2021/12/11/12/15/bird-6862640_960_720.jpg",),
            const SizedBox(height: 20,),
            MyBox(imageUrl: "https://cdn.pixabay.com/photo/2020/01/02/17/25/champagne-4736380_960_720.jpg",),
            const SizedBox(height: 20,),
            MyBox(imageUrl: "https://cdn.pixabay.com/photo/2019/11/27/21/06/jerusalem-4657867_960_720.jpg",),
            const SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}
