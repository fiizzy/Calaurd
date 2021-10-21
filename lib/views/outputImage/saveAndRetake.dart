import 'package:calaurd/providers/imageProvider.dart';
import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/utils/save.dart';
import 'package:calaurd/utils/toastMessage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaveAndRetake extends StatefulWidget {
  const SaveAndRetake({Key? key}) : super(key: key);

  @override
  _SaveAndRetakeState createState() => _SaveAndRetakeState();
}

class _SaveAndRetakeState extends State<SaveAndRetake> {
  SaveImageUtil saveImageClass = SaveImageUtil();
  bool isLoading = false;
  String buttonState = 'SAVE';

  @override
  Widget build(BuildContext context) {
    dynamic stateProvider =
        Provider.of<ImageProviderClass>(context, listen: false);
    return Row(
      children: [
        Container(
          width: MyStyles.buttonWidth(context),
          height: MyStyles.buttonHeight,
          decoration: BoxDecoration(gradient: MyStyles.gradient),
          child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                if (buttonState == 'Saved') {
                } else if (buttonState == 'Saving Error! Try again') {
                  toastMessage(
                      message: 'Failed to process. \n Check your internet');
                } else {
                  buttonState = await saveImageClass
                      .saveImageFromServer(stateProvider.imageUrl);
                  toastMessage(
                      message: 'Saved Successsfully!', type: 'success');
                }

                setState(() {
                  isLoading = false;
                });
              },
              child: Container(
                height: MyStyles.buttonHeight,
                decoration: BoxDecoration(gradient: MyStyles.gradient),
                child: Center(
                  child: isLoading == true
                      ? CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 1,
                        )
                      : Text(
                          buttonState,
                          style: MyStyles.buttonText,
                        ),
                ),
              )),
        ),
        MyStyles.horizontalSpaceOne,
        InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: Icon(
            Icons.refresh,
            color: MyStyles.white,
            size: 40,
          ),
        )
      ],
    );
  }
}
