import 'package:ecommerce/constants/constants_export.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(icAppLogo)
        .box
        .size(77, 77)
        .white
        .padding(const EdgeInsets.all(8))
        .rounded
        .make();
  }
}
