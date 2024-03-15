import 'package:flutter/material.dart';
import 'package:list_app/screens/detail_screen.dart';
import 'package:list_app/movie.dart';



class ListScreen extends StatefulWidget {
  static const routeName = "/list_screen";

  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  TextEditingController searchcontroller = TextEditingController();

  final List<String> titles = <String>["Inception", "The Shawshank Redemption", "The Dark Knight", "Pulp Fiction", "Forrest Gump", "The Godfather", "Titanic", "Avatar", "Interstellar", "The Matrix"];
  final List<String> descriptions = <String>["A mind-bending thriller where dreams and reality blur, directed by Christopher Nolan.", "A poignant tale of hope and friendship in the confines of a prison, based on Stephen King's novella.",
  "Gotham City faces chaos as Batman battles the Joker, directed by Christopher Nolan.", "Quentin Tarantino's non-linear narrative weaves together interconnected stories of crime and redemption.",
  "A heartwarming journey through American history as seen through the eyes of Forrest Gump.",
  "A gripping saga of a mafia family's rise and fall, directed by Francis Ford Coppola.","A tragic love story set aboard the ill-fated RMS Titanic.",
  "James Cameron's epic sci-fi adventure exploring the world of Pandora and its indigenous inhabitants.",
  "Humanity's quest for a new habitable planet as Earth faces extinction, directed by Christopher Nolan.",
  "A cyberpunk classic that explores the concept of reality and perception in a dystopian world."];
  final List<String> icons = <String>["https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@",
    "https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@",
    "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@",
    "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@",
    "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81xTx-LxAPL",
    "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@",
    "https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@",
    "https://m.media-amazon.com/images/M/MV5BZDA0OGQxNTItMDZkMC00N2UyLTg3MzMtYTJmNjg3Nzk5MzRiXkEyXkFqcGdeQXVyMjUzOTY1NTc@",
    "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@",
    "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@",
  ];


  List <Movie> movies = [];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                controller: searchcontroller,
                onChanged: (value) {
                  movies = [];
                  for (var i = 0; i < titles.length; i++) {
                    if (titles[i].toLowerCase().contains(value.toLowerCase())||descriptions[i].toLowerCase().contains(value.toLowerCase())) {
                      Movie movie = Movie(title: titles[i], description: descriptions[i], icon:icons[i]);
                      movies.add(movie);
                    }
                  }
                  setState(() {

                  },);
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue, width: 3),
                    gapPadding: 10,
                  ),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(8),
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, DetailScreen.routeName,arguments:[titles[index],descriptions[index],icons[index]]);
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height:10,
                            ),
                            Container(
                              decoration: BoxDecoration(border:Border.all()),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Align(child: Text(movies[index].title,style:TextStyle(fontWeight:FontWeight.bold)),alignment:AlignmentDirectional.centerStart,),
                                    Align(child: Text(movies[index].description),alignment:AlignmentDirectional.centerStart),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height:10,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
