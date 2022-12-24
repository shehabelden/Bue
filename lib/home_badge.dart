import 'package:bue/Camera.dart';
import 'package:flutter/material.dart';
class HomeBadge extends StatefulWidget {
  const HomeBadge({Key? key}) : super(key: key);
  @override
  State<HomeBadge> createState() => _HomeBadgeState();
}
class _HomeBadgeState extends State<HomeBadge> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(flex: 3, child: Padding(
            padding: const EdgeInsets.only(top:100.0),
            child: Stack(
              children:[
                Image.asset("images/image 1.png"),
                const Padding(
                  padding:  EdgeInsets.only(top:138.0,left: 30),
                  child:  Text('hellow',style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                  ),
                  ),
                ),
              ]
            ),
          ),),
          Expanded(
            flex: 1,
              child:Padding(
                padding: const EdgeInsets.only(top:70.0,bottom: 70,left: 20,right: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>const Camera(),
                    ));

                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                        color: Colors.green,
                        width: .1
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child:const Text('Next',style: TextStyle(
                      color: Colors.white,
                      fontSize: 40
                                      ),
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
