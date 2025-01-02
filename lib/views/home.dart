import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayer/constant.dart';
import 'package:prayer/cubits/prayer_times_cubit.dart';
import 'package:prayer/styles.dart';
import 'package:prayer/widgets/home_main_container.dart';
import 'package:prayer/widgets/item.dart';
import '../widgets/CustomDrawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
@override
  void initState() {
  BlocProvider.of<PrayerTimesCubit>(context).prayertimes();
    super.initState();
  }
  List<String>names=['Imsak','Fajr','Sunrise','Dhuhur','Asr','Maghrib','Isha'];
  @override
  Widget build(BuildContext context) {

    GlobalKey<ScaffoldState>globalKey=GlobalKey();
    return SafeArea(
      child: Scaffold(
            key: globalKey,
            endDrawer: const Customdrawer(),
            backgroundColor:background,
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Surabaya', style: Styles.bold20,),

                            IconButton(icon: const Icon(Icons.menu),
                              onPressed:(){
                                globalKey.currentState!.openEndDrawer();
                              },),
                          ],
                         ),
                         const Text('Thursday, April 15',style: Styles.normal16),
                       ],
                     ),
                   ),
                  const SizedBox(height: 36,),
                  const HomeMainContainer(),
                  const SizedBox(height: 24,),
                  Expanded(
                    child: BlocBuilder<PrayerTimesCubit, PrayerTimesState>(
                   builder: (context, state) {
                     if(state is PrayerTimesLoading){
                       return const Center(child: CircularProgressIndicator());
                     }
                     if(state is PrayerTimesSuccess){
                       final timings = state.prayerModel.data![0].timings;
                       return ListView.builder(
                           physics: const NeverScrollableScrollPhysics(),
                           itemCount: names.length,
                           itemBuilder:(context,item) {
                             final prayerName = names[item];
                             var prayerTime;
                             switch (prayerName) {
                               case 'Imsak':
                                 prayerTime = timings!.imsak ?? '';
                                 break;
                               case 'Fajr':
                                 prayerTime = timings!.fajr ?? '';
                                 break;
                               case 'Sunrise':
                                 prayerTime = timings!.sunrise ?? '';
                                 break;
                               case 'Dhuhr':
                                 prayerTime = timings!.dhuhr ?? '';
                                 break;
                               case 'Asr':
                                 prayerTime = timings!.asr ?? '';
                                 break;
                               case 'Maghrib':
                                 prayerTime = timings!.maghrib ?? '';
                                 break;
                               case 'Isha':
                                 prayerTime = timings!.isha ?? '';
                                 break;
                             }
                             return Item(
                               timings:prayerTime,
                               name: prayerName,
                             );
                           });
                     }
                     else{
                       return const Text('There was an error loading data',style: TextStyle(
                           color: Colors.black
                       ),);
                     }},)
                  ),
                ],
              ),
            ),);
  }
}
