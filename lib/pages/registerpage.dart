import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sneakertowndemo/elements/bottombar.dart';
import 'package:sneakertowndemo/pages/catalogpage/HomePage.dart';
import 'package:sneakertowndemo/pages/loginpage.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});
   final String apiUrl = "http://localhost:8000/api/register/";
   TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

   Future<void> register(BuildContext context) async {
     try {
       final response = await http.post(
         Uri.parse(apiUrl),
         body: {
           'name': nameController.text,
           'email': emailController.text,
           'password': passwordController.text,
         },
       );

       if (response.statusCode == 200) {
         // If the server returns a 200 OK response, you can handle the login success
         // For example, you can navigate to another screen.
         // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
         print('register successful!');
       }
       if(response.statusCode ==200){
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
       }
       else {
         // If the server did not return a 200 OK response,
         // throw an exception or display an error message.
         print('register failed');
       }
     } catch (e) {
       // Exception occurred, login failed
       print('register failed: $e');
     }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: 
      
      SafeArea(
        child: Column(
          children: [
            Image.asset('img/loginimage.jpeg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 600,
                color: Colors.white,
                  child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
      
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )
                      ),
                ),
          
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 600,
                color: Colors.white,
                      child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
      
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )
                      ),
                ),
          
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 600,
                color: Colors.white,
                     child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
      
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )
                      ),
                ),
          
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                // Call the login function when the "Login" container is tapped
                register(context);
              },

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 600,
                  color: Colors.black,
                  child: Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            
             
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Text('You have accounts?', style: TextStyle(color: Colors.black),),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text('Login', style: TextStyle(color: Colors.green[300]),)),
            
                ],
              ),
            )
         
          ],
        ),
      ),
      bottomNavigationBar: bottombar(),
    );
  }
}






