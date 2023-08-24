import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.name,
    required this.kesibi,
    required this.phone,
    required this.email,
  });

  final String name;
  final String kesibi;
  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: const Text(
          "Тапшырма - 4",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xff056C5C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white, fontSize: 40, fontFamily: 'BrunoAceSC'),
            ),
            Text(
              '$kesibi developer',
              style: const TextStyle(
                  color: Colors.white, fontSize: 15, fontFamily: 'BrunoAceSC'),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.5,
              indent: 70,
              endIndent: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              padding: EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  const Icon(
                    Icons.phone_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Text(
                    '+996 $phone',
                    style:
                        const TextStyle(color: Color(0xff056C5C), fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 90,
                  ),
                  const Icon(
                    Icons.mail_outlined,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    email,
                    style:
                        const TextStyle(fontSize: 20, color: Color(0xff056C5C)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
