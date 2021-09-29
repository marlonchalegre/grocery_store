import 'package:flutter/material.dart';
import 'package:grocery_store/model/album.dart';
import 'package:grocery_store/services/albums_service.dart';
import 'package:grocery_store/widget/albums_grid.dart';

class SampleHttpPage extends StatefulWidget {
  SampleHttpPage({Key? key}) : super(key: key);

  @override
  _SampleHttpPageState createState() => _SampleHttpPageState();
}

class _SampleHttpPageState extends State<SampleHttpPage> {
  var albumService = AlbumService();

  late Future<Album> myAlbum;
  late Future<List<Album>> allAlbums;

  var _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    allAlbums = albumService.fetchAllAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            child: Image.asset("assets/images/header_app_icon.png"),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                child: FutureBuilder<List<Album>>(
                  future: allAlbums,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    } else {
                      return Expanded(
                        child: AlbumGridWidget(allAlbums: snapshot.data!),
                      );
                    }
                  },
                ),
              ),
              TextField(
                controller: _controller,
              ),
              ElevatedButton(
                onPressed: () {
                  var album = Album(id: 1, userId: 1, title: _controller.text);
                  myAlbum = albumService.createAlbum(album);
                  setState(() {});
                },
                child: Text('Criar Album'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
