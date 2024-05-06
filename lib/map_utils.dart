import 'package:url_launcher/url_launcher.dart';

class MapUtils{
  MapUtils._();

  static Future<void>openMap(
    double lat,
    double long,
  )async{
    String googleUrl='https://www.google.com/maps/search/?api=1&query=$lat,$long';
    final url =Uri.parse(googleUrl);
     await launchUrl(url,
        mode: LaunchMode.externalApplication);

    
  }

}