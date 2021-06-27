import 'package:calaurd/providers/imageProvider.dart';
import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/utils/save.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget saveAndRetake(BuildContext context) {
  SaveImageUtil saveImageClass = SaveImageUtil();
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
              saveImageClass.saveImageFromServer(stateProvider.imageUrl);
            },
            child: Container(
              height: MyStyles.buttonHeight,
              decoration: BoxDecoration(gradient: MyStyles.gradient),
              child: Center(
                child: Text(
                  "SAVE",
                  style: MyStyles.buttonText,
                ),
              ),
            )),
      ),
      MyStyles.horizontalSpaceOne,
      Icon(
        Icons.refresh,
        color: MyStyles.white,
        size: 40,
      )
    ],
  );
}
