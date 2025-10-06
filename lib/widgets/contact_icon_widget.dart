import 'package:flutter/material.dart';
import 'package:portfolio/commons/colors.dart';
import 'package:portfolio/services/responsive.dart';
import 'package:portfolio/widgets/text_widget.dart';

class ContactIconWidget extends StatelessWidget {
  final String label;
  final String image;
  final void Function() onPressed;

  const ContactIconWidget(
      {super.key,
      required this.label,
      required this.image,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(15)),
              width: Responsive.isMobile(context) ? 40 : 50,
              height: Responsive.isMobile(context) ? 40 : 50,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  fit: BoxFit.fitWidth,
                  image,
                ),
              ),
            ),
          ),
          label != ''
              ? SizedBox(
                  width: 10,
                )
              : Container(),
          label != '' ? TextWidget.body(label, context) : Container()
        ],
      ),
    );
  }
}
