import 'package:flutter/material.dart';

class Preloader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 1,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                CircularProgressIndicator(
                  strokeWidth: 1,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 1,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                CircularProgressIndicator(
                  strokeWidth: 1,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
