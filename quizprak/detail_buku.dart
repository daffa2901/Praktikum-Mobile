import 'package:flutter/material.dart';
import 'books_data.dart';
import 'halaman_utama.dart';

class DetailBuku extends StatefulWidget {
  final BooksData books;
  const DetailBuku({Key? key,required this.books}) : super(key: key);

  @override
  State<DetailBuku> createState() => _DetailBukuState();
}

class _DetailBukuState extends State<DetailBuku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.books.title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          backgroundColor: Colors.brown,
          elevation: 20,
          iconTheme: IconThemeData(
            color: Colors.brown, //change your color here
          ),
        ),
        body: Center(
          child: Container(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                    children:[ Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(widget.books.imageLinks),
                        Padding(padding: EdgeInsets.only(bottom: 8)),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Written By:\n${widget.books.authors[0]}",),
                        ),
                        Text("Publisher: ${widget.books.publisher}",),
                        Padding(padding: EdgeInsets.only(bottom: 8)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Card(
                            color: Colors.brown,


                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(widget.books.description,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Text("Category : ${widget.books.categories[0]}")
                      ],
                    ),
                    ]
                ),
              )

          ),
        )

    );
  }
}