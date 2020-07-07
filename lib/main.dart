import 'package:flutter/material.dart';
import 'package:skateboard/ProductPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway'
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/productPage' : (context)=>ProductPage(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17234d),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Container(
            height: MediaQuery.of(context).size.height*0.58,
            child: Stack(
              children: [
                Positioned(
                  top: 25,
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width-40,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
                      color: Color(0xff3786c9),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color(0xff17234d),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xff17234d),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 150,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Color(0xff17234d),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 0,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Hero(
                          tag: "board",
                          child: Container(
                            width: 150,
                            height: MediaQuery.of(context).size.height*0.55,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('asset/image/board1.png')
                              )
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: MediaQuery.of(context).size.height*0.55,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image/board2.png')
                              )
                          ),

                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 100,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text('\$85', style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800
                        ),),
                        Row(
                          children: [
                            Icon(Icons.star, color: Color(0xff3786c9),),
                            Text('4.5', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Material: Wood', style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 10,),
                Text('Durability: This product has best rating for durability', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 10,),
                Text('Backside Skin:', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width*0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('asset/image/skin1.png'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('asset/image/skin2.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('asset/image/skin3.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    color: Color(0xff3786c9)
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ratings & Reviews', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),),
                            Text('4.8 rating, 2,120 reviews', style: TextStyle(
                              color: Colors.white,
                              fontSize: 17
                            ),)
                          ],
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('asset/image/avatar.png')
                                    )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('asset/image/avatar.png')
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('asset/image/avatar.png')
                                      )
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('+2,135', style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                      color: Color(0xffb4c640),
                    ),
                    child: Center(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.add_shopping_cart),
                                  SizedBox(width: 5,),
                                  Text('Add to cart', style: TextStyle(
                                    fontSize: 16
                                  ),)
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: openProductPage,
                              child: Text('View full', style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void openProductPage()
  {
    Navigator.pushNamed(context, '/productPage');
  }
}
