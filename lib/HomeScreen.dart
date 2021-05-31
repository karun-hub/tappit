import 'package:flutter/material.dart';
import 'package:tappit/CustomAppbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 1;
  String value;
  String dropdownValue = '20';
  String matter;
  String dropdownMatter = 'Tommorow';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter <= 1) {
        setState(() {});
      } else {
        _counter--;
      }
    });
  }

  DateTime _pickedDate;

  @override
  void initState() {
    super.initState();
    _pickedDate = DateTime.now();
  }

  Widget build(BuildContext context) {
    String name;
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "DELIVER ONCE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.teal[200], width: 5)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 180,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "SUBSCRIBE",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Colors.teal[200],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.teal[200], width: 5)),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomAppbar(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal[200],
              ),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/img.jpg')),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
                                Text(
                                  "Tata Tea Gold (1Kg)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3
                                      .merge(TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black)),
                                ),
                              ])),
                          Row(
                            children: [
                              Text(
                                r"₹",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "531",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                r"₹",
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "625",
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "     .1pkt",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.shopping_bag_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Quantity",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "per day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: Colors.teal[200], width: 5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    _incrementCounter();
                                  },
                                  child: Icon(Icons.add)),
                              SizedBox(
                                width: 10,
                              ),
                              Text(_counter.toString()),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    _decrementCounter();
                                  },
                                  child: Icon(Icons.remove))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black26,
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child:
                  ListView(physics: NeverScrollableScrollPhysics(), children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.repeat,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Repeat",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "DAILY",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.teal[200]),
                            ),
                          ],
                        ),
                        Container(
                          height: 45,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              RoundBtn(
                                day: 'M',
                              ),
                              RoundBtn(
                                day: 'T',
                              ),
                              RoundBtn(
                                day: 'W',
                              ),
                              RoundBtn(
                                day: 'T',
                              ),
                              RoundBtn(
                                day: 'F',
                              ),
                              RoundBtn(
                                day: 'S',
                              ),
                              RoundBtn(
                                day: 'S',
                              )
                            ],
                          ),
                        ),
                      ],
                    ))
              ]),
            ),
            Divider(
              color: Colors.black26,
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child:
                  ListView(physics: NeverScrollableScrollPhysics(), children: [
                Row(
                  children: [
                    Icon(
                      Icons.replay_5,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Recharge / Top Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ],
                ),
                DropdownMenuItem(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_forward_ios),
                    isExpanded: true,
                    iconSize: 15,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['10', '20', '30']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            value + " Deliveries",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ]),
            ),
            Divider(
              color: Colors.black26,
              height: 5,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Start Date",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _pickedDate == DateTime.now()
                                ? "Tomorrow"
                                : " ${_pickedDate.day}: ${_pickedDate.month}: ${_pickedDate.year}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                              onTap: () {
                                _pickDate();
                              },
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ))
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  _pickDate() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
      initialDate: _pickedDate,
    );
    if (date != null) {
      setState(() {
        _pickedDate = date;
      });
    }
  }
}

class RoundBtn extends StatelessWidget {
  const RoundBtn({Key key, this.day}) : super(key: key);
  final String day;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.teal[200]),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Colors.teal[200])))),
        child: Text(day),
      ),
    );
  }
}
