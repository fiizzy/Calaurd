import 'package:calaurd/providers/imageProvider.dart';
import 'package:calaurd/services/service.dart';
import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/utils/checkConnectivity.dart';
import 'package:calaurd/utils/toastMessage.dart';
import 'package:calaurd/views/outputImage/outputImage.dart';
import 'package:calaurd/views/widgets/backIcon.dart';
import 'package:calaurd/views/widgets/preloader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedImage extends StatefulWidget {
  @override
  _SelectedImageState createState() => _SelectedImageState();
}

class _SelectedImageState extends State<SelectedImage> {
  CheckConnectivity connectionInit = CheckConnectivity();
  String? checkServiceException;
  bool? checker;
  @override
  Widget build(BuildContext context) {
    dynamic stateProvider =
        Provider.of<ImageProviderClass>(context, listen: false);

    if (stateProvider.checkSource == "fromUrl") {
      setState(() {
        stateProvider.isLoading = true;
      });
    }

    return Scaffold(
        backgroundColor: MyStyles.backgroundColour,
        appBar: AppBar(
          centerTitle: true,
          leading: backIcon(context: context, iconWidget: Icon(Icons.cancel)),
          backgroundColor: MyStyles.backgroundColour,
          elevation: 0,
          shadowColor: MyStyles.backgroundColour,
          title: Container(
            child: stateProvider.isLoading == true
                ? Text('Processing...')
                : Text('Black and White Preview'),
          ),
        ),
        body: Consumer<ImageProviderClass>(
            builder: (context, imageProvider, child) {
          return imageProvider.isLoading == true
              ? Center(child: Preloader())
              : Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      child: Center(
                          child: imageProvider.checkSource == 'fromHomeScreen'
                              ? imageProvider.homeScreenImage
                              : imageProvider.checkSource == 'fromGallery'
                                  ? Image.file(imageProvider.image!)
                                  : imageProvider.checkSource == 'fromUrl'
                                      ? imageProvider.urlImage
                                      : null),
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
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                            ),
                            onPressed: () async {
                              setState(() {
                                imageProvider.isLoading = true;
                              });
                              checkServiceException = await imageProvider
                                  .service
                                  .getColouredImage(context);

                              if (await connectionInit.checkConnectivity() ==
                                      'notConnected' ||
                                  checkServiceException ==
                                      'SocketException: SocketException') {
                                print(checkServiceException);
                                toastMessage(
                                    message:
                                        'Failed to process. \n Check your internet');
                                Navigator.pop(context);
                                imageProvider.checkSource = null;
                                imageProvider.isLoading = false;
                              } else {
                                imageProvider.imageUrl = checkServiceException;
                                print(imageProvider.isLoading);
                                print(checkServiceException);

                                imageProvider.checkSource = null;
                                imageProvider.isLoading = false;

                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OutputImage()),
                                );
                              }
                              // print(imageProvider.isLoading);
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
                            )),
                      ),
                    ),
                  ],
                );
        }));
  }
}
