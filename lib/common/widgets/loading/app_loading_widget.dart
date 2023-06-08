import 'package:ecommerce/constants/constants_export.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        child: SpinKitSpinningLines(
          color: whiteColor,
        ),
      ),
    );
  }
}
