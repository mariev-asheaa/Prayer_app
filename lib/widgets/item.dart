import 'package:flutter/cupertino.dart';

import '../constant.dart';
import '../styles.dart';

class Item extends StatefulWidget {
  const Item({super.key,@required this.timings, required this.name});
final String ? timings;
final String name;
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 32),
      child: Container(
        width: 290,
        height: 52,
        decoration: BoxDecoration(
            color: secondary,
            borderRadius: BorderRadius.circular(16)
        ),
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.name,style: Styles.normal20,),
              Text('${widget.timings}',style: Styles.normal20,)
            ],
          ),
        ),
      ),
    );
  }
}
