import 'package:e_commerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/models/models.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({
    Key? key, 
    required this.user}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'user_image',
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.4,
          width: MediaQuery.of(context).size.width ,
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(user.imageUrls[0]
                  ),
                ),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: const Offset(3, 3),
                  )
                  ], 
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  )
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('${user.name}, ${user.age}', style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(user.jobTitle, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                  
                  Row(children: [
                    UserImageSmall(url: user.imageUrls[0]),
                     UserImageSmall(url: user.imageUrls[1]),
                     UserImageSmall(url: user.imageUrls[2]),
                     UserImageSmall(url: user.imageUrls[3]),
                     const SizedBox(width: 10),
                     Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white60),
                      child: Icon(Icons.info_outline_rounded, size: 25, color: Theme.of(context).primaryColor)),  
                     
                  ])
                  ],
                ),
              )
          ],),
        ),
      ),
    );
  }
}

