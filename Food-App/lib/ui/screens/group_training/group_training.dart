import 'package:flutter/material.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/screens/group_training/live_feedback.dart';

class GroupTraining extends StatelessWidget {
  const GroupTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 567,
              child: Column(
                children: [
                  appBar_function(),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      "Group Training \nAnd \nExercises",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 60,
                          color: progressColor,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/training.png"),
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), // Adjust opacity as needed
                      BlendMode.darken,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  custom_row(context, "Group Members", progressColor),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 80,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return customGrid();
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text("Add more Members"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Start Live Workout"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Create New Group",
                      style: TextStyle(fontSize: 20, color: progressColor),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  custom_textfeild(
                      context, "Admins Email ID", "Enter Your Email"),
                  custom_textfeild(context, "Create Password", "Password"),
                  custom_textfeild(context, "Confirm Passwod", "Password"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Enter Members",
                        style: TextStyle().s(16).cl(Colors.black).w(7),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 156,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                            color: PrimaryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          "Enter Members Email ID",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xfff777777),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: CustomButton(
                              text: "Create New Group",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LiveFeedback()));
                              }))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  appBar_function() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
      child: Row(
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
    );
  }
}

custom_textfeild(BuildContext context, String name, String txtfeild_name) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 15,
      ),
      Text(
        name,
        style: TextStyle().s(16).cl(Colors.black).w(7),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: Text(
          txtfeild_name,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xfff777777),
          ),
        ),
      )
    ],
  );
}

custom_row(BuildContext context, String txt, Color txtClr) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(txt, style: TextStyle(color: txtClr, fontSize: 16)),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: PrimaryColor),
        padding: EdgeInsets.all(6),
        child: Text(
          "Show All",
          style: TextStyle().cl(blackColor).w(7),
        ),
      )
    ],
  );
}

customGrid() {
  return Container(
    width: 177,
    height: 82,
    decoration: BoxDecoration(
      color: PrimaryColor,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    padding: EdgeInsets.all(8),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatra_image.png"),
          radius: 24,
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Navilie M",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "UK",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        Icon(Icons.more_vert, color: Colors.grey[700]),
      ],
    ),
  );
}
