

import 'package:flutter/material.dart';

void main() => runApp(becoolapp());

class becoolapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SE380 project becool app',
      home: Scaffold(
        body: background(),
      ),
    );
  }
}

class background extends StatelessWidget {
  background({Key? key }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        buildBackgorund(),
        buildlogo(),
      privacymap(),
      Container(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () =>{ Navigator.push (context ,  MaterialPageRoute(builder: (context)=>NewScreen(),
),),},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Bulletto',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    MaterialButton(
                      onPressed: () => ,
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Bulletto',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ], verticalDirection: VerticalDirection.up),
      ),
      ],
    );
    
  }


Widget privacymap() =>Column (
children: [Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 100),
child:buildprivacy(),
)],verticalDirection:VerticalDirection.up ,
);


Widget buildBackgorund() => ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [Colors.black38, Colors.black87],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ).createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/tom.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.blue.shade400.withOpacity(0.6), BlendMode.darken),
            ),
          ),
        ),
      );
  Widget buildlogo() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/images/be_cool.png', scale: 3.0),
          ],
        ),
      );

  Widget buildprivacy() => Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            '"By tapping Sign up or Sign In , you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy"',
            style: TextStyle(
              fontFamily: 'Bulletto',
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
 
}


class NewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Screen')),
      body: const Center(
        child: Text(
          'This is a new screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }  
}