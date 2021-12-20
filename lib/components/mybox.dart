import 'package:flutter/material.dart';
import 'package:se494_third_works/pages/details.dart';
import 'package:se494_third_works/widgets/mytext.dart';

class MyBox extends StatelessWidget {
  String imageUrl;
  String title;
  String subtitle;

  MyBox({Key? key, required this.imageUrl, required this.title, required this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
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
          MyText(sometxt: title, size: 25),
          MyText(sometxt: subtitle, size: 15),
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
