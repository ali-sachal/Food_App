import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/show_all.dart';
import 'package:security_gdpr/ui/custom_widgets/community_cookbook.dart';
import 'package:security_gdpr/ui/custom_widgets/custom_text_fields/real_time_AI.dart';
import 'package:security_gdpr/ui/screens/donate_food/donate_food.dart';
import 'package:security_gdpr/ui/screens/evionmental_imapct/envionmental_impact_scoring.dart';
import 'package:security_gdpr/ui/screens/food_tracking/food_tracking.dart';
import 'package:security_gdpr/ui/screens/global_food/global_food.dart';
import 'package:security_gdpr/ui/custom_widgets/nutritional_analysis/nutritional_analysis.dart';
import 'package:security_gdpr/ui/custom_widgets/popular_recipes/popular_recipes.dart';
import 'package:security_gdpr/ui/custom_widgets/shopping_list/shopping_list.dart';
import 'package:security_gdpr/ui/screens/health_predictor/health_predictor.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/cocking_timer_and_reminder.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/community_feed.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/customizable_recipe.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/customized_workplan.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/handfree_cocking_guidence.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/integration_healthSensors.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/inventory_for_recipe.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/live_cockingevents.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/live_events.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/meal_analysis.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/recipe_comments.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/recipe_suggestion.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/suggested_by_AI.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/user_generated_recipe.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/tutorials.dart';
import 'package:security_gdpr/ui/screens/home_screen/home_view_model.dart';
import 'package:security_gdpr/ui/screens/marketplace/markerplace.dart';
import 'package:security_gdpr/ui/custom_widgets/personalized_recipe.dart';
import 'package:security_gdpr/ui/screens/meal_planner/meal_planner.dart';
import 'package:security_gdpr/ui/screens/mood_food/mood_food.dart';
import 'package:security_gdpr/ui/screens/virtual_inventory/virtual_inventory.dart';
import '../../custom_widgets/home_appbar/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel.initialize(),
        child: Consumer<HomeViewModel>(
          builder: (context, model, child) => Scaffold(
            backgroundColor: Colors.white,
            body: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          /// Home Appbar Widget...>>>
                          homeAppBar(context, model),

                          /// Popular Recipes Widget...>>>
                          popularRecipes(context),

                          /// Nutritional Analysis >>>
                          nutritionalAnalysis(context),

                          /// realTime AI Response >>>
                          realTimeAIresponse(context),

                          /// FoodTracking Scanner >>>
                          foodTracking(context),

                          /// Shopping List Widget >>>
                          showShoppingList(context),

                          /// calender
                          customizedWorkplan(context),

                          /// Virtual Inventory >>>
                          virtualInventory(context),

                          ///Inventory For Recipe>>
                          inventoryForRecipe(context),

                          ///Recipe Suggestions>>>
                          recipeSuggestion(context),

                          ///Suggested By AI>>>
                          suggestedByAI(context),

                          ///Tutorials>>>
                          tutorials(context),

                          ///Integration with Health Sensors>>>
                          integration_healthSensors(context),

                          ///Meal Analysis>>>
                          mealAnalysis(context),
                          //Hands Free Coocking Guidance>>>
                          handsfree_cocking_guidence(context),

                          ///Meal Planner>>>
                          mealPlanner(context),

                          /// personalizedRecipe  >>>
                          personalizedRecipe(context),

                          /// MarketPlace  >>>
                          marketPlace(context),

                          /// Charity Food Donate  >>>
                          donateFood(context),

                          /// Global Food  >>>
                          const GlobalFood(),

                          /// Live Cocking Events>>>
                          liveCockingevents(context),

                          /// Community Cookbook  >>>
                          communityCookbook(context),

                          //Cocking Timer And Reminder>>>
                          cockingTimer_and_Reminder(context),

                          //Customizable Recipes>>>
                          customizable_recipies(context),

                          //Community Feed
                          communityFeed(context),

                          //Recipe Comments

                          recipeComments(context),

                          // Live  Events >>>
                          liveEvents(context),

                          //Suggested By AI>>>
                          userGeneratedRecipes(context),
                          SizedBox(
                            height: 20.h,
                          ),

                          ///
                          /// Scan Product
                          ///
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Scan Product",
                                style: style16B.copyWith(
                                    color: blackColor, fontSize: 20),
                              ),
                              showAll(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EnvironmentalImpact()));
                                  },
                                  text: "Show All")
                            ],
                          ),

                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 118,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                image: DecorationImage(
                                    image: AssetImage(Images.eggImage),
                                    fit: BoxFit.cover)),
                          ),

                          ///
                          /// Video player
                          ///
                          GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemCount: 2,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Container(
                                  height: 114.h,
                                  width: 187.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Colors.transparent,
                                  ),
                                  child: model.flickManager.flickVideoManager
                                              ?.isVideoInitialized ??
                                          false
                                      ? FlickVideoPlayer(
                                          flickManager: model.flickManager)
                                      : Center(
                                          child: CircularProgressIndicator(
                                          color: PrimaryColor,
                                        )),
                                ),
                              );
                            },
                          ),

                          ///
                          /// Mood Food
                          ///
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FoodMoodView()));
                              },
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Mood Food",
                                      style: TextStyle(color: blackColor)
                                          .s(30)
                                          .w(6),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      Images.faceScanImage,
                                      height: 170,
                                      width: 160,
                                    ),
                                    Text(
                                      "Face Scanner",
                                      style: TextStyle(color: blackColor)
                                          .s(16)
                                          .w(6),
                                    ),
                                  ]),
                            ),
                          ),
                          Text(
                            "Health Predictor",
                            style: TextStyle(color: blackColor).s(16).w(6),
                          ),

                          ///
                          /// Health Predictor
                          ///
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HealthPredictor()));
                            },
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                image: DecorationImage(
                                  image: AssetImage(Images.healthBG),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              Images.robot2,
                              scale: 3,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
