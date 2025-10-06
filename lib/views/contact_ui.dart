import 'package:flutter/material.dart';
import 'package:portfolio/commons/colors.dart';
import 'package:portfolio/commons/constants.dart';
import 'package:portfolio/commons/strings.dart';
import 'package:portfolio/services/functional_services.dart';
import 'package:portfolio/services/responsive.dart';
import 'package:portfolio/widgets/button_widget.dart';
import 'package:portfolio/widgets/contact_icon_widget.dart';
import 'package:portfolio/widgets/text_widget.dart';

class ContactUi extends StatelessWidget {
  const ContactUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Responsive.getHeight(context) > 700
            ? Responsive.getHeight(context) -
                (Responsive.isMobile(context) ? 50 : 65)
            : 700,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
                padding: EdgeInsets.only(
                    right: Responsive.isMobile(context) ? 15 : 30,
                    left: Responsive.isMobile(context) ? 15 : 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget.header1(MyStrings.contact, context),
                    SizedBox(
                      height: 15,
                    ),
                    !Responsive.isDesktop(context)
                        ? TextWidget.header4(MyStrings.contactDetail, context)
                        : Container(),
                    !Responsive.isDesktop(context)
                        ? SizedBox(
                            height: 15,
                          )
                        : Container(),
                  ],
                )),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    child: Image.asset(
                      width: Responsive.getWidth(context),
                      fit: BoxFit.cover,
                      'assets/BgImageContact.JPG',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: !Responsive.isDesktop(context) ? 20 : 40.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(-5, 10),
                          ),
                        ],
                      ),
                      width: Responsive.getWidth(context) -
                          (!Responsive.isDesktop(context) ? 20 : 40),
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: !Responsive.isDesktop(context) ? 20 : 40.0,
                            right: !Responsive.isDesktop(context) ? 20 : 40.0),
                        child: Row(
                          children: [
                            !Responsive.isDesktop(context)
                                ? Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ContactIconWidget(
                                            label: Constants.mailId,
                                            image: "assets/gmail.png",
                                            onPressed: () async {
                                              await FunctionalServices
                                                  .launchAndCopyUrl(
                                                      context: context,
                                                      URL: Constants.linkMailId,
                                                      textToCopy:
                                                          Constants.mailId);
                                            }),
                                        ContactIconWidget(
                                            label: Constants.phoneNo,
                                            image: "assets/pngegg.png",
                                            onPressed: () async {
                                              await FunctionalServices
                                                  .launchAndCopyUrl(
                                                      context: context,
                                                      URL:
                                                          Constants.linkPhoneNo,
                                                      textToCopy:
                                                          Constants.phoneNo);
                                            }),
                                        ContactIconWidget(
                                            label: Constants.linkedInId,
                                            image: "assets/linkedin.png",
                                            onPressed: () async {
                                              await FunctionalServices
                                                  .launchAndCopyUrl(
                                                      context: context,
                                                      URL: Constants
                                                          .linkLinkedIn);
                                            }),
                                        ContactIconWidget(
                                            label: Constants.gitId,
                                            image: "assets/pngwingGit.png",
                                            onPressed: () async {
                                              await FunctionalServices
                                                  .launchAndCopyUrl(
                                                      context: context,
                                                      URL: Constants.linkGit);
                                            }),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        !Responsive.isDesktop(context)
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  resumeBtn(context),
                                                ],
                                              )
                                            : Container()
                                      ],
                                    ),
                                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ContactIconWidget(
                                          label: Constants.mailId,
                                          image: "assets/gmail.png",
                                          onPressed: () async {
                                            await FunctionalServices
                                                .launchAndCopyUrl(
                                                    context: context,
                                                    URL: Constants.linkMailId,
                                                    textToCopy:
                                                        Constants.mailId);
                                          }),
                                      ContactIconWidget(
                                          label: Constants.phoneNo,
                                          image: "assets/pngegg.png",
                                          onPressed: () async {
                                            await FunctionalServices
                                                .launchAndCopyUrl(
                                                    context: context,
                                                    URL: Constants.linkPhoneNo,
                                                    textToCopy:
                                                        Constants.phoneNo);
                                          }),
                                      ContactIconWidget(
                                          label: Constants.linkedInId,
                                          image: "assets/linkedin.png",
                                          onPressed: () async {
                                            await FunctionalServices
                                                .launchAndCopyUrl(
                                                    context: context,
                                                    URL:
                                                        Constants.linkLinkedIn);
                                          }),
                                      ContactIconWidget(
                                          label: Constants.gitId,
                                          image: "assets/pngwingGit.png",
                                          onPressed: () async {
                                            await FunctionalServices
                                                .launchAndCopyUrl(
                                                    context: context,
                                                    URL: Constants.linkGit);
                                          }),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      !Responsive.isDesktop(context)
                                          ? Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                resumeBtn(context),
                                              ],
                                            )
                                          : Container()
                                    ],
                                  ),
                            Responsive.isDesktop(context)
                                ? Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: Responsive.isMobile(context)
                                              ? 15
                                              : 30,
                                          left: Responsive.isMobile(context)
                                              ? 15
                                              : 60),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextWidget.header4(
                                              MyStrings.contactDetail, context),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          resumeBtn(context),
                                        ],
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  static Widget resumeBtn(BuildContext context) {
    return ButtonWidget(
      onPressed: () async {
        await FunctionalServices.launchAndCopyUrl(
            context: context, URL: Constants.linkResume);
      },
      isResumeBtn: true,
      label: TextWidget.body(
        MyStrings.downloadResume,
        context,
        color: MyColors.white,
      ),
      height: Responsive.isMobile(context) ? 35 : 50,
      width: Responsive.isMobile(context) ? 170 : 220,
    );
  }
}
