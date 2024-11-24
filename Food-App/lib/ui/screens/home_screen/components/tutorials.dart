import 'package:flutter/material.dart';

tutorials(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 10,
      ),
      Text(
        "Tutorials",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              height: 244,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail1.png"))),
              child: Center(
                child: Image.asset(
                  "assets/icons/play_button.png",
                  height: 60,
                  width: 60,
                ),
              ),
            );
          })
    ],
  );
}
