import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/components/avatar_widget.dart';
import 'package:myapp/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.TYPE3,
            nickname: 'sveun',
            thumPath:
                'https://www.nemopan.com/files/attach/images/166591/077/291/014/dd0b0086e60fd42bff89d28271390625.jpg',
            size: 35,
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl:
            'https://image.fmkorea.com/files/attach/new/20200527/486616/1954061949/2922280537/ed923bc5ac52efad4be5eca92c9612e4.jpg');
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            ImageData(
              IconsPath.likeOffIcon,
              width: 70,
            ),
            const SizedBox(
              width: 15,
            ),
            ImageData(
              IconsPath.replyIcon,
              width: 65,
            ),
            const SizedBox(
              width: 15,
            ),
            ImageData(
              IconsPath.directMessage,
              width: 60,
            ),
          ],
        ),
        ImageData(
          IconsPath.bookMarkOffIcon,
          width: 60,
        ),
      ]),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '좋아요 111개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          ExpandableText(
            '1번 ㅎㅎㅎㅎ고양이는 귀여워\n1번 ㅎㅎㅎㅎ고양이는 귀여워\n1번 ㅎㅎㅎㅎ고양이는 귀여워\n1번 ㅎㅎㅎㅎ고양이는 귀여워',
            prefixText: 'sveun',
            prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
            onPrefixTap: () {
              print('sveun페이지 이동');
            },
            expandText: '더 보기',
            maxLines: 3,
            expandOnTextTap: true,
            linkColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          '댓글 256개 모두 보기',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Text('1일전',style: TextStyle(color: Colors.grey, fontSize: 11),)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          const SizedBox(height: 15),
          _image(),
          const SizedBox(height: 10),
          _infoCount(),
          const SizedBox(height: 10),
          _infoDescription(),
          const SizedBox(height: 5),
          _replyTextBtn(),
          _dateAgo(),
        ],
      ),
    );
  }
}
