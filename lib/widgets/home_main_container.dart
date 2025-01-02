import 'package:flutter/cupertino.dart';
import 'package:prayer/models/prayers_model.dart';

import '../constant.dart';
import '../styles.dart';

class HomeMainContainer extends StatelessWidget {
  const HomeMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    PrayerModel prayerModel;
    return Container(
      width: 311,
      height: 122,
      decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(20)
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Dhuhur in',style: Styles.normal16,),
          Text('2 Hours 4 Minutes',style: Styles.bold24,)
        ],
      ),
    );
  }
}
