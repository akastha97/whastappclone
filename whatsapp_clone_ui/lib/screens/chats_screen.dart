import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/custom_components/custombutton.dart';
import 'package:whatsapp_clone_ui/models/messages_model.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  TextEditingController _searchController = TextEditingController();
  int currentIndex = 3;

  void searchMessage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: displayBottomNavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const CustomButton(
          buttonText: "Edit",
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "lib/assets/camera.png",
                color: Colors.blueAccent,
                height: 24,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "lib/assets/edit.png",
                color: Colors.blueAccent,
                height: 24,
              ))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text("Chats",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [displaySearchField(), displayFilterIcon()],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomButton(
                        buttonText: "Broadcast Lists",
                      ),
                      CustomButton(
                        buttonText: "New Group",
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
          displayMessagesListview(),
        ],
      ),
    );
  }

  IconButton displayFilterIcon() {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.filter_list,
          color: Colors.blueAccent,
        ));
  }

  BottomNavigationBar displayBottomNavBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey.shade200,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "lib/assets/updates.png",
              ),
              size: 24,
            ),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/assets/calls.png"),
              size: 24,
            ),
            label: "Calls",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "lib/assets/communities.png",
              ),
              size: 26,
            ),
            label: "Communities",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/assets/chats.png"),
              size: 24,
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/assets/settings.png"),
              size: 24,
            ),
            label: "Settings",
          ),
        ]);
  }

  SliverList displayMessagesListview() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        MessagesModel.messages[index].imagePath,
                        fit: BoxFit.fill,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  title: Text(
                    MessagesModel.messages[index].contactName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Text(
                    MessagesModel.messages[index].messageBody,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  trailing: Text(
                    MessagesModel.messages[index].contactTime,
                    style: const TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ),
              const Divider(
                thickness: 0,
                height: 0,
              ),
            ],
          );
        },
        childCount: 10, // Change this to the number of items you have
      ),
    );
  }

  Expanded displaySearchField() {
    return Expanded(
      child: Container(
        height: 40,
        padding: EdgeInsets.only(left: 40),
        child: TextField(
          maxLines: null,
          controller: _searchController,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
              isDense: true,
              hintText: "Search",
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey.shade200,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(8))),
        ),
      ),
    );
  }
}
