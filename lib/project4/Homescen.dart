import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Homescene extends StatelessWidget {
  Homescene({super.key});

  final CollectionReference information =
      FirebaseFirestore.instance.collection('information');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'personal information',
        ),
        backgroundColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: StreamBuilder(
        stream: information.orderBy('name').snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final infoshap = snapshot.data.docs[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                   
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child:Row(
                      
                     mainAxisAlignment: MainAxisAlignment.start,
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar( 
                          radius: 31,
                          backgroundColor: Colors.black,
                          child: 
                          Text(infoshap['state']),
                          
                          ),
                        
                       
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 25),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                                      //     crossAxisAlignment: CrossAxisAlignment.center,

                         children:

                          [
                            Text('fathername:'),
                            Text(infoshap ['fathername'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('mothername:'),
                          ),
                         Text(infoshap['mothername'],style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                         Text(infoshap['phone'].toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)],
                       
                       ),
                     ),
                     Row(
                      children: [
                       
                       Text(infoshap['name'],style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)
                     
                  //   IconButton(onPressed: (){}, icon:Icon(icon:))
                      ],
                     )
                      ],
                      
                    
                    ),
                    
                  ),
                );
              },
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
