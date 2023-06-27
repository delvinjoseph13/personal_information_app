import 'package:flutter/material.dart';

class Addinfo extends StatelessWidget {
  const Addinfo({super.key});

  @override
  Widget build(BuildContext context) {
    final personstate = ['kerala', 'karnataka'];
    String? selectedstate;
    return Scaffold(
        appBar: AppBar(
          title: Text('add info'),
          backgroundColor: Colors.black,
        ),
        body: 
        ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) => 
         Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('name')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('father name')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text("Mother's name")),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Phone number')),
                ),
               ),
              DropdownButtonFormField(
                  items: personstate
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    selectedstate=val;
                  }),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.red),minimumSize: MaterialStatePropertyAll(Size(double.infinity, 60))),onPressed: (){}, child: Text('submit')),
                  )
            ],
          ),
        ));
  }
}
