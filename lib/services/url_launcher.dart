import 'package:url_launcher_web/url_launcher_web.dart' as launcher;
import 'package:url_launcher_web/url_launcher_web.dart';

class UrlOpener{

  static Future<bool> launch(String phUrl) async {
    final Uri url = Uri.parse(phUrl);
    if (await UrlLauncherPlugin().canLaunch(phUrl)) {
      if (await UrlLauncherPlugin().launch(phUrl)) {
        return true;
      }
      else {
        return false;
      }
    } else {
      return false;
    }
  }
}