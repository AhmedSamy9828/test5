import 'package:auto_size_text/auto_size_text.dart';
import 'package:elattar/screens/manager/products/product_return.dart';
import 'package:elattar/screens/manager/returns/product_culling.dart';
import 'package:flutter/material.dart';

class Returns extends StatefulWidget {
  const Returns({Key? key}) : super(key: key);
  static String id = 'Returns';

  @override
  State<Returns> createState() => _ReturnsState();
}

class _ReturnsState extends State<Returns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'المرتجعات',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Colors.blue,
        elevation: 5,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: ()
            {
              Navigator.of(context).pushNamed(ProductCulling.id);
            },
            icon: const Icon(
              Icons.delete_sweep,
              // size: 30,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(ProductReturn.id);
          },
          icon: const Icon(
            Icons.settings_backup_restore,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            widgetInkWell(
              image: '',
              name: 'المنتج  ||  السعر',
              sale: 'الموظف المسؤل',
              tap: (){},
              // tapWork: (){Navigator.of(context).pushNamed(EmployeeWorkFile.id);},
              // tapProfile: (){Navigator.of(context).pushNamed(EmployeeProfile.id);},
            ),
          ],
        ),
      ),
    );
  }
  widgetInkWell({image, name, sale, tap, tapWork, tapProfile}){
    return InkWell(
      onTap: tap,
      child:SizedBox(
        height: 100,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: tapProfile,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 80,
                    width:  100,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: tapWork,
                child: Column(
                  children: <Widget>[
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        // height: 90,
                        // width:  200,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: AutoSizeText(
                            name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            minFontSize: 10,
                            maxLines: 3,
                          ),
                        ),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        // height: 90,
                        // width:  200,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: AutoSizeText(
                            sale,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            minFontSize: 10,
                            maxLines: 3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
