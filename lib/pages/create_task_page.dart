import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({Key? key}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9C2CF3),
      body: SafeArea(
          child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 26,
                  )),
              const Text(
                "Create task",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 26,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                TextField(
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  autocorrect: true,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      )),
                ),
                TextField(
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  autocorrect: true,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: "Data",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.67,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Start Time",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffBFC8E8),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("01:22 pm",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                        Column(
                          children: const [
                            Text(
                              "End Time",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffBFC8E8),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("03:20 pm",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xffBFC8E8),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
