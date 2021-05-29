import 'package:calaurd/views/imagePreviewDisplay/selectedImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ImageProviderClass extends ChangeNotifier {
  File? image;
  final picker = ImagePicker();

  Future getImage(context) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      Navigator.pushNamed(context, '/selectedImage');
      image = File(pickedFile.path);
      notifyListeners();
      print(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }
}
