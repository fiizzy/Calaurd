import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/widgets/backIcon.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class UploadImage extends StatefulWidget {
  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Material(
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {},
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: MyStyles.deviceHieight(context) * .35,
                      child: WebsafeSvg.asset(
                        'svg/uploadImageBg.svg',
                      ),
                    ),
                    Container(
                      height: 200,
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
                    )
                  ],
                ),
              ),
            ),
            MyStyles.verticalSpaceTwo,
            Material(
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {},
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      child: WebsafeSvg.asset(
                        'svg/uploadImageBg.svg',
                        height: MyStyles.deviceHieight(context) * .35,
                      ),
                    ),
                    Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WebsafeSvg.asset(
                            'svg/imageUrl.svg',
                            height: 70,
                          ),
                          MyStyles.verticalSpaceZero,
                          Text(
                            'Upload Image from Gallery',
                            style: MyStyles.bodyTextWhite,
                          ),
                          MyStyles.verticalSpaceZero,
                          Form(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  labelText: 'Email',
                                  hintText: 'example@gmail.com',
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.zero),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/home');
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      gradient: MyStyles.gradient),
                                  child: Center(
                                    child: Text(
                                      "GET STARTED",
                                      style: MyStyles.buttonText,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
