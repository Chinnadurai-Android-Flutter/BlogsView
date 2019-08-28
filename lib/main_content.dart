import 'package:flutter/material.dart';
import 'detail_page.dart';

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  //Date Widget
  Widget getDate() => Container(
        alignment: Alignment.topLeft,
        child: Text(
          "Today",
          style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.w700,
              fontSize: 14),
        ),
      );

  //Profile Picture Widget
  Widget getImage() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Blog",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: CircleAvatar(
              child: InkWell(
                onTap: () {},
              ),
              maxRadius: 25,
              backgroundColor: Colors.deepOrange,
              backgroundImage: NetworkImage(
                  "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
            ),
          ),
        ],
      );

  //List Item
  Widget getListItem(coverImage, title, author, time, authorImage) => Container(
        margin: EdgeInsets.only(right: 30),
        width: 250,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
          image: DecorationImage(
              image: NetworkImage(coverImage), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: 28,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 10),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 20, bottom: 10),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(20, 20)),
                            image: DecorationImage(
                                image: NetworkImage(authorImage),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      author,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          time,
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );

  //Popular Widget
  Widget popularWidget(title, subtitle, time, like, image) => Container(
        //padding: EdgeInsets.only(bottom: 10),
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 4, bottom: 4),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                    image: DecorationImage(image: NetworkImage(image)))),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 17),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.access_time,
                            size: 18,
                          ),
                          onPressed: null),
                      Text(
                        time,
                        style: TextStyle(fontSize: 14),
                      ),
                      Padding(padding: EdgeInsets.only(left: 12)),
                      Icon(
                        Icons.thumb_up,
                        size: 18,
                        color: Colors.grey[400],
                      ),
                      Padding(padding: EdgeInsets.only(left: 12)),
                      Text(
                        like,
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Date Widget
          getDate(),

          SizedBox(
            height: 2,
          ),

          getImage(),

          SizedBox(
            height: 30,
          ),

          Container(
            width: 250,
            height: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1526695029408-c5dc730c89fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "Woman wearing silver-colored Aviator-style sunglasses holding camera bokeh photography",
                        "Chinnadurai",
                        "25 sec ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1564594967125-f12b449e4802?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "Travel and tourism\n",
                        "Chinnadurai Viswanathan",
                        "1 minute ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1527068589345-b736a7de9cc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "people crossing on road between buildings",
                        "Chinnadurai",
                        "5 minutes ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1450858930767-64b21437d41f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "Silhouette of people riding on camels",
                        "Chinnadurai Viswanathan",
                        "6 minutes ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "River stream between rocks during daytime",
                        "Chinnadurai",
                        "10 minutes ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "Gray building surrounded by body of water",
                        "Chinnadurai Viswanathan",
                        "15 minutes ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1452001603782-7d4e7d931173?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "Brown and black tiger lying on green grass during daytime",
                        "Chinnadurai",
                        "20 minutes ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "Open book lot\n",
                        "Chinnadurai Viswanathan",
                        "25 minutes ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1476950743170-ab77e7d4d82e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "Girl sitting whil holding book on field",
                        "Chinnadurai",
                        "35 minutes ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  ),
                  InkWell(
                    highlightColor: Colors.white70,
                    splashColor: Colors.white70,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                        "https://images.unsplash.com/photo-1521225099409-8e1efc95321d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        "Woman smiling in selective focus photography",
                        "Chinnadurai Viswanathan",
                        "55 minutes ago",
                        "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"),
                  )
                ],
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Popular",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Text(
                "Show all",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepOrange),
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          InkWell(
              onTap: () {},
              child: popularWidget(
                  "Design",
                  "Most Awaited",
                  "14 sec ago",
                  "786",
                  "https://pbs.twimg.com/profile_images/1012653532204302337/7vd6UATg_400x400.jpg")),

          SizedBox(
            height: 5,
          ),
          InkWell(
              onTap: () {},
              child: popularWidget("View", "Most Awaited", "15 sec ago", "786",
                  "https://pbs.twimg.com/profile_images/1012653532204302337/7vd6UATg_400x400.jpg")),

          SizedBox(
            height: 5,
          ),
          InkWell(
              onTap: () {},
              child: popularWidget(
                  "Photography",
                  "Most Awaited",
                  "25 sec ago",
                  "786",
                  "https://pbs.twimg.com/profile_images/1012653532204302337/7vd6UATg_400x400.jpg")),

          SizedBox(
            height: 5,
          ),
          InkWell(
              onTap: () {},
              child: popularWidget("Album", "Most Awaited", "30 sec ago", "786",
                  "https://pbs.twimg.com/profile_images/1012653532204302337/7vd6UATg_400x400.jpg")),

          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
