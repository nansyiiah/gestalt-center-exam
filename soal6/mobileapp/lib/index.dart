import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobileapp/Networks/api.dart';
import 'package:mobileapp/customer.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  List book_data = [];
  List book_tidak_laku = [];
  List book_murah = [];
  late Future myFuture;
  bool _filterVisible = false;
  bool _filterPriceVisible = false;

  _loadAllData() async {
    await _getLogsData();
    await _getPriceData();

    var data = [];
    return data;
  }

  _getLogsData() async {
    var res = await Network().getData('buku');
    var jsonData = jsonDecode(res.body);
    for (var element in jsonData['buku']) {
      book_data.add(element);
    }
    for (var ele in jsonData['buku_tidak_pernah_dirental']) {
      book_tidak_laku.add(ele);
    }
  }

  _getPriceData() async {
    var res = await Network().getData('price');
    var jsonData = jsonDecode(res.body);
    for (var element in jsonData['harga_buku_diantara_2000_6000']) {
      book_murah.add(element);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    myFuture = _loadAllData();
    super.initState();
    _filterVisible = false;
    _filterPriceVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: myFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData == false) {
              return Center(
                child: Container(
                  padding: EdgeInsets.only(top: size.height * 0.5),
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: book_data.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                print(index);
                              },
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: const Color(0xff764abc),
                                  child: Text("${book_data[index]["id"]}"),
                                ),
                                title: Text('${book_data[index]["Title"]}'),
                                subtitle: Text('${book_data[index]["Author"]}'),
                                trailing: Text(
                                    "Rp. ${book_data[index]["Price_rent"]}"),
                              ),
                            );
                          },
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _filterVisible = !_filterVisible;
                            });
                          },
                          child: Text(
                            "Filter buku tidak laku",
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _filterPriceVisible = !_filterPriceVisible;
                            });
                          },
                          child: Text(
                            "Filter buku harga diantara 2000 and 6000",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Filter Buku yang tidak dirental"),
                        ),
                        Visibility(
                          visible: _filterVisible ? true : false,
                          child: Container(
                            width: size.width,
                            height: size.height * 0.1,
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: ListView.builder(
                              itemCount: book_tidak_laku.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: const Color(0xff764abc),
                                      child: Text(
                                          "${book_tidak_laku[index]["id"]}"),
                                    ),
                                    title: Text(
                                        '${book_tidak_laku[index]["Title"]}'),
                                    subtitle: Text(
                                        '${book_tidak_laku[index]["Author"]}'),
                                    trailing: Text(
                                        "Rp. ${book_tidak_laku[index]["Price_rent"]}"),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Filter Buku harga diatas 2000 dan dibawah 6000"),
                        ),
                        Visibility(
                          visible: _filterPriceVisible ? true : false,
                          child: Container(
                            width: size.width,
                            height: size.height * 0.2,
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: ListView.builder(
                              itemCount: book_murah.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: const Color(0xff764abc),
                                      child: Text("${book_murah[index]["id"]}"),
                                    ),
                                    title:
                                        Text('${book_murah[index]["Title"]}'),
                                    subtitle:
                                        Text('${book_murah[index]["Author"]}'),
                                    trailing: Text(
                                        "Rp. ${book_murah[index]["Price_rent"]}"),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
