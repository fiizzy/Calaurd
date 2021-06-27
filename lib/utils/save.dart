import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:gallery_saver/gallery_saver.dart';

class SaveImageUtil {
  String? savingStatus;

  Future<String> saveImageFromServer(String imageUrl) async {
    try {
      final cache = DefaultCacheManager();
      final file = await cache.getSingleFile(imageUrl);
      await GallerySaver.saveImage(file.path, albumName: 'Calaurd');
      savingStatus = 'Saved';
      print(savingStatus);
    } catch (e) {
      print('There was this error : $e');
      savingStatus = 'Saving Error! Try again';
    }
    return savingStatus!;
  }
}
