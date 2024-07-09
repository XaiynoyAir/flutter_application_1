 

import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? txtshow = '0';
  
void Cleartxt (){
  if (txtshow == '0') {

  } else{
    setState(() {
    txtshow = '0';
  });
  }
}

void PressBtn(String txt) {
  print(txtshow.toString());

  if (txtshow.toString() == '0') {
    print("this is = 0");
    setState(() {
      txtshow = txt;
    });
  } else {
    setState(() {
      txtshow = txtshow.toString() + txt;
    });
  }

}

void BackDlete(){
  print('back');
  if (txtshow.toString() == '0') {
    } else {
      if (txtshow!.length > 0) {
        setState(() {
          txtshow = txtshow!.substring(0, txtshow!.length - 1);
        });
        if (txtshow!.length == 0) {
          setState(() {
            txtshow = '0';
          });
        } else {
          
        }
      }
    }
}

void Sum(){

  String sumnumber = txtshow!.interpret().toString();
  setState(() {
    txtshow = sumnumber;
  });
  // print('Sum');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 280,
                // color: Colors.amber,
                child: Align(alignment: Alignment.centerRight,
                  child: Text(
                    txtshow.toString(),
                    style: TextStyle(fontSize: 80),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(5),
                child: GridView(
                  physics:
                      const NeverScrollableScrollPhysics(), // ບໍ່ໃຫ້ຄະຍັບໄດ້

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  shrinkWrap: true,
                  children: [
                    ElevatedButton(
                      style: BtnAmber,
                      onPressed: () {
                        Cleartxt();
                      },
                      child: Text(
                        'C',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnAmber,
                      onPressed: () {
                        PressBtn('A');
                      },
                      child: Text(
                        'A',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnAmber,
                      onPressed: () {
                        PressBtn('%');
                      },
                      child: Text(
                        '%',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnAmber,
                      onPressed: () {
                        PressBtn('/');
                      },
                      child: Text(
                        '/',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('1');
                      },
                      child: Text(
                        '1',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('2');
                      },
                      child: Text(
                        '2',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('3');
                      },
                      child: Text(
                        '3',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnAmber,
                      onPressed: () {
                        PressBtn('*');
                      },
                      child: Text(
                        'x',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('4');
                      },
                      child: Text(
                        '4',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('5');
                      },
                      child: Text(
                        '5',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('6');
                      },
                      child: Text(
                        '6',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnAmber,
                      onPressed: () {
                        PressBtn('-');
                      },
                      child: Text(
                        '-',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('7');
                      },
                      child: Text(
                        '7',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('8');
                      },
                      child: Text(
                        '8',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('9');
                      },
                      child: Text(
                        '9',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnAmber,
                      onPressed: () {
                        PressBtn('+');
                      },
                      child: Text(
                        '+',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('0');
                      },
                      child: Text(
                        '0',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        PressBtn('.');
                      },
                      child: Text(
                        '.',
                        style: styleC,
                      ),
                    ),
                    ElevatedButton(
                      style: BtnGrey,
                      onPressed: () {
                        BackDlete();
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    ElevatedButton(
                      style: BtnGreen,
                      onPressed: () {
                        Sum();
                      },
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  var styleC = TextStyle(fontSize: 30);

  var BtnAmber = ElevatedButton.styleFrom(
      backgroundColor: Colors.amber,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50.0),
      ));

  var BtnGrey = ElevatedButton.styleFrom(
      backgroundColor: Colors.grey.shade100,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50.0),
      ));
      
  var BtnGreen = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50.0),
      ));
}
