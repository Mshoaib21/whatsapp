import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            bottom: const TabBar(
                tabs:[
                  Tab(child: Icon(Icons.camera_alt_outlined),
                  ),
                  Tab(child:Text("Charts"),
                  ),
                  Tab(child:Text("Status"),
                  ),
                  Tab(child:Text("Calls"),
                  ),
            ]
            ),
            actions: [
              Icon(Icons.search_outlined),
              SizedBox(width: 10),

              PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context,) => [
                PopupMenuItem(
                    value:1,
                    child: Text("New Group")),
                    PopupMenuItem(
                        value:1,
                        child: Text("Setting")),
                    PopupMenuItem(
                        value:1,
                        child: Text("Logout")),

              ]),
            ],
          ),
          body: TabBarView(children: [
           const  Text("Camera"),
            ListView.builder(
                itemBuilder: (context, index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                    title: Text("M Shoaib"),
                    subtitle: Text("My Name "),
                    trailing: Text("12: 10 AM"),
                  );
                }
            ),
            ListView.builder(
                itemBuilder: (context, index){
                  if(index== 0){

                  }
                  else{

                  }
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.greenAccent,
                                width: 3
                              )
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            ),
                          ),
                          title: Text("M Shoaib"),
                          subtitle: Text("10: 10 AM"),
                        ),
                      ],
                    ),
                  );
                }
            ),
            ListView.builder(
              itemCount: 14,
                itemBuilder: (context, index){
                  return  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                    title:const  Text("M Shoaib"),
                    subtitle:  Text(index /1 == 0 ? "Audio call ": "You have video call"),
                    trailing: Icon(index /1 == 0 ? Icons.phone: Icons.video_call),
                  );
                }
            ),
          ]),
        ));
  }
}
