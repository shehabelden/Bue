import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);
  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 390,
            height: 390,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(4),
            //   border: Border.all(
            //     color: Colors.black,
            //      width:.2,
              // ),
            // ),
            child: Column(
              children: [
               const Icon(Icons.camera_alt_outlined,size: 120),
               const Text('''
   please can you open 
            a camera
                ''',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: InkWell(onTap: (){
                  setState(() {
                    ImagePicker().pickImage(source: ImageSource.camera);
                  });
                  },
                  child:Container(
                    height: 40,
                    width: 354,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                            color: Colors.blue,
                            width: .1
                        ),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child:const Text('Open',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                    ),
                  ) ,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
