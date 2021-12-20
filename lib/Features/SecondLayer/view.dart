import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mat3m/constant/constant.dart';

class SecondLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(
              Icons.arrow_back_ios,
            ),
            expandedHeight: 350,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            backgroundColor: mymaincolor,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ),
                            child: Image(
                              image: AssetImage("assets/images/co1.jpg"),
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Trans Cube Co-Working Space",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                          width: 50,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "20149,myDrive st,no-5031",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(
                          width: 180,
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
                  Divider(
                    color: Colors.grey[400],
                    thickness: 1,
                    endIndent: 20,
                    indent: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Hours: Mon-Sat ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              )),
                          TextSpan(
                              text: "(Sunday Close)",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ))
                        ])),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "04:30 Am to 12:00 Am",
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
            )),
            title: Text("Meet Up Co-Working"),
            actions: [
              IconButton(
                  onPressed: () {
                    print("Icons Button");
                  },
                  icon: Icon(
                    Icons.label_important_outlined,
                    color: Colors.yellow,
                  ))
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "What really makes Spaces unique is the community"
                        " we’ve worked to cultivate. Add an international network of mobile "
                        "workspaces and a full calendar of business events, speakers and networking"
                        " lunches, and you’ll see just how Spaces"
                        " keeps you engaged and open to new possibilities.",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Provided Aminites",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        defultcard(
                            pad: EdgeInsets.all(8),
                            context: context,
                            txt1: "Car Barking",
                            txt2: "Space for cars",
                            icon: Icons.car_repair),
                        defultcard(
                            pad: EdgeInsets.all(8),
                            context: context,
                            txt1: "Car Barking",
                            txt2: "Space for cars",
                            icon: Icons.car_repair)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        defultcard(
                            pad: EdgeInsets.all(8),
                            context: context,
                            txt1: "Car Barking",
                            txt2: "Space for cars",
                            icon: Icons.car_repair),
                        defultcard(
                            pad: EdgeInsets.all(8),
                            context: context,
                            txt1: "Car Barking",
                            txt2: "Space for cars",
                            icon: Icons.car_repair)
                      ],
                    ),
                    defultcard(
                        pad: EdgeInsets.only(left: 30),
                        context: context,
                        txt1: "Car Barking",
                        txt2: "Space for cars",
                        icon: Icons.car_repair),
                    // GridView.builder(
                    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //     crossAxisCount: 2,
                    //     mainAxisSpacing: 10,
                    //     crossAxisSpacing: 10,
                    //     childAspectRatio: 2,
                    //   ),
                    //   itemBuilder: (BuildContext context, int index) {
                    //     return Container(
                    //       height: 80,
                    //       width: 80,
                    //       child: Image(
                    //         image: AssetImage("assets/images/co1.jpg"),
                    //       ),
                    //     );
                    //   },
                    //   itemCount: 21,
                    // )
                  ],
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }

  defultcard({context, txt1, txt2, icon, pad}) {
    return Padding(
      padding: pad,
      child: Card(
        child: Container(
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: mymaincolor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 30,
                  width: 30,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  )),
              Column(
                children: [
                  Text(
                    txt1,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(txt2, style: Theme.of(context).textTheme.caption),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
