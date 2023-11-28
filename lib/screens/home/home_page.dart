import 'package:edtech_application/componnents/custom_appbar.dart';
import 'package:edtech_application/componnents/custom_snakbar.dart';
import 'package:edtech_application/provider/home_provider.dart';
import 'package:edtech_application/screens/home/videos_screen.dart';
import 'package:edtech_application/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_){
      Provider.of<HomeProvider>(context,listen: false).playList();
      Provider.of<HomeProvider>(context,listen: false).getBookMark();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider,child) {
        return Scaffold(

          body: provider.isLoading?const Center(child: CircularProgressIndicator()):
          SingleChildScrollView(
            child: Column(
              children: [
                customAppbar(context,provider),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: provider.videoInfo.length,
                    separatorBuilder: (context,index){
                      return const SizedBox(height: 10);
                    },
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Helper.toScreen(VideoViewScreen(selectedIndex: index,));
                        },
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                child: Text("Lets learn ${provider.videoInfo[index].data![0].field}",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
                              )
                            ],
                          ),
                        ),
                      );
                    }, ),
                ),
                ElevatedButton(onPressed: (){
                  provider.logout((value,message){
                    if(value){
                      successSnack(context: context,message: message);
                    }else{
                      errorSnack(context: context,message: message);
                    }
                  });
                }, child: Text("log out",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),)),
              ],
            ),
          ),
        );
      }
    );
  }
}

