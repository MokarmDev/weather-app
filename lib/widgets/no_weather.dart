import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/images/img_home.svg',
            height: 300,
            width: 300,
          ),
        ),
        const Text(
          'There is No Weather Start Search Now',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
