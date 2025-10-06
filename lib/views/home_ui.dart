import 'package:flutter/material.dart';
import 'package:portfolio/views/about_ui.dart';
import 'package:portfolio/views/appbar_ui.dart';
import 'package:portfolio/views/contact_ui.dart';
import 'package:portfolio/views/hero_section_ui.dart';
import 'package:portfolio/views/projects_ui.dart';
import 'package:portfolio/views/skills_services_ui.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeUi extends StatelessWidget {
  HomeUi({super.key});

  List pagesList = [
    HeroSectionUi(),
    AboutUi(),
    SkillsServicesUi(),
    ProjectsUi(),
    ContactUi(),
    SizedBox(
      width: double.maxFinite,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Container(
      //   decoration: BoxDecoration(
      //     color: MyColors.white,
      //     border: Border.all(color: MyColors.black, width: 1),
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text("! Under Development",style: TextStyle(color: MyColors.red),),
      //   ),
      // ),
      body: Column(
        children: [
          const AppbarUi(),
          Expanded(
            child: ScrollablePositionedList.builder(
                scrollDirection: Axis.vertical,
                itemScrollController: ScrollToPage.scrollController,
                itemPositionsListener: ScrollToPage.itemPositionsListener,
                itemCount: pagesList.length,
                itemBuilder: (context, index) {
                  return pagesList[index];
                }),
          )
        ],
      ),
      // floatingActionButton: Padding(
      //   padding: EdgeInsets.only(right: Responsive.isDesktop(context) ? 14 : 0),
      //   child: FloatingActionButton(
      //     onPressed: (){},
      //     child: Icon(Icons.arrow_upward_sharp, size: 30, color: Colors.cyan),
      //   ),
      // ),
    );
  }
}

class ScrollToPage {
  static final ItemScrollController scrollController = ItemScrollController();
  static final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  static void changePage(int index) {
    scrollController.scrollTo(
      index: index,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
