import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class DefaultPage extends StatefulWidget {
  DefaultPage({Key key}) : super(key: key);

  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  String level = "Pro";
  @override
  Widget build(BuildContext context) {
    print("duyduy build DefaultPage");
    return Center(
      child: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.all(24),
              child: (Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Flexible(
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'First Name'),

                            // maxLength: 10,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Last Name'),
                            // maxLength: 10,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Flexible(
                          child: DateTimeFormField(
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Colors.black45),
                              errorStyle: TextStyle(color: Colors.redAccent),
                              // border: OutlineInputBorder(),
                              // contentPadding:
                              //     EdgeInsets.fromLTRB(0, 43.0, 0, 0),
                              suffixIcon: Icon(Icons.event_note),
                              labelText: 'D.O.B',
                            ),
                            mode: DateTimeFieldPickerMode.date,
                            autovalidateMode: AutovalidateMode.always,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                            child: DropdownButtonFormField(
                          hint: const Text("Select Gender"),
                          items: ["Male", "Female", "Others"]
                              .map((label) => DropdownMenuItem(
                                    child: Text(label.toString()),
                                    value: label,
                                  ))
                              .toList(),
                          onChanged: (String value) {},
                        ))
                      ],
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Email Address'),
                      keyboardType: TextInputType.emailAddress,
                      // maxLength: 10,
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Mobile Number'),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      maxLines: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Flexible(
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'City'),
                            // maxLength: 10,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'State'),
                            // maxLength: 10,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Flexible(
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Postal Code'),
                            keyboardType: TextInputType.number,
                            // maxLength: 10,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Country'),
                            // maxLength: 10,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: "Beginner",
                                  groupValue: level,
                                  onChanged: (index) {
                                    setState(() {
                                      level = index.toString();
                                    });
                                  }),
                              const Expanded(
                                child: Text('Beginner'),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: "Amateur",
                                  groupValue: level,
                                  onChanged: (index) {
                                    setState(() {
                                      level = index.toString();
                                    });
                                  }),
                              const Expanded(
                                child: Text('Amateur'),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: "Pro",
                                  groupValue: level,
                                  onChanged: (index) {
                                    setState(() {
                                      level = index.toString();
                                    });
                                  }),
                              const Expanded(
                                child: Text('Pro'),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 300.0,
                      color: Colors.deepPurple,
                      child: const Text(
                        "Submit",
                        style: (TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                      ),
                      textColor: Colors.white,
                    )
                  ],
                ),
              )))),
    );
  }
}
