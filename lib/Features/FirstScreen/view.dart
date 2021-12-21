import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mat3m/Features/SecondLayer/view.dart';
import 'package:mat3m/constant/constant.dart';

class FirstLayer extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: 250.0,
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Container(
                  color: mymaincolor,
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        trailing: IconButton(
                          icon: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(
                                Icons.notifications,
                                color: mymaincolor,
                              )),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            "Hello Karolina",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            "Let's find best Co-working Space",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Space In your Area",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                child: Row(
                                  children: [
                                    Text(
                                      "View All",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 160.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.5), width: 1.0),
                          color: Colors.grey[200]),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.camera_indoor_rounded,
                              color: mymaincolor,
                            ),
                            onPressed: () {
                              print("your menu action here");
                              _scaffoldKey.currentState!.openDrawer();
                            },
                          ),
                          Expanded(
                            child: TextField(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              decoration: InputDecoration(
                                hintText: "Search Co-Working Space",
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: mymaincolor,
                            ),
                            onPressed: () {
                              print("your menu action here");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Card(
                elevation: 10,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SecondLayer()));
                  },
                  child: Container(
                    height: 220,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),

                          ),
                          child: Image(
                            image: AssetImage("assets/images/co1.jpg"),
                            height: 150,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                          top: 145,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Trans Cube Co-Working Space",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.yellow,
                                  ),
                                  width: 50,
                                  height: 30,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 14,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "20149,myDrive st,no-5031",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              SizedBox(
                                width: 205,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        " \$16 / Day",
                                        style: TextStyle(
                                            color: mymaincolor, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
