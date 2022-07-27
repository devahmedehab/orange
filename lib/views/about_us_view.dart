import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange/repositories/component.dart';
import '../view_models/about_us_cubit.dart';


class AboutUSView extends StatefulWidget {
  @override
  _AboutUSViewState createState() => _AboutUSViewState();
}

class _AboutUSViewState extends State<AboutUSView> {
  @override
  Widget build(BuildContext context) {
    var titleController=TextEditingController();
    var bodyController=TextEditingController();

    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return BlocConsumer<AboutUsCubit,AboutUsState>(
      listener: (context,state){
        if(state is AboutUsSuccessState){
          var model = AboutUsCubit.get(context).aboutsModel;

          titleController.text = model.title as String;
          bodyController.text = model.body as String;

        }
      },
       builder: (context,state){
         return Column(
           children: [
             Stack(
               children: [
                 Container(
                   height: size.height * 0.7,
                   width: size.width,
                   decoration: BoxDecoration(
                       gradient: LinearGradient(
                           begin: Alignment.topRight,
                           end: Alignment.topLeft,
                           colors: [
                             HexColor('#180701'),
                             HexColor('#654538'),
                           ])),
                 ),
                 Row(
                   children: [
                     Column(
                       children: [
                         Padding(
                           padding: EdgeInsets.only(left: size.width * .05),
                           child: Stack(
                             children: [
                                Padding(
                                 padding: EdgeInsets.all(15.0),
                                 child: Text(
                                   titleController.text,
                                   style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 40,
                                       color: Colors.white),
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(
                                     top: size.height * .2, left: size.width * .01),
                                 child: Container(
                                   width: size.width * .26,
                                   height: size.height * .6,
                                   child:  Text(
                                     bodyController.text ,
                                     style: TextStyle(
                                       fontSize: 18,
                                       color: Colors.white,
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(
                                   top: size.height * .49,
                                   left: size.width * .01,
                                 ),
                                 child: myDefaultButton2(
                                     onPressed: () {},
                                     color: Colors.white,
                                     textColor: Colors.black,
                                     text: 'Help Them',
                                     width: size.width * .25,
                                     hight: size.height * .1,
                                     icon: true),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                     Spacer(),
                     Padding(
                       padding: EdgeInsets.only(
                         bottom: size.height * .2,
                         right: size.width * .1,
                       ),
                       child: Image(
                         image: AssetImage('assets/images/image1.png'),
                         height: 400,
                         width: 400,
                       ),
                     ),
                   ],
                 ),
               ],
             ),
             Stack(
               children: [
                 Container(
                   height: size.height * 0.7,
                   width: size.width,
                   color: Colors.white,
                 ),
                 Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(
                         bottom: size.height * .2,
                         right: size.width * .1,
                       ),
                       child: const Image(
                         image: AssetImage('assets/images/image2.png'),
                         height: 400,
                         width: 400,
                       ),
                     ),
                     const Spacer(),
                     Padding(
                       padding:  EdgeInsets.symmetric(vertical: size.width*.1,horizontal: size.height*.1),
                       child: Column(
                         children: [
                           Padding(
                             padding: EdgeInsets.only(left: size.width * .05),
                             child: Stack(
                               children: [
                                 const Padding(
                                   padding: EdgeInsets.all(15.0),
                                   child: Text(
                                     'About Petology ',
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 40,
                                         color: Colors.black),
                                   ),
                                 ),
                                 Padding(
                                   padding: EdgeInsets.only(
                                       top: size.height * .2, left: size.width * .01),
                                   child: Container(
                                     width: size.width * .26,
                                     height: size.height * .6,
                                     child: const Text(
                                       'Lorem ipsum dolor sit amet,'
                                           ' consetetur sadipscing elitr,'
                                           ' sed diam nonumy eirmod tempor invidunt'
                                           ' ut labore et dolore magna aliquyam erat, '
                                           'sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea.',
                                       style: TextStyle(
                                         fontSize: 18,
                                         color: Colors.black,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),


                   ],
                 ),
               ],
             ),
         /*    Container(
               width: size.width,
               height: size.height*.9,
               color: Colors.white,
               child: Column(
                 children: [
                   const Text(
                     'Our friends who looking for a house ',
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 40,
                         color: Colors.black
                     ),
                   ),
                   Container(
                     width: size.width*.2,
                     height: size.height*.3,
                     child: Card(
                       color: Color(0xffeaeaea),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 5,),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             myDefaultButton(
                                 onPressed: (){
                                   AboutUsCubit.get(context).changeScreen(6);
                                 },
                               text: 'See more'



                             )

                           ],
                         ),
                       )
                     ),
                   )

                 ],
               ),
             ),*/


           ],
         );
       },
    );
  }
}
//AboutUsCubit.get(context).changeScreen(6);

class AdaptionContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          'How you feed Your Dog?',
          style: TextStyle(
              color: HexColor("492F24"),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "As a general rule, puppies and young dogs burn more calories, so they need a greater quantity of food that is higher in protein and fat. Older, less active dogs require fewer calories to remain healthy.\n\n"
              "Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to Natural Health for Dogs and Cats, believes the most reliable approach is to feed what seems to be a reasonable amount and monitor his body weight.\n\n"
              "You should be able to feel your pet’s ribs easily as you slide your hand over his sides,” Pitcairn says. “If you can’t, he’s probably too heavy, so begin to feed a smaller quantity.\n\n"
              "If you’re using a commercial pet food, beware of the “feeding guidelines” on the bag or box.It lists different weights and the corresponding amount of food to feed your dog to maintain that weight,\nand should be used only as a rough guideline.\n\n"
              "Starting at the low end of the suggested guidelines and then monitoring your dog for hunger and \nbody condition is a good way to proceed.\nDifferent Portions for Different Pooches Though it may sound counterintuitive, as a general rule, \n\n ",
          style: TextStyle(
            color: HexColor("492F24"),
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
