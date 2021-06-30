import 'package:flutter/material.dart';

class WidgetsHelper {
  Widget cardItem(
      {@required String imageUrl,
      @required BuildContext context,
      @required String title,
      @required String abstractTitle,
      @required String date}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            child: Image(
              image: NetworkImage(imageUrl),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
              fit: BoxFit.fill,
            ),
          ),
          Divider(),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(title)),
                    const SizedBox(height: 10),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(abstractTitle)),
                  ],
                ),
                Spacer(),
                Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(date))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
