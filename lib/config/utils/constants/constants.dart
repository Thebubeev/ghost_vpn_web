import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const defaultWhiteWebTextStyle = TextStyle(color: Colors.white, fontSize: 38);

const defaultBlackWebTextStyle = TextStyle(color: Colors.black, fontSize: 35);

const defaultWhiteMobileTextStyle =
    TextStyle(color: Colors.white, fontSize: 23);

const defaultBlackMobileTextStyle =
    TextStyle(color: Colors.black, fontSize: 21);

const descriptionText =
    'GhostVPN - приложение, отвечающее на все стандарты качества и конфиденциальности при этом имея интуитивно понятный интерфейс, делающим его доступным для всех пользователей.';

const policyText = '''
Privacy Policy
We don't directly collect any information from you other than your login info from google which is used to administer protected access to some of our content. This app does include google analytics which records anonymized browsing behaviour and used to improve the app design.
How does this application access, use, store, or share Google user data? The only user data received is: name, email and profile picture. These are accessed via OAuth2 login. These are stored in an encrypted database. (Firebase Database) These are used only: to be re-displayed to the user, to reply to messages sent by the user, and as
identification for granting access to additional content to the
user.
The app does use third party services that may collect information used to identify the user.
We collect information from your device in some cases. The information will be utilized for the provision of better service and to prevent fraudulent acts. Additionally, such information will not include that which will identify the individual user.
By continuing to use this app, you accept this privacy policy in full. If you disagree with this policy, you must not use this login method.
Security
We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.
Contact Us
If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.
Contact Information:
Email: ghostcaspervpn0001@gmail.com
''';

const termsText = '''
Terms of Service
This app is designed to educate and socialize. It's provided "as is", without any warranty or condition, express or implied or statutory. This app specifically disclaims any implied warranties of merchantability or fitness for a particular purpose.
By continuing to use this app, you accept these terms of service in full. If you disagree with these terms, you must not use this app.
''';

Future<void> launchInWebViewWithoutJavaScript(Uri url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

enum DeviceTypeEnum {
  mobile,
  desktop,
}
