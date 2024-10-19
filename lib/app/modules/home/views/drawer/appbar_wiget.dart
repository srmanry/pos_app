import 'package:flutter/material.dart';

class AppbarWiget extends StatelessWidget {
  Text? appbartitle;
  Color? color;
  AppbarWiget({super.key, this.appbartitle, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
            // backgroundColor: appBarcolor,
            leading: Builder(
                builder: (context) => IconButton(
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ))),
      ),
    );
  }
}



// body: Container(
//           child:Row(
//             children: [
//               IconButton(onPressed: (){
              
//               }, icon: Icon(Icons.menu))
//             ],
//           ) ,