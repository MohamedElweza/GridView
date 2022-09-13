import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Home(),
    );
  }
}

class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    List <String> imageslist = [
    'asset/image/img1.jpg',
    'asset/image/img2.jpg',
    'asset/image/img3.jpg',
    'asset/image/img1.jpg',
    'asset/image/img2.jpg',
    'asset/image/img3.jpg',
    'asset/image/img1.jpg',
    'asset/image/img2.jpg',
    'asset/image/img3.jpg',
    'asset/image/img1.jpg',
    'asset/image/img2.jpg',
    'asset/image/img3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea( 
      child: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Gallery',
            style: 
            TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Myfont2',
              color: Color.fromARGB(235, 105, 99, 99)),
            ),
          ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                itemCount: imageslist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                  ), 
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                      image: AssetImage(imageslist[index]),
                      fit: BoxFit.cover
                      ),
                        ),
                    );
                  } ),
           ),
        ),
      ),
    ));
  }
}