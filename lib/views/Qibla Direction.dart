import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:prayer/constant.dart';
import 'package:prayer/styles.dart';
import 'dart:math';

class Qibla extends StatefulWidget {
  const Qibla({super.key});

  @override
  State<Qibla> createState() => _QiblaState();
}

Animation<double>? animation;
AnimationController? _animationController;
double begin = 0.0;

class _QiblaState extends State<Qibla> with SingleTickerProviderStateMixin{

  void initState() {
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: 0.0).animate(_animationController!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: const Icon(Icons.arrow_back_ios),),
        title: const Center(child: Text('Qibla Direction',style: Styles.bold20,)),
       actions: const [
         Padding(
           padding: EdgeInsets.all(16),
           child: Icon(Icons.menu),
         )
       ],
      ),
      body:  StreamBuilder(
        stream: FlutterQiblah.qiblahStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(alignment: Alignment.center, child: const CircularProgressIndicator(color: Colors.white,));
          }

          final qiblahDirection = snapshot.data;
          animation = Tween(begin: begin, end: (qiblahDirection!.qiblah * (pi / 180) * -1)).animate(_animationController!);
          begin = (qiblahDirection.qiblah * (pi / 180) * -1);
          _animationController!.forward(from: 0);

          return Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${qiblahDirection.direction.toInt()}°",
                    style: const TextStyle(color: Colors.black, fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: 300,
                      child: AnimatedBuilder(
                        animation: animation!,
                        builder: (context, child) => Transform.rotate(
                            angle: animation!.value,
                            child: Image.asset('assets/images/qibla.png')),
                      ))
                ]),
          );
        },
      ),
    );
  }
}
