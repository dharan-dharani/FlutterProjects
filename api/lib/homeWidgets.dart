import 'package:api/apiServices.dart';
import 'package:api/userDetails.dart';
import 'package:flutter/material.dart';

class HomeWidgets extends StatefulWidget{
  const HomeWidgets({super.key});
  @override
  Home createState()=> Home();
}
class Home extends State<HomeWidgets>
{
  @override
  void initState(){
    super.initState();
   Services();
  }
  List<UserDetails> Users=[];
  @override
  Future<void> Services()async{
    final out=await ApiServices.apiconnection();
    setState(() {
      Users=out;
    });
  }
  Widget build(BuildContext context)
  {

    return Scaffold(
      body: ListView.builder(
          itemCount: Users.length,
          itemBuilder: (context,index)
      {
        final User=Users[index];
        final email=User.email;
        final phone=User.phone;
        final gender=User.gender;

        return ListTile(
          leading: Text('${index+1}'),

          title: Text(email),
          subtitle: Text(gender),

        );
      }),
    );
  }
}