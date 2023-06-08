import 'package:ecommerce/blocs/splash/splash_bloc.dart';
import 'package:ecommerce/common/widgets/loading/app_loading_widget.dart';
import 'package:ecommerce/common/widgets/logo/logo_widget.dart';
import 'package:ecommerce/constants/constants_export.dart';
import 'package:ecommerce/screens/authentication/login/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: BlocListener<SplashBloc, SplashState>(
        bloc: BlocProvider.of<SplashBloc>(context),
        listener: (context, state) {
          if (state is SplashStateLoaded) {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: const LoginScreen(),
              ),
            );
          }
        },
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(icSplashBg)
                      .box
                      .width(300)
                      .padding(const EdgeInsets.all(20))
                      .make(),
                ),
                20.heightBox,
                const LogoWidget(),
                5.heightBox,
                appName.text.xl5.bold.white.make(),
                appTagLine.text.xl2.white.make(),
                const Spacer(),
                const AppLoadingWidget(),
                50.heightBox,
                appVersion.text.xl2.white.make(),
                20.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
