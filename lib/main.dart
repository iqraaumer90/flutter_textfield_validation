import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? groupValue;
  int? courseValue;

  final formKey = GlobalKey<FormState>();

  void _submit() {
    formKey.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img.jpeg'),
            fit: BoxFit.fill,
          ),
        ),

        child: Padding(
          padding: EdgeInsets.only(top: 120, left: 350, right: 350),

          child: Form(
            key: formKey,

            child: Column(
              children: [
                SizedBox(height: 8),

                // Heading
                Text(
                  '𝙎𝙩𝙪𝙙𝙚𝙣𝙩 𝙍𝙚𝙜𝙞𝙨𝙩𝙧𝙖𝙩𝙞𝙤𝙣',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Color(0xFF263B52),
                  ),
                ),

                SizedBox(height: 8),

                // Lines + Heart
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 35, height: 1, color: Colors.black),

                    SizedBox(width: 8),

                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.pink,
                      size: 16,
                    ),

                    SizedBox(width: 8),

                    Container(width: 35, height: 1, color: Colors.black),
                  ],
                ),

                SizedBox(height: 8),

                // Subtitle
                Text(
                  'Please fill in the details below to register.',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 68, 68, 68),
                    fontSize: 15,
                  ),
                ),

                SizedBox(height: 15),

                // Student Name + Roll No TextFormFields
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            margin: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFEEF2),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: const Icon(
                              Icons.person_outline,
                              color: Color(0xFFE45B86),
                              size: 25,
                            ),
                          ),

                          labelText: 'Student Name',
                          hintText: 'Enter your full name',

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Name is required';
                          }
                          return null;
                        },
                      ),
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            margin: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: Color(0xFFF2ECFF),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Icon(
                              Icons.tag,
                              color: Color(0xFF8865D8),
                              size: 27,
                            ),
                          ),

                          labelText: 'Roll No',
                          hintText: 'Enter your roll number',

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Roll No is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            margin: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: Color(0xFFF5EACB),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Icon(
                              Icons.email_outlined,
                              color: Colors.amber,
                            ),
                          ),

                          labelText: 'Email',
                          hintText: 'Enter your email address',

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }

                          return null;
                        },
                      ),
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            margin: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: Color(0xFFE7EFDC),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Icon(
                              Icons.phone_outlined,
                              color: Colors.green,
                            ),
                          ),

                          labelText: 'Phone Number',
                          hintText: 'Enter your phone number',

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone Number is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                // City
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Color(0xFFE4F1F8),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Icon(
                        Icons.location_city_outlined,
                        color: Colors.blue,
                      ),
                    ),

                    labelText: 'City',
                    hintText: 'Enter your city',

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'City is required';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 13),

                Row(
                  children: [
                    // Gender Container
                    Container(
                      width: 300,
                      height: 135,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF1F5),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),

                          // Gender Heading
                          Row(
                            children: [
                              SizedBox(width: 20),

                              Container(
                                width: 35,
                                height: 1,
                                color: Color(0xFFF49DB9),
                              ),

                              SizedBox(width: 7),

                              Icon(
                                Icons.people_outline_outlined,
                                color: Colors.pink,
                                size: 18,
                              ),

                              SizedBox(width: 4),

                              Text(
                                'Gender',
                                style: TextStyle(
                                  color: Colors.pink.shade300,
                                  fontSize: 16,
                                ),
                              ),

                              SizedBox(width: 6),

                              Container(
                                width: 30,
                                height: 1,
                                color: Color(0xFFF4A0B8),
                              ),
                            ],
                          ),

                          SizedBox(height: 3),

                          // Radio Buttons
                          RadioGroup<int>(
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value;
                              });
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 08),
                                    Radio(value: 0),
                                    SizedBox(width: 06),
                                    Text('Male'),
                                  ],
                                ),

                                Row(
                                  children: [
                                    SizedBox(width: 08),
                                    Radio(value: 1),
                                    SizedBox(width: 06),
                                    Text('Female'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 5),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 1,
                          height: 35,
                          color: Color(0xFFF4A0B8),
                        ),

                        SizedBox(height: 3),

                        Icon(Icons.favorite, color: Colors.pink, size: 20),

                        SizedBox(height: 5),

                        Container(
                          width: 1,
                          height: 35,
                          color: const Color(0xFFF4A0B8),
                        ),
                      ],
                    ),

                    SizedBox(width: 10),

                    // Course Container
                    Container(
                      width: 300,
                      height: 135,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),

                          // Gender Heading
                          Row(
                            children: [
                              SizedBox(width: 30),

                              Container(
                                width: 35,
                                height: 1,
                                color: const Color.fromARGB(255, 226, 163, 237),
                              ),

                              SizedBox(width: 7),

                              Icon(
                                Icons.school_outlined,
                                color: Colors.deepPurple,
                                size: 18,
                              ),

                              SizedBox(width: 4),

                              Text(
                                'Course',
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    180,
                                    89,
                                    196,
                                  ),
                                  fontSize: 16,
                                ),
                              ),

                              SizedBox(width: 6),

                              Container(
                                width: 30,
                                height: 1,
                                color: Color.fromARGB(255, 226, 163, 237),
                              ),
                            ],
                          ),

                          SizedBox(height: 5),

                          RadioGroup<int>(
                            groupValue: courseValue,
                            onChanged: (value) {
                              setState(() {
                                courseValue = value;
                              });
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 08),
                                    Radio(value: 2),
                                    SizedBox(width: 05),
                                    Text('Computer Science'),
                                  ],
                                ),

                                Row(
                                  children: [
                                    SizedBox(width: 08),
                                    Radio(value: 3),
                                    SizedBox(width: 05),
                                    Text('Information Technology'),
                                  ],
                                ),

                                Row(
                                  children: [
                                    SizedBox(width: 08),
                                    Radio(value: 4),
                                    SizedBox(width: 05),
                                    Text('Other'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                    ),

                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 16),
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
