import 'package:edtech_application/provider/home_provider.dart';
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
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider,child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Text("Edu",style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),),
            actions: [
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 18,
                    child: Icon(Icons.bookmark,color: Theme.of(context).primaryColor,),
                  ),
                ),
              )
            ],
          ),
          body: provider.isLoading?const Center(child: CircularProgressIndicator()):Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: provider.videoInfo.length,
                  separatorBuilder: (context,index){
                    return const SizedBox(height: 10);
                  },
                  itemBuilder: (context,index){
                    return Card(
                      color: Theme.of(context).primaryColor,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            child: Text("Lets learn ${provider.videoInfo[index].data![0].field}",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
                          )
                        ],
                      ),
                    );
                  }, )
              ],
            ),
          ),
        );
      }
    );
  }
}
