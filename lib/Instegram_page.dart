import 'package:challenge2/assets/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class page extends StatefulWidget {
  page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  var Accounts_bar = [
    {
      "Account_Picture":
          "https://pbs.twimg.com/profile_images/1540279142763094018/NqTCuZ71_400x400.jpg",
      "Account_Name": "Your Story",
    },
    {
      "Account_Picture":
          "https://i.pinimg.com/564x/65/2f/c4/652fc4cfb7bac1a8cd311f2d53935a24.jpg",
      "Account_Name": "Raad",
      "watch_all_story?": true
    },
    {
      "Account_Picture":
          "https://i.pinimg.com/564x/a1/01/7d/a1017da97b51b5190b674ca23dbed210.jpg",
      "Account_Name": "ahmed",
      "watch_all_story?": false
    },
    {
      "Account_Picture":
          "https://i.pinimg.com/564x/86/c7/46/86c746bf798827a4a317ebd77a1a66bb.jpg",
      "Account_Name": "Nasser",
      "watch_all_story?": true
    },
    {
      "Account_Picture":
          "https://i.pinimg.com/564x/00/68/eb/0068eb3afbb1a1c547ba55816efef26e.jpg",
      "Account_Name": "khaled",
      "you_watch_all_story?": true
    },
    {
      "Account_Picture":
          "https://i.pinimg.com/564x/fc/64/99/fc64996521b5af4ecdef8d6e7732cffd.jpg",
      "Account_Name": "ahmed",
      "watch_all_story?": true
    },
  ];

  var storys = [
    {
      "Account_Picture":
          "https://i.pinimg.com/564x/65/2f/c4/652fc4cfb7bac1a8cd311f2d53935a24.jpg",
      "Account_Name": "Raad",
      "Post": "https://i.giphy.com/media/12HZukMBlutpoQ/giphy.webp",
      "likes": "686,5",
      "Comment": "Cat Boxing",
      "time": "2 days ago",
    },
    {
      "Account_Picture":
          "https://i.pinimg.com/564x/86/c7/46/86c746bf798827a4a317ebd77a1a66bb.jpg",
      "Account_Name": "Nasser",
      "Post":
          "https://i.pinimg.com/564x/d8/f8/ff/d8f8ff1a3ca6129d59bfcd4ea2e38b51.jpg",
      "likes": "969",
      "Comment": "لنصعد معا",
      "time": "7 days ago",
    },
    {
      "Account_Picture":
          "https://i.pinimg.com/564x/fc/64/99/fc64996521b5af4ecdef8d6e7732cffd.jpg",
      "Account_Name": "Ahmed",
      "Post":
          "https://i.pinimg.com/564x/5f/fc/b8/5ffcb863ae5690ac3da14ff265e2e4e8.jpg",
      "likes": "363",
      "Comment": "لست اخشى من الموت , اخشى ان يتلاشى غضبي مع الزمن",
      "time": "13 days ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png"),
        leadingWidth: 170,
        actions: const [
          Icon(
            Icons.add,
            color: Colors.black,
            size: 30,
          ),
          Padding(padding: EdgeInsets.all(5)),
          Icon(
            Icons.favorite_border,
            size: 33,
            color: Colors.black,
          ),
          Padding(padding: EdgeInsets.all(5)),
          Icon(
            MyFlutterApp.send,
            color: Colors.black,
          ),
          Padding(padding: EdgeInsets.all(5)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: story_bar(),
          ),
          Expanded(
            flex: 16,
            child: storys_List(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 30,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                  Icon(
                    MyFlutterApp.reel,
                    size: 30,
                  ),
                  Icon(
                    MyFlutterApp.shop,
                    size: 30,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "${Accounts_bar[0]["Account_Picture"]}",
                      ),
                    ),
                  )
                ],
              ))),
    );
  }

  Widget story_bar() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Accounts_bar.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: index == 0
              ? Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70.0,
                          height: 70.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "${Accounts_bar[index]["Account_Picture"]}"),
                          ),
                        ),
                        Positioned(
                          right: 5,
                          top: 40,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(width: 2, color: Colors.white),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${Accounts_bar[index]["Account_Name"]} ",
                    ),
                  ],
                )
              : Column(
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors:
                              Accounts_bar[index]["watch_all_story?"] == false
                                  ? [Colors.black26, Colors.black26]
                                  : const [
                                      Color(0xffddeb01),
                                      Color(0xffff00db),
                                    ],
                          // colors:[Colors.black, Colors.redAccent],
                        ),
                        border: Border.all(),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                      ),
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "${Accounts_bar[index]["Account_Picture"]}"),
                        ),
                      ),
                    ),
                    Text(
                      "${Accounts_bar[index]["Account_Name"]} ",
                      style: TextStyle(
                          color:
                              Accounts_bar[index]["watch_all_story?"] == false
                                  ? Colors.black38
                                  : Colors.black),
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget storys_List() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 3),
      child: ListView.builder(
        itemCount: storys.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(3),
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage("${storys[index]["Account_Picture"]}"),
                      ),
                    ),
                    Text(
                      "${storys[index]["Account_Name"]}",
                      style: const TextStyle(color: Colors.black),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  width: double.infinity,
                  height: 300,
                  color: Colors.black38,
                  child: Image.network(
                    "${storys[index]["Post"]}",
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(5)),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 33,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Transform.scale(
                      scaleX: -1,
                      child: const Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    const Icon(
                      MyFlutterApp.send,
                      color: Colors.black,
                      size: 33,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: const Icon(
                          Icons.bookmark_border,
                          color: Colors.black,
                          size: 33,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(13, 3, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text("${storys[index]["likes"]} likes"),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(13, 3, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "${storys[index]["Account_Name"]} ",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Text(
                          "${storys[index]["Comment"]} ",
                          maxLines: 2,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(13, 3, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text("${storys[index]["time"]}"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
