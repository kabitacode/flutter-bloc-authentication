import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return LoginScreenWeb();
      } else {
        return LoginScreenMobile();
      }
    });
  }
}

class LoginScreenWeb extends StatefulWidget {
  const LoginScreenWeb({super.key});

  @override
  _LoginScreenWebState createState() => _LoginScreenWebState();
}

class _LoginScreenWebState extends State<LoginScreenWeb> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0B192C),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: const Color(0xFFFBD45E),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 50),
                                child: const Text("Recipe App",
                                    style: TextStyle(
                                      color: Color(0xFF383737),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: TextField(
                                  controller: email,
                                  style: const TextStyle(
                                      fontSize: 13, color: Color(0xFF383737)),
                                  decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      labelText: "Email",
                                      labelStyle: const TextStyle(
                                          color: Color(0xFF383737))),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: TextField(
                                  obscureText: !visible,
                                  controller: password,
                                  style: const TextStyle(
                                      color: Color(0xFF383737), fontSize: 13),
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              visible = !visible;
                                            });
                                          },
                                          icon: visible
                                              ? const Icon(Icons.visibility)
                                              : const Icon(
                                                  Icons.visibility_off)),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      labelText: "Password",
                                      labelStyle: const TextStyle(
                                          color: Color(0xFF383737))),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("Don't have an account?",
                                        style: TextStyle(
                                          color: Color(0xFF383737),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          // Navigator.push(context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) {

                                          // }));
                                        },
                                        child: const Text("Register here",
                                            style: TextStyle(
                                              color: Color(0xFF383737),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            )))
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size.fromHeight(45),
                                      backgroundColor: Colors.blue),
                                  onPressed: () {
                                    // Navigator.pushReplacement<void, void>(
                                    //     context,
                                    //     MaterialPageRoute<void>(
                                    //         builder: (BuildContext context) =>
                                    //             HomeScreen()));
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ))),
        ));
  }
}

class LoginScreenMobile extends StatefulWidget {
  const LoginScreenMobile({super.key});

  @override
  _LoginScreenMobileState createState() => _LoginScreenMobileState();
}

class _LoginScreenMobileState extends State<LoginScreenMobile> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0B192C),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: const Text("Recipe App",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: email,
                    style: const TextStyle(fontSize: 13, color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: "Email",
                        labelStyle: const TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextField(
                    obscureText: !visible,
                    controller: password,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            icon: visible
                                ? const Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                  )
                                : const Icon(Icons.visibility_off,
                                    color: Colors.white)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                      TextButton(
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) {
                            //   return RegisterScreen();
                            // }));
                          },
                          child: const Text("Register here",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )))
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                        backgroundColor: Colors.blue),
                    onPressed: () {
                      // Navigator.pushReplacement<void, void>(
                      //     context,
                      //     MaterialPageRoute<void>(
                      //         builder: (BuildContext context) => HomeScreen()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ))
              ],
            ),
          )),
        ));
  }
}
