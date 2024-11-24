import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/screens/group_training/sub_live_feedback.dart';

class LiveFeedback extends StatelessWidget {
  const LiveFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBar_function(),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 250),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubLiveFeedback()));
                    },
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/dumble.png"))),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatra_image.png"),
                          radius: 24,
                        ),
                        title: Text(
                          "Navile M",
                          style: TextStyle(fontSize: 12, color: whiteColor),
                        ),
                        subtitle: Text(
                          "Swedan",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        trailing: Image.asset(
                          "assets/icons/voice.png",
                          width: 21,
                          height: 33,
                        ),
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/avatra_image.png"),
                    radius: 24,
                  ),
                  title: Text(
                    "Navile M",
                    style: TextStyle(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "You are doping great!!!",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: progressColor,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

appBar_function() {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/app_bar_image.png",
              width: 44,
              height: 44,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/scan.png",
                  height: 40,
                  width: 40,
                ),
                Image.asset(
                  "assets/images/menu.png",
                  height: 40,
                  width: 40,
                )
              ],
            )
          ],
        ),
        Text(
          "Live Workout",
          style: TextStyle(
              fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
