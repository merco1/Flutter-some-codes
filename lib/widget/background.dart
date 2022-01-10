

import 'package:flutter/material.dart';


 void main() =>runApp( becoolapp());
  




class becoolapp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return  MaterialApp(
  title: 'SE380 project becool app',
  home: background(),
);
}
}



class  background extends StatelessWidget {
    background({Key ? key }) : super(key: key);
    @override
  Widget build(BuildContext context) =>
    
    ShaderMask(
      shaderCallback: (bounds)=>LinearGradient(
        colors: [Colors.black38,Colors.black87],
        begin: Alignment.center,
        end:Alignment.bottomCenter,
        ).createShader(bounds),
       blendMode: BlendMode.darken,
 child: Container(decoration: BoxDecoration(image: DecorationImage(
    image: AssetImage ('assets/images/tom.jpg'),fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.blue.shade400.withOpacity(0.6),BlendMode.darken)

),),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.stretch,
children:<Widget> [Image.asset('assets/images/be_cool.png',
scale: 5.0,)],
),

   ),
);
 } 

