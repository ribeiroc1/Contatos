import 'package:contacts/ios/styles.dart';
import 'package:contacts/ios/views/address.view.dart';
import 'package:contacts/ios/views/editor-contact.view.dart';
import 'package:contacts/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Contato"),
            trailing: CupertinoButton(
              child: Icon(
                CupertinoIcons.pen,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EditorContactView(
                      model: ContactModel(
                          id: "1",
                          name: "Cleiton Ribeiro",
                          mail: "cleiton.r@globomail.com",
                          phone: "49 99197 6206"),
                    ),
                  ),
                );
              },
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://media-exp1.licdn.com/dms/image/C4E03AQEsSeqkG8VJwA/profile-displayphoto-shrink_200_200/0?e=1606348800&v=beta&t=CqmLMBbehsBbW_50HNAa-ZzAWSb29q4c8JRGch6e7uM"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Text(
                  "Cleiton Ribeiro",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "49 99197-6206",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "cleiton.r@globomail.com",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CupertinoButton(
                      onPressed: () {},
                      child: Icon(
                        CupertinoIcons.phone,
                        color: primaryColor,
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: Icon(
                        CupertinoIcons.mail,
                        color: primaryColor,
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: Icon(
                        CupertinoIcons.photo_camera,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                            ),
                            Text(
                              "Endereço",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Rua Dev Cleiton, 9999",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "Videira/SC",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => AddressView(),
                            ),
                          );
                        },
                        child: Icon(
                          CupertinoIcons.location,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
