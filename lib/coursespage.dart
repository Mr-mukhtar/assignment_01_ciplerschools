import 'package:flutter/material.dart';
class coursespage extends StatefulWidget {
  const coursespage({Key? key}) : super(key: key);

  @override
  State<coursespage> createState() => _coursespageState();
}

class _coursespageState extends State<coursespage> {
  int currentindex =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue ,
        elevation: 0,
        leading: CircleAvatar(backgroundImage: AssetImage('assets/c.jpg'),
            radius: .5),
        title: Text('CipherSchools', style: TextStyle(
            fontWeight: FontWeight.w800, color: Colors.black
        ),),
        actions: [
          Icon(Icons.explore_outlined),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Browse',),
          ),
          Switch(value: true,activeColor: Colors.amber,
              activeTrackColor: Colors.cyanAccent,
              splashRadius: 70,
              onChanged: (val)=> setState(() {}
              )),
          Icon(Icons.notifications,size: 25,)
          ,Icon(Icons.search,size: 30,)
          ,
          SizedBox(width: 10,)
        ],
      ),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/back.jpg'),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Positioned(
                child: Row(
                  children: [
                    Expanded(flex: 4,
                      child: Text('Recommended Courses',
                      style: TextStyle(
                        fontSize: 20, color: Colors.white
                      ),),
                    ),
                    Expanded(flex: 2,
                      child: DropdownButton(hint: Text('Popular', style: TextStyle(
                        fontSize: 30, color: Colors.indigoAccent
                      ),),
                          onChanged: (val){setState(() {

                          });}, items: [DropdownMenuItem(child: Text('C++', style: TextStyle(
                          fontSize: 20, color: Colors.black26
                        ),),
                          value: 1, ),
                          DropdownMenuItem(child: Text('java', style: TextStyle(
                          fontSize: 25, color: Colors.black87
                        ),),
                          value: 2,),
                          DropdownMenuItem(child: Text('Android', style: TextStyle(
                          fontSize: 30, color: Colors.blueAccent
                        ),),
                          value: 3,),
                          DropdownMenuItem(child: Text('Flutter', style: TextStyle(
                          fontSize: 30, color: Colors.red
                        ),),
                          value: 4,)

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(flex: 2,
                    child: Image.asset('assets/one.jpg')),
                Expanded(flex: 2,
                    child: Image.asset('assets/two.jpg')),
              ],
            )

          ],
        ),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.deepPurple,
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
