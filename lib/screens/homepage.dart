import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

num result=0;
String flag="";




  Widget buildButton(String title) {
    return Expanded(
      child:OutlinedButton(
        style:OutlinedButton.styleFrom(
          padding:EdgeInsets.all(24.0)
        ),
        onPressed:() {
          setState(() {
            flag=flag+title;
          });
          

        } ,
         child: Text(title,style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.black)))
    );
  }
    Widget buildClear(String title) {
    return Expanded(
      child:OutlinedButton(
        style:OutlinedButton.styleFrom(
          padding:EdgeInsets.all(24.0)
        ),
        onPressed:() {
          setState(() {  
          flag="";
          result=0;
          });
             
        } ,
         child: Text(title,style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.black)))
    );
   
  }
   Widget buildequal(String title) {
    return Expanded(
      child:OutlinedButton(
        style:OutlinedButton.styleFrom(
          padding:EdgeInsets.all(24.0)
        ),
        onPressed:() {
          String num1='';
          String num2='';
          
          setState(() {
            int j=0;
            for(int i=0;i<flag.length;i++)
            {
              if(flag[i]=="+")
              {
                num1=flag.substring(0,i);
                num2=flag.substring(i+1,flag.length);
                result=(double.parse(num1)) + (double.parse(num2));
                flag=result.toStringAsFixed(2);
                break; 
              }
              if(flag[i]=="-")
              {
                num1=flag.substring(0,i);
                num2=flag.substring(i+1,flag.length);
                result=(double.parse(num1)) - (double.parse(num2));
                 flag=result.toStringAsFixed(2);
                break;

              }
              if(flag[i]=="×")
              {
                num1=flag.substring(0,i);
                num2=flag.substring(i+1,flag.length);
                result=(double.parse(num1)) * (double.parse(num2));
                flag=result.toStringAsFixed(2);
                break;

              }
              if(flag[i]=="/")
              {
                num1=flag.substring(0,i);
                num2=flag.substring(i+1,flag.length);
                result=(double.parse(num1))/(double.parse(num2)) as double;
                flag=result.toStringAsFixed(2);
                break;

              }
              
            }
            
          });
          
          
        } ,
         child: Text(title,style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.black)))
    );
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 202, 21, 82),
        title:Text("Calculator")
      ),
      body:Column(
        children: [
          Container(
            child:Text(flag,
            style:TextStyle(fontSize: 48.0,fontWeight:FontWeight.bold)),
            alignment: Alignment.centerRight,
            padding:EdgeInsets.symmetric(vertical: 24.0,horizontal: 12.0),
          ),
          Expanded(child: 
          Divider()),
          Row(
            children: [
              buildButton('7'),
              buildButton('8'),
              buildButton('9'),
              buildButton('/'),
            ],
            ),
             Row(
            children: [
              buildButton('4'),
              buildButton('5'),
              buildButton('6'),
              buildButton('×'),
            ],
             ),
             Row(
            children: [
              buildButton('1'),
              buildButton('2'),
              buildButton('3'),
              buildButton('-'),
            ],
             ),
             Row(
            children: [
              buildButton('.'),
              buildButton('0'),
              buildButton('00'),
              buildButton('+'),
            ],
             ),
             Row(
            children: [
             buildClear("CLEAR"),
             buildequal('='),
             
            ],
             ),
        ],
      ),
    );
  }
}