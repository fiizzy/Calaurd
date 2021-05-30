import 'package:calaurd/providers/imageProvider.dart';
import 'package:calaurd/services/service.dart';
import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/widgets/backIcon.dart';
import 'package:calaurd/views/widgets/preloader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedImage extends StatefulWidget {
  @override
  _SelectedImageState createState() => _SelectedImageState();
}

class _SelectedImageState extends State<SelectedImage> {
  Services? service = new Services();
  bool isLoading = false;
  String? imageUrl;

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
        body: Consumer<ImageProviderClass>(
            builder: (context, imageProvider, child) {
          return isLoading
              ? Center(child: Preloader())
              : Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      child: Center(
                        child: imageProvider.image == null
                            ? Text('No image selected.')
                            : imageUrl == null
                                ? Image.file(imageProvider.image!)
                                : Image.network(imageUrl!),
                      ),
                    ),
                    Positioned(
                      bottom: MyStyles.deviceHieight(context) * .04,
                      child: Container(
                        width: MyStyles.buttonWidth(context),
                        height: MyStyles.buttonHeight,
                        decoration: BoxDecoration(gradient: MyStyles.gradient),
                        // color: MyStyles.primaryGreen,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                          ),
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            imageUrl = await service!.getColouredImage(context);
                            setState(() {
                              isLoading = false;
                            });
                          },
                          child: Container(
                            height: MyStyles.buttonHeight,
                            decoration:
                                BoxDecoration(gradient: MyStyles.gradient),
                            child: Center(
                              child: Text(
                                "CALAURIZE",
                                style: MyStyles.buttonText,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
        }));
  }
}
