import 'package:flutter/material.dart';

class PunkTemplate extends StatelessWidget {
  const PunkTemplate(
      {Key? key, @required this.groupname, this.data1, this.data2})
      : super(key: key);

  final String? groupname, data1, data2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (() {
        if (groupname == "sexpistols") {
          return BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffb20a2c),
              Color(0xfffffbd5),
            ]),
          );
        }
        if (groupname == "socialdist" || groupname == "ramones") {
          return BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff000000),
              Color(0xff434343),
            ]),
          );
        }
      }()),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 15,
                  bottom: 15,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "groupinfos/$groupname/$groupname.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "groupinfos/$groupname/$groupname(2).png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "groupinfos/$groupname/$groupname(3).png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "groupinfos/$groupname/$groupname(4).png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 10),
                child: Column(
                  children: [
                    Container(
                      child: Expanded(
                        child: Text(data1.toString(),
                            style: (() {
                              if(groupname =="sexpistols")
                              {
                                return TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black);
                              }else{return TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent);}
                            }())),
                      ),
                      height: 500,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 10),
            child: Column(
              children: [
                Container(
                  child: Expanded(
                    child: Text(
                      data2.toString(),
                      style: (() {
                        if(groupname =="sexpistols")
                          {
                            return TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black);
                          }else{return TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent);}
                      }())
                    ),
                  ),
                  height: 77,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    color: Colors.black.withOpacity(0.2),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}