import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Drawer(),
          backgroundColor: Color(0xfff9f9f9),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xfff9f9f9),
            iconTheme: IconThemeData(color: Colors.grey),
            title: Text(
              "GameTV",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Jone Doe",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Container(
                      width: 50,
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.all(Radius.circular(
                                20.0) //                 <--- border radius here
                            ),
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: '2250',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Elo raiting',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                      ),
                    ),
                    trailing: Container(
                      width: 100,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFE37600),
                                const Color(0xFFEDA803),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp,
                            ),
                            border: Border.all(color: Color(0xfff9f9f9)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0))),
                        height: 120,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Center(
                            child: Text(
                          "34 Tournaments Played",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFF442397),
                              const Color(0xFFA757BE),
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp,
                          ),
                          border: Border.all(color: Color(0xfff9f9f9)),
                        ),
                        height: 120,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Center(
                            child: Text(
                          "09 Tournaments Won",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFEC5845),
                                const Color(0xFFEE7F4F),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp,
                            ),
                            border: Border.all(color: Color(0xfff9f9f9)),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0))
                        ),
                        height: 120,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Center(
                            child: Text(
                          "26%       Winning  Percentage",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ))),
                  ],
                ),
               ListTile(
                 title:  Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text("Recommended for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 ),
                 trailing: Text(""),
               ),

                Container(

                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Color(0xffd2d2d2),
                              blurRadius: 15.0,
                            ),]
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/fortnite.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.0),
                                      topLeft: Radius.circular(30.0))
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0))
                              ),
                              height: 100,

                              child: ListTile(
                                title:Text("Fotnite Champions Mar 2021",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                subtitle: Padding(
                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                  child: Text("Fortnite",style: TextStyle( color: Colors.grey, fontSize: 16)),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 30.0,
                                ),
                              )

                            ),
                          ],
                        ),

                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Color(0xffd2d2d2),
                              blurRadius: 15.0,
                            ),]
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/fortnite.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.0),
                                      topLeft: Radius.circular(30.0))
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0))
                              ),
                              height: 100,

                              child: ListTile(
                                title:Text("Fotnite Champions Mar 2021",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                subtitle: Padding(
                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                  child: Text("Fortnite",style: TextStyle( color: Colors.grey, fontSize: 16)),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 30.0,
                                ),
                              )

                            ),
                          ],
                        ),

                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Color(0xffd2d2d2),
                              blurRadius: 15.0,
                            ),]
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/fortnite.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.0),
                                      topLeft: Radius.circular(30.0))
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0))
                              ),
                              height: 100,

                              child: ListTile(
                                title:Text("Fotnite Champions Mar 2021",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                subtitle: Padding(
                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                  child: Text("Fortnite",style: TextStyle( color: Colors.grey, fontSize: 16)),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 30.0,
                                ),
                              )

                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                ),

              ],
            ),
          )),
    );
  }
}
