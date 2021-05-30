import 'package:calaurd/providers/imageProvider.dart';
import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/widgets/backIcon.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class UploadImage extends StatefulWidget {
  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    final imageProvider =
        Provider.of<ImageProviderClass>(context, listen: false);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MyStyles.backgroundColour,
      appBar: AppBar(
        centerTitle: true,
        leading:
            backIcon(context: context, iconWidget: Icon(Icons.chevron_left)),
        backgroundColor: MyStyles.backgroundColour,
        elevation: 0,
        shadowColor: MyStyles.backgroundColour,
        title: Container(
          child: Text('UploadImage'),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Material(
            color: Colors.transparent,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: MyStyles.primaryGrey,
              onTap: () {
                imageProvider.getImage(context);
              },
              child: Container(
                  height: MyStyles.deviceHieight(context) * .35,
                  color: MyStyles.darkGrey,
                  child: DottedBorder(
                    color: Colors.white,
                    strokeWidth: 4,
                    dashPattern: [3],
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WebsafeSvg.asset(
                              'svg/uploadImageImage.svg',
                              height: 70,
                            ),
                            MyStyles.verticalSpaceZero,
                            Text(
                              'Upload Image from Gallery',
                              style: MyStyles.bodyTextWhite,
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          MyStyles.verticalSpaceTwo,
          Material(
            color: Colors.transparent,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: MyStyles.primaryGrey,
              onTap: () {
                print('Workingn');
              },
              child: Container(
                  // padding: EdgeInsets.all(20),
                  height: MyStyles.deviceHieight(context) * .42,
                  width: 0,
                  color: MyStyles.darkGrey,
                  child: DottedBorder(
                    color: Colors.white,
                    strokeWidth: 4,
                    dashPattern: [3],
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WebsafeSvg.asset(
                              'svg/imageUrl.svg',
                              height: 70,
                            ),
                            MyStyles.verticalSpaceZero,
                            Text(
                              'Upload Image from URL',
                              style: MyStyles.bodyTextWhite,
                            ),
                            Container(
                              child: TextFormField(
                                style: MyStyles.bodyTextWhite,
                                decoration: InputDecoration(
                                  labelText: 'Enter Link',
                                  hintText: 'Enter or Paste Link',
                                  fillColor: MyStyles.gradientPurple,
                                ),
                              ),
                            ),
                            MyStyles.verticalSpaceZero,
                            Material(
                              shape: CircleBorder(),
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                splashColor: Colors.red,
                                onTap: () {
                                  Navigator.pushNamed(context, '/uploadImage');
                                },
                                child: Container(
                                  child: Center(
                                    child: Icon(Icons.chevron_right_rounded),
                                  ),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      gradient: MyStyles.gradient,
                                      borderRadius: MyStyles.myBorderRadius),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
