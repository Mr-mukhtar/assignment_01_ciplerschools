import 'package:assignment_01_ciplerschools/coursespage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int currentindex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,
        leading: CircleAvatar(backgroundImage: AssetImage('assets/c.jpg'),
          radius: .5),
        title: Text('CipherSchools', style: TextStyle(
          fontWeight: FontWeight.w800, color: Colors.black
        ),),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/right.png'),
            onPressed: () {},
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [SizedBox(height: 60,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Welcome to',style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 25
              ),),
                Text(' the',style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 25, color: Colors.red
              ),)
            ],),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text('Future',style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: 25, color: Colors.red
                ),),
                  Text(' of the learning!',style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 25
                  ),),



                ],
              ),
            ),
            SizedBox(height: 25,),
            Text('Start Learning by best creators for', style: TextStyle(
              fontSize: 22
            ),),
            Text('absolutely Free |',
            style: TextStyle(
              fontSize: 22 ,color: Colors.red
            ),),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(flex: 2,
                  child: Column(
                    children:
                    [
                      Text('50+', style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold

                      ),),
                      Text('Mentors',style: TextStyle(fontSize: 25

                      )),
                    ],
                  ),
                ),
                Text('|', style: TextStyle(
                  fontSize: 30
                ),),
                Expanded( flex: 3,
                  child: SizedBox(
                    child: Column(
                      children: [Text('4.8/5', style: TextStyle(
                        fontSize: 28
                      ),),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text('Ratings', style: TextStyle(
                          fontSize: 25
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ), SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:
              (context)=>coursespage()
              ));
            },
                child: Container( width: 230,
                  child: Row(
                    children: [
                      Text('Start Learning Now', style: TextStyle(
                        fontSize: 20
                      ),),SizedBox(height: 50,),
                      Icon(Icons.arrow_right_alt_outlined)
                    ],
                  ),
                )),
            Image.asset('assets/a1.jpg'),
            Image.asset('assets/a2.jpg'),



          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
    onTap: (index) => setState(()
      => currentindex = index
    )
        ,

    items: const <BottomNavigationBarItem>[

    BottomNavigationBarItem(
    icon: Icon(Icons.home, size: 45, color: Colors.red,),
    label: 'Home',

    
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.leaderboard_outlined,
        size: 45),
    label: 'Courses',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.explore, size: 45),
    label: 'trending',
    ),
    BottomNavigationBarItem(

    icon: Icon(Icons.person, size: 45),
    label: 'profile',
    )
    ]),

    );

  }
}
