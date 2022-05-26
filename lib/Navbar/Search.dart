import 'package:flutter/material.dart';
import 'package:newproject1/DATA/Product.dart';

import 'package:newproject1/buy%20section/SearchView.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controller = TextEditingController();
  List<Book> books = allBooks;

  get query => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: TextField(
              controller:controller ,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: Colors.black87,),
                hintText: 'search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black12)
                ),
              ),
              onChanged: searchBook,
            ),
          ),
          Expanded(child: ListView.builder(
              itemCount:books.length ,
              itemBuilder:(context,index){
                var book =books[index];
                return ListTile(
                  leading: Image.network(book.urlImage,fit: BoxFit.cover,width: 50,height: 50,),
                  title: Text(book.title),

                  onTap: ()=>Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>BookPage(book:book),
                  )),

                );
              }

          ),
          ),
        ],
      ),
    );
  }
  void searchBook(String query){
    final suggestions = allBooks.where((book){
      final bookTitle=book.title.toLowerCase();
      final input =query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();

    setState(() =>books=suggestions);

  }
}

