import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'delvin',
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: AppBar(
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.search),
                      labelText: 'کلیک کنید',
                      hintText: 'جستجو در آگهی ها',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0),
                      )
                  ),
                  onChanged: (value) {
                  },
                ),
              ),
            ),
          ),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                posts(),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                dos(),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                dos(),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                dos(),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                dos(),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                dos(),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                dos(),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                dos(),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),

              ],
            ),
          ),
          //bottomNavigationBar: BottomNavigationBar(),
        ));
  }
}

class posts extends StatelessWidget{
  const posts({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Row(
        children: [
          SS(),
          SS(),
          SS(),
          SS(),
          SS(),
          SS(),
        ],
      ),
    );
  }
}

class SS extends StatelessWidget {
  const SS ({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(Icons.ac_unit_sharp),
          Text('item'),
        ],
      ),
    );
  }
}

class dos extends StatelessWidget {
  const dos ({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(5.0),
        height: 150,
        child: Row(
          children: [
            Image.network(
                'https://picsum.photos/250?image=75'

            ),
            const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'آگهی ها',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0
                      ),

                    ),
                    Spacer(),
                    Text(
                      'قیمت آگهی',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'سال پیش',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AAA())
        );
      },
    );
  }
}

class AAA extends StatelessWidget {
  const AAA ({super.key});


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Image.network(
                'https://picsum.photos/250?image=887',
              ),
              Column(
                children: [
                  Text('عنوان آگهی'),

                ],
              )
            ],

          ),
        ));
  }
}