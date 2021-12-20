import 'package:flutter/material.dart';
import 'package:mat3m/Features/RegisterScreen/view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplahScreen extends StatelessWidget {
  List<String> largeList = [
    "Just Keep Calm",
    "East To Find Space",
    "Let's Start Work"
  ];
  List<String> SmallText = [
    "We Have Some Many Work Space Available as per your comfert and budget",
    " Just one click you find th best place to work in the city",
    " Start your hassel free work with truly experience amenities"
  ];
  PageController Controller = PageController();
  late int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1E4E50),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: Controller,
                itemCount: 3,
                itemBuilder: (context, index) {
                  currentIndex=index;
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          child: Image(
                            image: AssetImage(
                                "assets/images/pageview${index + 1}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xff1E4E50),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "${largeList[index]}",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                " ${SmallText[index]}",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            color: Color(0xff1E4E50),
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                    controller: Controller,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      activeStrokeWidth: 2.6,
                      activeDotScale: 1.3,
                      maxVisibleDots: 5,
                      radius: 8,
                      spacing: 10,
                      dotHeight: 12,
                      dotWidth: 12,
                      activeDotColor: Colors.white,
                    )),
                IconButton(
                  onPressed: () {
                    Controller.nextPage(
                        duration: Duration(microseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn);
                    if(
                    currentIndex==2
                    ){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterScreen()));
                    }
                  },
                  icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size:28 ,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
