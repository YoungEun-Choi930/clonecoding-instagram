import 'package:flutter/material.dart';
import 'package:myapp/src/components/avatar_widget.dart';

import '../components/image_data.dart';
import '../components/post_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
            thumPath:
                'https://www.nemopan.com/files/attach/images/166591/077/291/014/dd0b0086e60fd42bff89d28271390625.jpg',
            type: AvatarType.TYPE2,
            ),
        Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: const Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
              ),
            ))
      ],
    );
  }

  Widget _stroyBoardList() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            _myStory(),
            const SizedBox(
              width: 5,
            ),
            ...List.generate(
                10,
                (index) => AvatarWidget(
                    thumPath:
                        'https://meeco.kr/files/attach/images/24268070/538/732/026/cafa11544afdae291940aeafa006a98e.jpg',
                    type: AvatarType.TYPE1))
          ],
        ));
  }

  Widget _postList() {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) => PostWidget()).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(IconsPath.logo, width: 270),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(
                IconsPath.directMessage,
                width: 50,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          _stroyBoardList(),
          _postList(),
        ],
      ),
    );
  }
}
