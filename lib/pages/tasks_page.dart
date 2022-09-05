import 'package:flutter/material.dart';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'dart:math';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final CalendarAgendaController _calendarAgendaControllerAppBar =
      CalendarAgendaController();
  final CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();

  late DateTime _selectedDateAppBBar;
  late DateTime _selectedDateNotAppBBar;

  Random random = new Random();

  @override
  void initState() {
    super.initState();
    _selectedDateAppBBar = DateTime.now();
    _selectedDateNotAppBBar = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F5FF),
      appBar: CalendarAgenda(
        backgroundColor: const Color(0xff262DD3),
        // controller: _calendarAgendaControllerAppBar,
        appbar: true,
        selectedDayPosition: SelectedDayPosition.right,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        weekDay: WeekDay.short,
        fullCalendarScroll: FullCalendarScroll.horizontal,
        fullCalendarDay: WeekDay.short,
        selectedDateColor: Colors.black,
        locale: 'id',
        initialDate: DateTime.now(),
        calendarEventColor: Color(0xff3A49F9),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now().add(Duration(days: 60)),
        events: List.generate(
            100,
            (index) => DateTime.now()
                .subtract(Duration(days: index * random.nextInt(5)))),
        onDateSelected: (date) {
          setState(() {
            _selectedDateAppBBar = date;
          });
        },
        selectedDayLogo: const NetworkImage(
          'https://media.istockphoto.com/photos/dotted-grid-paper-background-texture-seamless-repeat-pattern-picture-id1320330053?b=1&k=20&m=1320330053&s=170667a&w=0&h=XisfN35UnuxAVP_sjq3ujbFDyWPurSfSTYd-Ll09Ncc=',
          scale: 15.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Tasks",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 50,
                    width: 110,
                    color: Color(0xff9C2CF3),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context)
                              .pushNamed('/create', arguments: "Hello");
                        });
                      },
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 9,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "Add Task",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
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
            SizedBox(
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
    );
  }
  Widget buildTasks(){
    return ClipRRect(
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
    );
  }
}
