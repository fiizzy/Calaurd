import 'dart:convert';

import 'package:calaurd/providers/imageProvider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Services {
  Future<String> getColouredImage(context) async {
    ImageProviderClass imageProvider =
        Provider.of<ImageProviderClass>(context, listen: false);

    var request = http.MultipartRequest(
        'POST', Uri.parse('https://api.deepai.org/api/colorizer'));
    request.headers['api-key'] = '25891929-f3f5-4729-8d8d-273eb4aacd1a';

    if (imageProvider.checkSource == 'fromHomeScreen') {
      request.files.add(http.MultipartFile.fromBytes(
          'image', imageProvider.homeScreenImageBytes,
          filename: 'photo.jpg'));
    } else if (imageProvider.checkSource == 'fromUrl') {
      request.files.add(http.MultipartFile.fromBytes(
          'image', imageProvider.urlImageBytes,
          filename: 'photo.jpg'));
    } else {
      request.files
          .add(await http.MultipartFile.fromPath('image', imageProvider.path!));
    }
    var res = await request.send();
    var response = await http.Response.fromStream(res);
    var finalResult = jsonDecode(response.body);
    print(finalResult['output_url']);
    return finalResult['output_url'];
  }
}
