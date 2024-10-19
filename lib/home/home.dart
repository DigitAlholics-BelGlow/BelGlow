import 'package:belglow/home/initial.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({
    super.key,
  });
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: [
              ClipPath(
                clipper: CurvedClipper(),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                      AssetImage('assets/perfumes.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: CurvedClipper(),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFFE1251B)
                            .withOpacity(0.6),
                        const Color(0xFF2E1A47)
                            .withOpacity(1),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 150),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.7),
                                spreadRadius:
                                3,
                                blurRadius: 10,
                                offset:
                                Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 100,
                            backgroundImage: AssetImage(
                                'assets/belglow_logo.png'),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Welcome to your Virtual\nPerfume Advisor!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      const Text(
                        "I'm here to help you highlight your\nunique essence and find the perfect\nfragrance that resonates with you.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color.fromRGBO(41, 41, 41, 0.6),
                        ),
                      ),
                      const SizedBox(height: 65),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Initial(),
                              ));
                          // Acción a realizar al presionar el botón
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 100),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/lebel.png',
                              height: 30,
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 5,
                              width:
                              70,
                              color: const Color.fromRGBO(
                                  46, 26, 71, 1),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/esika.png',
                              height: 25,
                            ),
                            const SizedBox(height: 30),
                            Container(
                              height: 5,
                              width: 70,
                              color: const Color.fromRGBO(
                                  225, 37, 27, 1),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/cyzone.png',
                              height: 30,
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 5,
                              width: 70,
                              color: const Color.fromRGBO(
                                  169, 0, 96, 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(-45, size.height * 0.2);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width + 40, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}