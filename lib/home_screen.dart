import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  Widget listTile({required IconData icon, required String title}){
    return ListTile(
      leading: Icon(icon, size: 32,),
      title: Text(title, style: TextStyle(color: Colors.black26),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 88, 177, 246),
          child: ListView(

            children: [
              
           DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,radius: 43,),
                  SizedBox(
                    height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome guest"),
                        SizedBox(height: 7,), 
                        Container(
                          height: 30,
                          child: MaterialButton(
                            onPressed: () {
                            }, 
                            child: Text("Login"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                width: 2,
                                )
                              ),
                            ),
                            
                        ),
                      ]
                    )

                  ]
                  ),
                  ),
                listTile(icon: Icons.home_outlined, title: "Home"),
                 listTile(icon: Icons.navigate_before, title: "Back"),
            ],
          ),
        ),
        
      ),
      appBar: AppBar(
        backgroundColor: Color(0x9c9696),
        
      ),
    );
  }
}
