import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobileapp/Networks/api.dart';

class FilterCustomerScreen extends StatefulWidget {
  final int id;
  const FilterCustomerScreen({super.key, required this.id});

  @override
  State<FilterCustomerScreen> createState() => _FilterCustomerScreenState();
}

class _FilterCustomerScreenState extends State<FilterCustomerScreen> {
  List book_data = [];
  var local_id;
  late Future myFuture;
  _loadAllData() async {
    await _getCustomerData();
    var data = [];
    return data;
  }

  _getCustomerData() async {
    var res = await Network().getData('rent');
    var jsonData = jsonDecode(res.body);
    for (var element in jsonData['data']) {
      if (element["Customer_id"] == local_id) {
        book_data.add(element["book"]["Title"]);
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFuture = _loadAllData();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      local_id = widget.id;
    });
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Detail buku yang dipinjam",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
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
                              onTap: () {},
                              child: ListTile(
                                title: Text('${book_data[index]}'),
                              ),
                            );
                          },
                        ),
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
