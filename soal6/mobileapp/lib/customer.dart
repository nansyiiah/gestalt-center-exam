import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobileapp/Networks/api.dart';
import 'package:mobileapp/filterCustomer.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List customerData = [];
  late Future myFuture;
  _getLogsData() async {
    var res = await Network().getData('customer');
    var jsonData = jsonDecode(res.body);
    for (var element in jsonData['customers_10']) {
      customerData.add(element);
    }
  }

  _loadAllData() async {
    await _getLogsData();
    var data = [];
    return data;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFuture = _loadAllData();
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
                          itemCount: customerData.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FilterCustomerScreen(
                                      id: customerData[index]["id"],
                                    ),
                                  ),
                                );
                              },
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: const Color(0xff764abc),
                                  child: Text("${customerData[index]["id"]}"),
                                ),
                                title: Text('${customerData[index]["Name"]}'),
                                subtitle: Text(
                                    '${customerData[index]["identity_card_number"]}'),
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
