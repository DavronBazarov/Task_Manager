import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F5FF),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/ic_menu.png",
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/ic_account.png",
                        height: 22,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Hello Davron!",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    "Have a nice day.",
                    style: TextStyle(color: Color(0xff2E3A59)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "My Tasks",
                              style: TextStyle(
                                  color: Color(0xff2E3A59),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.25,
                          color: const Color(0xffE5EAFC),
                          child: const Center(
                            child: Text(
                              "In-progress",
                              style: TextStyle(
                                color: Color(0xff2E3A59),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.25,
                          color: const Color(0xffE5EAFC),
                          child: const Center(
                            child: Text(
                              "Completed",
                              style: TextStyle(
                                color: Color(0xff2E3A59),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            _cardView(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Progress",
                    style: TextStyle(color: Color(0xff2E3A59), fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                        height: 75,
                        width: double.infinity,
                        color: Colors.white,
                        child: Center(
                          child: ListTile(
                            leading: Image.asset(
                              "assets/task.png",
                              height: 45,
                            ),
                            title: const Text(
                              "Design Changes",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text("2 Days ago"),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_outlined)),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                        height: 75,
                        width: double.infinity,
                        color: Colors.white,
                        child: Center(
                          child: ListTile(
                            leading: Image.asset(
                              "assets/task.png",
                              height: 45,
                            ),
                            title: const Text(
                              "Design Changes",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text("2 Days ago"),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_outlined)),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _index = 0;

  Widget _cardView() {
    return Center(
      child: SizedBox(
        height: 220,
        width: double.infinity, // card height
        child: PageView.builder(
          itemCount: 4,
          controller: PageController(viewportFraction: 0.6),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                            Color(0xff3426D3),
                            Color(0xff262DD3),
                            Color(0xff264CD3),
                            Color(0xff266BD3),
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/Group.png",
                                  height: 40,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Project ${_index + 1}",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              _projectName[_index],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            const Text(
                              "October 20, 2020",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      )),
                ));
          },
        ),
      ),
    );
  }

  final List<String> _projectName = [
    "Front - End Development",
    "Back - End Development",
    "Flutter Development",
    "Phyton Development"
  ];
}
