import 'package:calaurd/services/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class ImageProviderClass extends ChangeNotifier {
  File? image;
  String? path;
  Image? homeScreenImage;
  Image? urlImage; //Image uploaded by users through URL
  var homeScreenImageBytes;
  var urlImageBytes;
  bool? isLoading;
  Services service = new Services();
  String? imageUrl; //URL for the converted Image

  String? checkSource;
  final picker = ImagePicker();

  void toggleLoading() {
    isLoading = !isLoading!;
    notifyListeners();
  }

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
      print(e);
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
      return 'Check the URL';
    } catch (e) {
      print(e);
      return 'Check the URL';
    }
  }
}
