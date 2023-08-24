import 'package:card_app/pages/my_home_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final _nameCtl = TextEditingController();
  final _kesibiCtl = TextEditingController();
  final _nomeriCtl = TextEditingController();
  final _emailCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameCtl,
                  cursorColor: Colors.grey,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(),
                    hintText: 'Аты-жөнүңүздү жазыңыз',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Сураныч, боштукту толтуруңуз';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: _kesibiCtl,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Кесибиңиз',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Сураныч, боштукту толтуруңуз';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: _nomeriCtl,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Телефон номериңиз',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Сураныч, боштукту толтуруңуз';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: _emailCtl,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Еmail дарегиңиз',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Сураныч, боштукту толтуруңуз';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return (MyHomePage(
                                name: _nameCtl.text,
                                kesibi: _kesibiCtl.text,
                                phone: _nomeriCtl.text,
                                email: _emailCtl.text,
                              ));
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: const Text(
                      'Сактооо',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
