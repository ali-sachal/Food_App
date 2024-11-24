import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/custom_widgets/custom_text_fields/custom_textfield.dart';
import 'package:security_gdpr/ui/custom_widgets/image_containers/image_banner.dart';
import 'package:security_gdpr/ui/screens/Meal_screen/meals_screen.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/create_account_chef.dart';

liveCockingevents(BuildContext context) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Text(
          "Live Cocking Events",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 20),
      Container(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: PrimaryColor,
            prefixIcon: Icon(Icons.search),
            hintText: 'Search Events, Chefs, Restaurants...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Live Events",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            padding: EdgeInsets.all(3),
            width: 80,
            height: 30,
            decoration: boxDecoration,
            child: Center(child: Text("Show all")),
          )
        ],
      ),
      ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return containerWidgets();
          }),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Scheduled Events",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            padding: EdgeInsets.all(3),
            width: 80,
            height: 30,
            decoration: boxDecoration,
            child: Center(child: Text("Show all")),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      containerWidgets(),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Master Chefs",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            padding: EdgeInsets.all(3),
            width: 80,
            height: 30,
            decoration: boxDecoration,
            child: Center(child: Text("Show all")),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 100,
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/icons/image.png"),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemCount: 5),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Resturents",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            padding: EdgeInsets.all(3),
            width: 80,
            height: 30,
            decoration: boxDecoration,
            child: Center(child: Text("Show all")),
          ),
        ],
      ),
      Container(
        // height: MediaQuery.of(context).size.height / 5,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
            return GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 2 / 2,
              ),
              itemBuilder: (context, index) {
                return ResturentsGridView();
              },
              itemCount: 2,
            );
          },
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: progressColor),
        ),
        child: Column(
          children: [
            Text(
              "Master Chef | Own a Restaurant?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: CustomButton(
                        text: "Create Account as Chef",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccountChef()));
                          ;
                        })),
                Expanded(
                    child: CustomButton(
                        text: "Create Account as Chef", onPressed: () {}))
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Center(
        child: Text(
          "Let People Know Your Suggestion",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: PrimaryColor,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xfff777777),
          ),
          hintText: 'Search Recipes, Restaurants...',
          hintStyle: TextStyle(color: Color(0xfff777777)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " Select Country",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Country",
                      style: TextStyle(
                        color: Color(0xfff777777),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " Select Cuisine",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Select Cuisine"),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      const Text(
        " Select Resturent(Optional)",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Search Resturent",
              style: TextStyle(
                color: Color(0xfff777777),
              ),
            ),
            Icon(Icons.arrow_drop_down_rounded)
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      const Text(
        "Recipe/Dish Name",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recipe Name",
              style: TextStyle(
                color: Color(0xfff777777),
              ),
            ),
            Icon(Icons.arrow_drop_down_rounded)
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Text("Rating"),
      SizedBox(
        height: 10,
      ),
      RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
      SizedBox(height: 20),
      Text(
        " Any Suggestion",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      CustomTextField(
        fillColor: PrimaryColor,
        labelText: 'Write your suggestions',
        textAlign: TextAlign.start,
        keyBoardType: TextInputType.text,
        maxLine: 5,
        textInputAction: TextInputAction.done,
        onChanged: (value) {},
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your your suggestions";
          }
          return null;
        },
      ),
      SizedBox(
        height: 5,
      ),
      Align(
          alignment: Alignment.centerRight,
          child: CustomButton(text: "Submit", onPressed: () {}))
    ],
  );
}

Container containerWidgets() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    decoration: boxDecoration,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageBanner(
          icon: "assets/icons/person.png",
          text: "227",
          image: "assets/images/delicious_time.png",
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Live Cocking Events",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Date: 11-05-2024",
              style: TextStyle(color: Color(0xfff777777)),
            ),
            Text(
              "Time: 10:00 A.M",
              style: TextStyle(color: Color(0xfff777777)),
            ),
            Text(
              "Stream Started: 1h 23 mins age",
              style: TextStyle(color: Color(0xfff777777)),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 60,
            ),
            child: Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(3),
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                  color: progressColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text(". Live")),
            ),
          ),
        )
      ],
    ),
  );
}

/// RecipeItems >>>>
class ResturentsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/images/resturent_img1.png",
              // height: 15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Asador Etxebarri',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    Text('Spain',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
