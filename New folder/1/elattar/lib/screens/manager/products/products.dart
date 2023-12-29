import 'package:auto_size_text/auto_size_text.dart';
import 'package:elattar/screens/manager/products/add_a_product.dart';
import 'package:elattar/screens/manager/products/modify_a_product.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);
  static String id = 'Products';

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'المنتجات',
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
        // actions: [
        //   IconButton(
        //     onPressed: ()
        //     {
        //       // Navigator.of(context).pushNamed(AddBox.id);
        //     },
        //     icon: const Icon(
        //       Icons.add_box,
        //       // size: 30,
        //     ),
        //   ),
        // ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AddAProduct.id);
          },
          icon: const Icon(
            Icons.add_shopping_cart,
            // color: Colors.white,
          ),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // childAspectRatio: 1.8,
          childAspectRatio: 0.8,
        ),
        children: <Widget>[
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),
          asd(
            image: '',
            name: 'name',
            price: '123',
          ),

        ],
      ),
    );
  }

  asd ({image, name, price}){
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8, vertical: 5,),
      child: LayoutBuilder(
          builder: (context, constrains) {
            double localHeight = constrains.maxHeight;
            double localWidth = constrains.maxWidth;
            return InkWell(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: localWidth,
                    height: localHeight * .7,
                    child: Image(
                        image: NetworkImage(
                          image,
                          // snapshot.data.docs[i].data()['image1'],
                        ),
                        fit: BoxFit.fill
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: SizedBox(
                      height: localHeight * .1,
                      child: Row(
                        children: <Widget>[
                          AutoSizeText(
                            name,
                            // '${snapshot.data.docs[i].data()['center']}''/${snapshot.data.docs[i].data()['nickName']}',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            minFontSize: 5,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: localHeight * .1,
                    child: AutoSizeText(
                      price,
                      // 'ج.م''${snapshot.data.docs[i].data()['price']}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      minFontSize: 7,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed(ModifyAProduct.id);
                // Navigator.push(
                //     context, MaterialPageRoute(
                //     builder: (context) => DetailsBoy(
                //       idSeller: idSeller,
                //       productDocId: productDocId,
                //     )
                // )
                // );
              },
            );
          }
      ),
    );
  }

}
