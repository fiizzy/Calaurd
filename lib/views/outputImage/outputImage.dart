import 'package:calaurd/providers/imageProvider.dart';
import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/outputImage/saveAndRetake.dart';
import 'package:calaurd/views/widgets/backIcon.dart';
import 'package:calaurd/views/widgets/preloader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OutputImage extends StatefulWidget {
  const OutputImage({Key? key}) : super(key: key);

  @override
  _OutputImageState createState() => _OutputImageState();
}

class _OutputImageState extends State<OutputImage> {
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
            child: Text('Coloured Preview'),
          ),
        ),
        body: Consumer<ImageProviderClass>(
          builder: (context, imageProvider, child) {
            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  child: Center(
                      child: Image.network(
                    imageProvider.imageUrl!,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Preloader();
                    },
                  )),
                ),
                Positioned(
                  bottom: MyStyles.deviceHieight(context) * .04,
                  child: SaveAndRetake(),
                ),
              ],
            );
          },
        ));
  }
}
