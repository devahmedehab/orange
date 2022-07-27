import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange/repositories/component.dart';

class RequestView extends StatefulWidget {
  @override
  State<RequestView> createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestView> {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var locationController = TextEditingController();
  var descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
      'Item5',
    ];
    String selectedItem = 'Item1';
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * .1),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .6, top: size.height * .28),
              child: Image(
                image: AssetImage(
                  'assets/images/Icon material-p (2).png',
                ),
                height: size.width * .5,
                width: size.height * .5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * .13),
              child: Image(
                image: AssetImage(
                  'assets/images/Icon material-p (2).png',
                ),
                height: size.width * .5,
                width: size.height * .5,
              ),
            ),
            Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      //Form Border
                      Center(
                        child: Container(
                          height: size.height * 2.5,
                          width: size.width * .5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: HexColor('#492F24'), width: 2),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: size.height * .08),
                            child: Text(
                              'Request',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.brown[800]),
                            )),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .00001),
                          child: Image(
                            image: AssetImage('assets/images/requestDog.png'),
                            height: 600,
                            width: 600,
                          ),
                        ),
                      ),
                      //name form field
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .7),
                          child: defaultFormField(
                            label: 'Name',
                            height: size.height * .1,
                            width: size.width * .4,
                            controller: nameController,
                            type: TextInputType.name,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'First Name Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .84),
                          child: myDropdown(
                              height:  size.height * .1,
                              width:  size.width * .4,
                              dropItems: items,
                            selectedItem: selectedItem,
                            hintText: 'Category'
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .98),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              myDropdown(
                                  height:  size.height * .1,
                                  width:  size.width * .192,
                                  dropItems: items,
                                  selectedItem: selectedItem,
                                  hintText: 'Year'
                              ),
                              SizedBox(width: 20,),
                              myDropdown(
                                  height:  size.height * .1,
                                  width:  size.width * .192,
                                  dropItems: items,
                                  selectedItem: selectedItem,
                                  hintText: 'Months'
                              ),

                            ],
                          )
                        ),
                      ),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: size.height *1.1),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                myDropdown(
                                    height:  size.height * .1,
                                    width:  size.width * .192,
                                    dropItems: items,
                                    selectedItem: selectedItem,
                                    hintText: 'Size'
                                ),
                                SizedBox(width: 20,),
                                myDropdown(
                                    height:  size.height * .1,
                                    width:  size.width * .192,
                                    dropItems: items,
                                    selectedItem: selectedItem,
                                    hintText: 'Bread'
                                ),

                              ],
                            )
                        ),
                      ),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: size.height *1.22),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                myDropdown(
                                    height:  size.height * .1,
                                    width:  size.width * .192,
                                    dropItems: items,
                                    selectedItem: selectedItem,
                                    hintText: 'Gender'
                                ),
                                SizedBox(width: 20,),
                                myDropdown(
                                    height:  size.height * .1,
                                    width:  size.width * .192,
                                    dropItems: items,
                                    selectedItem: selectedItem,
                                    hintText: 'Bread'
                                ),

                              ],
                            )
                        ),
                      ),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: size.height *1.34),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                myDropdown(
                                    height:  size.height * .1,
                                    width:  size.width * .192,
                                    dropItems: items,
                                    selectedItem: selectedItem,
                                    hintText: 'Hair Length'
                                ),
                                SizedBox(width: 20,),
                                myDropdown(
                                    height:  size.height * .1,
                                    width:  size.width * .192,
                                    dropItems: items,
                                    selectedItem: selectedItem,
                                    hintText: 'Care & behavior'
                                ),

                              ],
                            )
                        ),
                      ),
                      //Detect your current location
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: size.height *1.48,right: size.width*.22),
                            child:Text(
                              'Detect your current location',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.brown[800]),
                            )
                        ),
                      ),
                      //Location
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height *1.53),
                          child: defaultFormField(
                            suffix: Icons.location_on,
                            textColor: HexColor('#A69994'),
                            label: 'Location',
                            height: size.height * .1,
                            width: size.width * .4,
                            controller: locationController,
                            type: TextInputType.name,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'Location Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      //phone
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height *1.65),
                          child: defaultFormField(
                            textColor: HexColor('#A69994'),
                            label: 'Phone Number',
                            height: size.height * .1,
                            width: size.width * .4,
                            controller: phoneController,
                            type: TextInputType.name,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'Phone number Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      //Description
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height *1.775),
                          child: defaultFormField(
                            textColor: HexColor('#A69994'),
                            label: 'Description',
                            height: size.height * .32,
                            width: size.width * .4,
                            controller: descriptionController,
                            type: TextInputType.name,
                            validate: () => (String? value) {
                              if (value!.isEmpty) {
                                return 'Phone number Must not be Empty';
                              }
                            },
                          ),
                        ),
                      ),
                      //text vaccinated (up to date)
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: size.height *2.12,right: size.width*.25),
                            child:Text(
                              'vaccinated (up to date)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.brown[800]),
                            )
                        ),
                      ),
                      //Send Button
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top:size.height*2.25),
                            child: myDefaultButton(
                                height: size.height*.11,
                                width: size.width*.4,
                                onPressed: (){},
                                text: 'Send'
                            )
                        ),
                      ),







                    ],
                  ),
                ),
                SizedBox(height: 100,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
