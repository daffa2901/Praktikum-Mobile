import 'package:flutter/material.dart';
import 'package:prakmobile2/quizprak/gambar_preview.dart';
import 'books_data.dart';
import 'gambar_preview.dart';
import 'detail_buku.dart';


class Utama extends StatefulWidget {
  const Utama({Key? key}) : super(key: key);

  @override
  State<Utama> createState() => _HomePageState();
}

class _HomePageState extends State<Utama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Home Page (KATALOG BUKU)'),

      ),

      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index)
        {
          final BooksData place = booksData[index];

          return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailBuku(books: place)));
              },
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      child: Container(
                        width: 500,
                        height: 500,
                        child: Image.network(place.imageLinks,
                            width: 500,
                            height: 500,
                            ),
                      )),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(place.title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text(place.publishedDate,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          Text(place.publisher, style: TextStyle(fontSize: 20),),
                          ElevatedButton(onPressed:(){},
                              child:Text("PREVIEW GAMBAR")
                          )],
                  )
                  ),
                ],
              )
          );

        },
        itemCount: booksData.length,
      ),
    );
  }
}
