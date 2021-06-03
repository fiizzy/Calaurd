import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ImageProviderClass extends ChangeNotifier {
  File? image;
  String? path;
  Image? homeScreenImage;
  Image? urlImage;
  var homeScreenImageBytes;
  var urlImageBytes;

  String? checkSource;
  final picker = ImagePicker();

  Future getImage(context) async {
    checkSource = 'fromGallery';
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      Navigator.pushNamed(context, '/selectedImage');
      image = File(pickedFile.path);
      path = pickedFile.path;
      notifyListeners();
      print(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }

  Future getHomeScreenImage(BuildContext context, String imagePath) async {
    try {
      checkSource = 'fromHomeScreen';
      homeScreenImage = Image.asset(imagePath);

      Navigator.pushNamed(context, '/selectedImage');
      homeScreenImageBytes =
          (await rootBundle.load(imagePath)).buffer.asUint8List();
    } catch (e) {
      print('e');
      return 'error Loading Image';
    }
  }

  Future getUrlImage(BuildContext context, String url) async {
    try {
      checkSource = 'fromUrl';
      urlImage = Image.network(url);
      Navigator.pushNamed(context, '/selectedImage');
      urlImageBytes = (await NetworkAssetBundle(Uri.parse(url)).load(url))
          .buffer
          .asUint8List();
    } catch (e) {
      print('e');
      return 'Check the URL';
    }
  }
}
