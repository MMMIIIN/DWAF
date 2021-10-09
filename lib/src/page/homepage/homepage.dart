import 'package:dwaf_hobby/src/page/hobby_list/hobby_list_papge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    'DWAF',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                      width: 70,
                      child: IconButton(
                          splashRadius: 20,
                          icon: Icon(Icons.search),
                          onPressed: () {}))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: GridView.builder(
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => HobbyListPage(hobbyIndex: index));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 30,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(index * 0.07),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
