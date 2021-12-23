import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final title, subtitle, image, detail;
  DetailsPage(this.title,this.subtitle,this.image,this.detail);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var _title, _subtitle,_image,_detail;

  @override
  void initState() {
    super.initState();
    _title = widget.title;
    _subtitle = widget.subtitle;
    _image = widget.image;
    _detail = widget.detail;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title),),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(_title),
            Text(_subtitle),
            Image.network(_image),
            Text(_detail),
          ],
        ),
      ) 
    );
  }
}
