import 'package:edtech_application/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

Widget customAppbar(BuildContext context,HomeProvider homeProvider){
  return Container(
    width: double.infinity,
    color: Theme.of(context).primaryColor,
    child: Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 10,left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Edu",style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:homeProvider.bookMarkModel.isEmpty? CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                child: Icon(Icons.bookmark,color: Theme.of(context).primaryColor,),
              ),
            ):  badges.Badge(
                 badgeContent:Text(homeProvider.bookMarkModel.length.toString(),style:Theme.of(context).textTheme.labelSmall,),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 18,
                  child: Icon(Icons.bookmark,color: Theme.of(context).primaryColor,),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}