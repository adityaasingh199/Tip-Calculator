import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => homePageState();
}

class homePageState extends State<homePage> {
  TextEditingController billController = TextEditingController();
  TextEditingController percentController = TextEditingController();
  TextEditingController rupeeController = TextEditingController();

  int split = 2;
  num tp = 0;
  num tb = 0;
  num tipPercent = 0;
  num tipPercentCtrl = 0;
  num tipRupee = 0;
  num tip = 0;
  bool tenP = false;
  bool fifteenP = false;
  bool twentyP = false;
  bool inPercent = true;
  bool inRupee = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 11, left: 15, right: 15, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("asset/image/hat.png"), height: 53),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 58,
                      child: Stack(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Mr ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'TIP',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "PoppinsBold",
                                      fontSize: 30),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Calculator",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                ///$000 Container

                Container(
                  height: 230,
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Total p/person",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "₹",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black)),
                        TextSpan(
                          text: "${tp.toStringAsFixed(1)}",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 47,
                              color: Colors.black),
                        )
                      ])),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total bill",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "₹",
                                    style: TextStyle(
                                      color: Color(0xff01C9BE),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    )),
                                TextSpan(
                                    text: "$tb",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Color(0xff01C9BE),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ))
                              ])),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Total tip",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "₹",
                                    style: TextStyle(
                                      color: Color(0xff01C9BE),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    )),
                                TextSpan(
                                    text: "$tip",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xff01C9BE),
                                    ))
                              ]))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                ///Enter Your Bill

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Enter",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        Text(
                          "your bill",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      //padding: EdgeInsets.only(left: 10,top: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 1)
                          ]),
                      child: TextField(
                        controller: billController,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.black),
                        keyboardType: TextInputType.numberWithOptions(decimal: true ),
                        cursorColor: Colors.black,
                        cursorHeight: 25,
                        maxLength: 10,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'^\d*\d.?\d*$'))
                        ],
                        enableInteractiveSelection: false,
                        decoration: InputDecoration(
                          counterText: "",
                            labelText: "Enter Amount",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: "Poppins"),
                            prefixText: "₹",
                            prefixStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never),

                        /// Disable long-press zoom effect
                        magnifierConfiguration:
                            TextMagnifierConfiguration.disabled,

                        /// Disable copy paste feature and long-press
                        contextMenuBuilder: (_, __) => Container(),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                ///Choose your tip
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Choose",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        Text(
                          "your tip",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 65,
                        )
                      ],
                    ),
                    StatefulBuilder(builder: (_, setState) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (tenP) {
                                      tenP = false;
                                      tipPercent = 0;
                                    } else {
                                      tipPercent = 10;
                                      tenP = true;
                                      fifteenP = false;
                                      twentyP = false;
                                    }
                                    tipRupee = 0;
                                    tipPercentCtrl=0;
                                    rupeeController.clear();
                                    percentController.clear();
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: tenP
                                            ? Colors.white
                                            : Color(0xff01C9BE),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 1)
                                        ]),
                                    child: Center(
                                      child: RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "10",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19,
                                                color: tenP
                                                    ? Color(0xff01C9BE)
                                                    : Colors.white)),
                                        TextSpan(
                                            text: "%",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 12,
                                                color: tenP
                                                    ? Color(0xff01C9BE)
                                                    : Colors.white))
                                      ])),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (fifteenP) {
                                      tipPercent = 0;
                                      fifteenP = false;
                                    } else {
                                      tipPercent = 15;
                                      fifteenP = true;
                                      tenP = false;
                                      twentyP = false;
                                    }
                                    tipRupee = 0;
                                    tipPercentCtrl=0;
                                    rupeeController.clear();
                                    percentController.clear();
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: fifteenP
                                            ? Colors.white
                                            : Color(0xff01C9BE),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 1)
                                        ]),
                                    child: Center(
                                      child: RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "15",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19,
                                                color: fifteenP
                                                    ? Color(0xff01C9BE)
                                                    : Colors.white)),
                                        TextSpan(
                                            text: "%",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 12,
                                                color: fifteenP
                                                    ? Color(0xff01C9BE)
                                                    : Colors.white))
                                      ])),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (twentyP) {
                                      tipPercent = 0;
                                      twentyP = false;
                                    } else {
                                      tipPercent = 20;
                                      twentyP = true;
                                      fifteenP = false;
                                      tenP = false;
                                    }
                                    tipRupee = 0;
                                    tipPercentCtrl=0;
                                    rupeeController.clear();
                                    percentController.clear();
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: twentyP
                                            ? Colors.white
                                            : Color(0xff01C9BE),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 1)
                                        ]),
                                    child: Center(
                                      child: RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "20",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19,
                                                color: twentyP
                                                    ? Color(0xff01C9BE)
                                                    : Colors.white)),
                                        TextSpan(
                                            text: "%",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 12,
                                                color: twentyP
                                                    ? Color(0xff01C9BE)
                                                    : Colors.white))
                                      ])),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 21,
                          ),

                          ///Custom Tip
                          GestureDetector(
                            onTap: () {
                              twentyP = false;
                              fifteenP = false;
                              tenP = false;
                              tipPercent=0;
                              if(tipPercentCtrl!=0) {
                                percentController.text = tipPercentCtrl.toString();
                              }if(tipRupee!=0) {
                                rupeeController.text = tipRupee.toString();
                              }
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (_) {
                                    return StatefulBuilder(builder: (_,SS){
                                      return Container(
                                        width: 300,
                                        height: 250,
                                        //+ MediaQuery.of(context).size.height * 0.5 + MediaQuery.of(context).viewInsets.bottom,
                                        margin: EdgeInsets.only(bottom: 220),
                                        padding: EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        child: Center(
                                          child:Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 261,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(12),
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(color: Colors.grey, blurRadius: 1)
                                                    ]
                                                ),
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: (){
                                                        inPercent=true;
                                                        inRupee= false;
                                                        SS((){});
                                                      },
                                                      child: Container(
                                                        height: 50,
                                                        width: 130,
                                                        decoration: BoxDecoration(
                                                            borderRadius:BorderRadius.circular(12),
                                                            color:inPercent ? Color(0xff01C9BE): Colors.white
                                                        ),
                                                        child: Center(child: Text("In %",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: inPercent ? Colors.white :Color(0xff01C9BE)),)),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: (){
                                                        inRupee= true;
                                                        inPercent= false;
                                                        SS((){});
                                                      },
                                                      child: Container(
                                                        height: 50,
                                                        width: 130,
                                                        decoration: BoxDecoration(
                                                            borderRadius:BorderRadius.circular(12),
                                                            color: inRupee ? Color(0xff01C9BE): Colors.white
                                                        ),
                                                        child: Center(child: Text("In ₹",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: inRupee ? Colors.white :Color(0xff01C9BE)),)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 50,
                                                width: 260,
                                                //padding: EdgeInsets.only(left: 10,top: 5),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(color: Colors.grey, blurRadius: 1)
                                                    ]),
                                                child: TextField(
                                                  controller: inRupee ? rupeeController : percentController ,
                                                  textAlignVertical: TextAlignVertical.center,
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 21,
                                                      color: Colors.black),
                                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                  cursorColor: Colors.black,
                                                  cursorHeight: 25,
                                                  maxLength: 10,
                                                  ///Digit Only for OTP

                                                  inputFormatters: [
                                                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\d.?\d*$'))
                                                    /*FilteringTextInputFormatter.digitsOnly,
                                                    LengthLimitingTextInputFormatter(9)*/
                                                  ],
                                                  enableInteractiveSelection: false,
                                                  decoration: InputDecoration(
                                                    counterText: "",
                                                      labelText: inRupee ? "Enter Amount" : "Enter Percent",
                                                      labelStyle: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 18,
                                                          fontFamily: "Poppins"),
                                                      prefixText: inRupee ? "₹":"%",
                                                      prefixStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 22,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      border: OutlineInputBorder(
                                                        borderSide: BorderSide.none,
                                                      ),
                                                      floatingLabelBehavior: FloatingLabelBehavior.never),

                                                  /// Disable long-press zoom effect
                                                  magnifierConfiguration:
                                                  TextMagnifierConfiguration.disabled,

                                                  /// Disable copy paste feature and long-press
                                                  contextMenuBuilder: (_, __) => Container(),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: (){
                                                      tipPercentCtrl=0;
                                                      tipRupee=0;
                                                      percentController.clear();
                                                      rupeeController.clear();
                                                      setcall();
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 48,
                                                      width: 124,
                                                      decoration: BoxDecoration(
                                                          borderRadius:BorderRadius.circular(12),
                                                          color: Colors.white,
                                                          boxShadow: [
                                                          BoxShadow(color: Colors.grey, blurRadius: 1)
                                                        ]
                                                      ),
                                                      child: Center(child: Text("Clear",style: TextStyle(fontFamily: "Poppins" ,fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff01C9BE)),)),
                                                    ),
                                                  ),
                                                  SizedBox(width: 15,),
                                                  GestureDetector(
                                                    onTap: (){
                                                      if(rupeeController.text.isNotEmpty&& inRupee) {
                                                        tipRupee = double.parse(
                                                            rupeeController.text
                                                                .toString());
                                                        tipPercentCtrl =0;
                                                        percentController.clear();
                                                        Navigator.pop(context);
                                                        setcall();
                                                      }if(percentController.text.isNotEmpty&& inPercent){
                                                        tipPercentCtrl = double.parse(percentController.text.toString());
                                                        tipRupee =0;
                                                        rupeeController.clear();
                                                        Navigator.pop(context);
                                                        setcall();
                                                      }

                                                    },
                                                    child: Container(
                                                      height: 48,
                                                      width: 124,
                                                      decoration: BoxDecoration(
                                                          borderRadius:BorderRadius.circular(12),
                                                          color: Color(0xff01C9BE),
                                                          boxShadow: [
                                                            BoxShadow(color: Colors.grey, blurRadius: 1)
                                                          ]
                                                      ),
                                                      child: Center(child: Text("Save",style: TextStyle(fontFamily: "Poppins" ,fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ],
                                          ),),
                                      );
                                    });

                                  });
                              setState((){});
                            },
                            child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff01C9BE),
                              ),
                              child: Center(
                                child: (rupeeController.text.isEmpty && percentController.text.isEmpty)?Text(
                                  "Custom tip",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white),
                                ):
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(width: 15,),
                                    rupeeController.text.isNotEmpty ? Text("₹ ${rupeeController.text}",style:TextStyle(fontSize:22,color: Colors.white,fontWeight: FontWeight.bold),) :Text("% ${percentController.text}",style:TextStyle(fontSize:22,color: Colors.white,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 30,),
                                    Icon(Icons.edit,color: Colors.white,size: 23,)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 21,
                ),

                ///Split your tip

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Split",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        Text(
                          "your bill",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 50,
                        width: 200,
                        child: StatefulBuilder(builder: (_, ss) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (split > 2) {
                                    ss(() {
                                      split--;
                                    });
                                  }
                                },
                                child: Container(
                                  height: 50,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    color: Color(0xff01C9BE),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Text(
                                  "$split",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Colors.black),
                                )),
                              ),
                              GestureDetector(
                                onTap: () {
                                  ss(() {
                                    split++;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Color(0xff01C9BE),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }))
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                GestureDetector(
                  onTap: () {
                    calculate();
                  },
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff01C9BE),
                    ),
                    child: Center(
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
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
void setcall(){
    setState(() {

    });
}
  void calculate() {
    if (billController.text.isNotEmpty) {
      num bill = double.parse(billController.text.toString());
      tip = (bill * (tipPercent+tipPercentCtrl)) / 100;
      tip += tipRupee;
      tb = (bill + tip);
      tp = ((bill + tip) / split);

      setState(() {});
    }
  }
}
