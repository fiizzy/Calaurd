import 'package:calaurd/providers/imageProvider.dart';
import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/home/bottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List imagePaths = ['images/onboardingTwo.png', 'images/onboardingFour.jpg'];

  Future setSharedpref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
  }

  void changeCurrentIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    setSharedpref();
  }

  Future<bool> willPopScope() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    ImageProviderClass imageProvider =
        Provider.of<ImageProviderClass>(context, listen: false);

    return WillPopScope(
        child: Scaffold(
            backgroundColor: MyStyles.backgroundColour,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              backgroundColor: MyStyles.backgroundColour,
              elevation: 0,
              shadowColor: MyStyles.backgroundColour,
              title: Container(
                child: WebsafeSvg.asset('svg/horizontal_logo.svg'),
              ),
            ),
            body: Stack(
              // alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: PageView(
                    onPageChanged: (index) {
                      changeCurrentIndex(index);
                    },
                    controller: PageController(
                      viewportFraction: .7,
                    ),
                    children: [
                      InkWell(
                        onTap: () {
                          imageProvider.getHomeScreenImage(
                              context, imagePaths[0]);
                        },
                        child: Container(
                            padding: EdgeInsets.fromLTRB(5, 20, 5, 50),
                            width: MyStyles.deviceWidth(context),
                            // height: MyStyles.deviceHieight(context),
                            height: MyStyles.deviceHieight(context) * .7,
                            child: Image.asset(
                              imagePaths[0],
                              fit: currentIndex == 1
                                  ? BoxFit.fitWidth
                                  : BoxFit.cover,
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          imageProvider.getHomeScreenImage(
                              context, imagePaths[1]);
                        },
                        child: Container(
                            padding: EdgeInsets.fromLTRB(5, 20, 5, 50),
                            width: MyStyles.deviceWidth(context),
                            // height: MyStyles.deviceHieight(context),
                            height: MyStyles.deviceHieight(context) * .7,
                            child: Image.asset(
                              imagePaths[1],
                              fit: currentIndex == 0
                                  ? BoxFit.fitWidth
                                  : BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: BottomNavbar(),
                ),
              ],
            )),
        onWillPop: willPopScope);
  }
}
