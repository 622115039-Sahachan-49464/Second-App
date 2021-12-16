import 'package:flutter/material.dart';
import 'package:se494_third_works/pages/details.dart';
import 'package:se494_third_works/widgets/mytext.dart';

class MyBox extends StatelessWidget {
  String imageUrl;

  MyBox({Key? key, required this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: NetworkImage(
               imageUrl
            ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(sometxt: "What is a computer", size: 25),
          MyText(sometxt: "Computer is a things to calculate and for any other works", size: 15),
          const SizedBox(height: 15,),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage()
                    )
                );
              },
              child: MyText(sometxt: "read more",size: 12,))
        ],
      ),
    );
  }
}
