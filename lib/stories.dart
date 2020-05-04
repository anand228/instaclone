import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

            Container(height: 85,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 25,
                  itemBuilder: (context,index)
                  {

                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 65,width: 65,

                            decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: ExactAssetImage("assets/1.jpg"),
                        fit: BoxFit.fill,
                       ),
                       ),

                      ),
                    );
                  }

          ),
            );



  }
}
