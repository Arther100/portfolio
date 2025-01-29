import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/services/copy_paste_service.dart';
import 'package:karthi_kayan_portfolio/services/url_launcher.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';
import 'package:photo_view/photo_view.dart';

class FunctionalServices{
  static Future<void> launchAndCopyUrl({required BuildContext context, required String URL, String? textToCopy}) async {
    await UrlOpener.launch(URL);
    CopyPasteService.setData(textToCopy??URL).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: MyColors.red,
          content: TextWidget.body(MyStrings.linkCopied, context, color: MyColors.white,),
          duration: Duration(seconds: 3),
        ),
      );
    },
    );
}

  static Widget showImage(String source, BuildContext context) {
    return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        backgroundColor: MyColors.white,
        content: AspectRatio(
          aspectRatio: 3 / 2,
          child: Stack(
            children: [
              PhotoView(
                imageProvider: NetworkImage(source),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: MyColors.black,
                      child: Center(
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}