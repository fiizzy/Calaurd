import 'dart:io';

import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/widgets/backIcon.dart';
import 'package:flutter/material.dart';

class SelectedImage extends StatefulWidget {
  File? image;

  SelectedImage({
    required this.image,
  });

  @override
  _SelectedImageState createState() => _SelectedImageState();
}

class _SelectedImageState extends State<SelectedImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyles.backgroundColour,
      appBar: AppBar(
        centerTitle: true,
        leading: backIcon(context: context, iconWidget: Icon(Icons.cancel)),
        backgroundColor: MyStyles.backgroundColour,
        elevation: 0,
        shadowColor: MyStyles.backgroundColour,
        title: Container(
          child: Text('Black & White Preview'),
        ),
      ),
      body: Center(
        child: widget.image == null
            ? Text('No image selected.')
            : Image.file(widget.image!),
      ),
    );
  }
}
