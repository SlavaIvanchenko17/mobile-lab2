import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Expanded(
                      child: Text('Account:',style: TextStyle(color: Colors.black.withOpacity(.8),fontSize: 30),)
                  ),
                  Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/user.jpg'),
                            ),
                          ),
                          Expanded(
                              child: Text('gordon.dmytro',style: TextStyle(color: Colors.black.withOpacity(.8),fontWeight: FontWeight.w400,fontSize: 20),)
                          ),
                          Icon(
                            Icons.exit_to_app,
                            size: 30,
                          ),
                        ],
                      ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Edit"),
              onTap: (){},
            ),
            ListTile(
              title: Text("About"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Exit"),
              onTap: (){},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Exit',
        child: Icon(Icons.exit_to_app),
        backgroundColor: Color(0xffad095e),
      ),
      appBar: AppBar(
        title: Text(
          'insta-сlone',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.live_tv,
              size: 32,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 122,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, right: 12, bottom: 5),
                  child: Column(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            width: 75,
                            height: 75,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/user.jpg'),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: -9,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'My Story',
                        style: TextStyle(
                            color: Colors.black.withOpacity(.8),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                story('assets/user1.png','user1'),
                story('assets/user2.jpg','user2'),
                story('assets/user3.png','user3'),
                story('assets/user4.jpeg','user4'),
                story('assets/user5.jpg','user5'),
                story('assets/user6.jpg','user6'),
              ],
            ),
          ),
          post('assets/1.jpg'),
          post('assets/2.jpg'),
          post('assets/3.jpg'),
          post('assets/4.jpg'),
          post('assets/5.jpg'),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.home,size:32,color: Colors.black.withOpacity(.9)),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,size:32,color: Colors.black.withOpacity(.4)),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add_circle_outline,size:32,color: Colors.black.withOpacity(.4)),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.favorite_border,size:32,color: Colors.black.withOpacity(.4)),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.person_outline,size:32,color: Colors.black.withOpacity(.4)),
          ),
        ],
      ),
    );
  }
}

Widget story(String image, name) {
  return Padding(
    padding: const EdgeInsets.only(top: 12, right: 12),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          width: 76,
          height: 76,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xffad095e),width: 3)
          ),
          child: ClipOval(
            child: Image.asset(image,fit: BoxFit.cover,),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.black.withOpacity(.8), fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Widget post(String image){
  return Container(
    decoration: BoxDecoration(color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(.3)))
    ),

    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/user.jpg'),
              ),
            ),
            Expanded(
                child: Text('gordon.dmytro',style: TextStyle(color: Colors.black.withOpacity(.8),fontWeight: FontWeight.w400,fontSize: 20),)
            ),
          ],
        ),
        Image.asset(image,fit: BoxFit.cover,width:double.infinity,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border,size:31),
                  SizedBox(width: 10,),
                  Icon(Icons.send,size:31),
                ],
              ),
              Icon(Icons.bookmark_border,size:31)
            ],
          ),
        ),
        comment('user1', 'Good job!', 'assets/user1.png'),
        comment('user3', 'This is my friend!', 'assets/user3.png'),
      ],
    ),
  );
}

Widget comment(String name, msg, image){
  return Container(
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(image),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(color: Colors.black.withOpacity(.8),fontWeight: FontWeight.w400,fontSize: 20),),
              Text(msg ,style: TextStyle(color: Colors.black.withOpacity(.6),fontWeight: FontWeight.w400,fontSize: 15),)
            ],
          ),
        ),
      ],
    ),
  );
}