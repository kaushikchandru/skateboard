import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff196561),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                height: MediaQuery.of(context).size.height*0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Adidas \nSkate Deck', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),),
                    Text('\$85', style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700
                    ),),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: FaIcon(FontAwesomeIcons.rulerVertical, size: 20,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('81.3', style: TextStyle(
                                  fontSize: 17
                                ),),
                                Text(' cm', style: TextStyle(
                                    fontSize: 13
                                ),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text('Length', style: TextStyle(
                                fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: FaIcon(FontAwesomeIcons.rulerHorizontal, size: 20,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('20.3', style: TextStyle(
                                    fontSize: 17
                                ),),
                                Text(' cm', style: TextStyle(
                                    fontSize: 13
                                ),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text('Width', style: TextStyle(
                                fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: RotationTransition(
                                turns: AlwaysStoppedAnimation(135/360),
                                  child: FaIcon(FontAwesomeIcons.rulerVertical, size: 20,)
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('1.3', style: TextStyle(
                                    fontSize: 17
                                ),),
                                Text(' cm', style: TextStyle(
                                    fontSize: 13
                                ),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text('Thickness', style: TextStyle(
                                fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: FaIcon(FontAwesomeIcons.weight, size: 20,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('20', style: TextStyle(
                                    fontSize: 17
                                ),),
                                Text(' Pounds', style: TextStyle(
                                    fontSize: 13
                                ),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text('Weight', style: TextStyle(
                                fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Hero(
                tag: "board",
                child: Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).size.height*0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/image/board1.png'),
                      fit: BoxFit.contain
                    )
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff082d2b),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      child: Text('Add to cart now', style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  margin: EdgeInsets.only(right: 30),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
