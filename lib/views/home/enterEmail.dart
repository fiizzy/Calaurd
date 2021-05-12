import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';

class EnterEmail extends StatefulWidget {
  @override
  _EnterEmailState createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        height: MyStyles.deviceHieight(context) * .6,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: closeIcon()),
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
                    MyStyles.verticalSpaceTwo,
                    Text(
                      'This is to help us give you future update on Calaurd. \n We promise not to spam your mail.',
                      style: MyStyles.bodyText,
                    ),
                    SizedBox(
                      height: MyStyles.deviceHieight(context) * .15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Container(
                        height: MyStyles.buttonHeight,
                        decoration: BoxDecoration(gradient: MyStyles.gradient),
                        child: Center(
                          child: Text(
                            "GET STARTED",
                            style: MyStyles.buttonText,
                          ),
                        ),
                      ),
                    ),
                    MyStyles.verticalSpaceOne,
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text('Remind me Later'),
                      ),
                    )
                  ],
                ))
              ],
            )));
  }
}

Widget closeIcon() {
  return InkWell(
    child: Container(
      height: 10,
      width: 50,
      decoration: BoxDecoration(
          gradient: MyStyles.gradient, borderRadius: MyStyles.myBorderRadius),
    ),
  );
}
