import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {   
    return MaterialApp(   
        
      home: new Scaffold(   
         backgroundColor: Colors.cyan,
           
        body: Center(   
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/top.png'),
                    fit: BoxFit.fill,
                  ),
              
                ),
              ),
              Container(
                height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/welcome.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              Container(
               height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/center.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              Container(
               height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/learn.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              IconButton(
                   padding:EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
                  icon: Image.asset('assets/images/button.jpg'),
                  iconSize: 100,
                  onPressed: () {
            _navigateToNextScreen(context);
          },
              ),
              IconButton(
                  padding:EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  icon: Image.asset('assets/images/exit.png'),
                  iconSize: 130,
                  onPressed: () {},
              ),
            ]
          )
        ),   
      ),   
    );   
  }   
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
  }


class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.cyan,
         appBar: AppBar(   
      ),
     
      body: Center(
        child: Column(
          children: [
             IconButton(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 305.0, 0.0),
                  icon: Image.asset('assets/images/home.png'),
                  iconSize: 45,
                  onPressed: () {},
             ),     
            Container(
                
              child: Text('SCIENCE is FUN',
              style: new TextStyle(
                fontSize: 28.0,
                fontFamily: 'Cooper Black',
                color: new Color(0xDD000000))
              )
            ),
            
            new Container(
              child: Text('click to learn',
              style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Brush Script MT',
                  color: new Color(0xFFFFFFFF),
              )
              ),
            ),
            new Container(
                width:170.0,
                height: 30.0,
               decoration: new BoxDecoration(
               color: new Color(0xFF64FFDA)),
               child: new Text('categories',
               textAlign: TextAlign.center,
               style: new TextStyle(
                 fontFamily: 'Cooper Black',
                  fontSize: 25.0,
                  color: new Color(0xFFFFFFFF),
                  shadows: [
                    Shadow( // bottomLeft
	                   offset: Offset( -2, -2),
	                    color: Colors.black
                         ),
                    Shadow( // bottomRight
	                    offset: Offset(2, -2),
	                    color: Colors.black
                         ),
                    Shadow( // topRight
	                   offset: Offset(2, 2),
	                    color: Colors.black
                        ),
                    Shadow( // topLeft
	                    offset: Offset(-2, 2),
	                    color: Colors.black
                            ),
                       ],
                ),)
            ),
            new Container(
          padding: EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
          child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          shrinkWrap: true,
          
          
          children: <Widget>[
            Image.asset("assets/images/human_body.png",),
            Image.asset("assets/images/food.png"),
            Image.asset("assets/images/animals.png"),
            Image.asset("assets/images/plants.png"),
            Image.asset("assets/images/planets.png"),
            Image.asset("assets/images/games.png"),

          ],
        )
            )

          ],
        ),
      )

      ),


    );
  }
}

