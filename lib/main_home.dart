import 'package:flutter/material.dart';
class MainScrean extends StatelessWidget {
  const MainScrean({Key? key}) : super(key: key);
  void x(int a){}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Center(child: IconButton(onPressed: (){}, icon:const Icon(Icons.ac_unit)))
        ],
        elevation: 0,
        bottom: PreferredSize(
          preferredSize:const Size.fromHeight(10.0),
          child: SizedBox(
            width: 400,
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemBuilder: (c,i){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text("${i+1}",style:const TextStyle(
                    color: Colors.white
                  )),
                ),
              );
            }),
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (c,i){
               return Padding(
                 padding: const EdgeInsets.only(bottom: 20.0,left: 10),
                 child: SizedBox(
                   height: 50,
                   width: double.infinity,
                   child: Row(
                     children: [
                       Container(
                         width: 50,
                         height: 50,
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.circular(50),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: SizedBox(
                           height: 120,
                           width: 40,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const[
                               Text('Name'),
                               Text("bio"),
                             ],
                           ),
                         ),
                       ),
                       Expanded(
                         flex: 1,
                         child: Align(
                           alignment: Alignment.topRight,
                             child: IconButton(onPressed: (){}, icon:const Icon(Icons.ac_unit))
                         ),
                       ),
                     ],
                   ),
          ),
               );
        }),
      ),
      bottomNavigationBar: SizedBox(
        width: (double.infinity)-(MediaQuery.of(context).size.width/4),
        child: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(label: "label", icon:Icon(Icons.add), ),
            BottomNavigationBarItem(label: "label", icon:Icon(Icons.add_alert), ),
            BottomNavigationBarItem(label: "label", icon:Icon(Icons.ac_unit_outlined), ),
          ],
          currentIndex :0,
          onTap:x,
        ),
      ),
    );
  }
}
