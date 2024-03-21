import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera-Shop'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              // Tambahkan logika untuk navigasi ke halaman "Home"
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Tambahkan logika untuk menampilkan fitur "Search"
            },
          ),
        ],
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Expanded(
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: viewportConstraints.maxWidth,
                          child: const Image(
                              image: NetworkImage(
                                  'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2019/01/17/938975409.jpg')),
                        ),
                      ),
                      const ListProducts(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: viewportConstraints.maxWidth,
                          child: const Image(
                              image: NetworkImage(
                                  'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2019/01/17/938975409.jpg')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ListProducts extends StatelessWidget {
  const ListProducts({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductImage(),
            ProductImage(
              rndSeed: 2,
              nama: "Sony A7SIII",
              harga: 5000000,
            ),
            ProductImage(
              rndSeed: 3,
            )
          ],
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  final int rndSeed;
  final String nama;
  final double harga;
  const ProductImage(
      {Key? key,
      this.rndSeed = 1,
      this.nama = "Sony ZV-E01",
      this.harga = 10000000.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const Image(
              image: NetworkImage(
                  'https://www.sony.co.id/image/dec28ab731dad845e5e299340ac98cd4?fmt=pjpeg&wid=330&bgcolor=FFFFFF&bgc=FFFFFF')),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(nama), Text("Rp. $harga")])
        ],
      ),
    );
  }
}
