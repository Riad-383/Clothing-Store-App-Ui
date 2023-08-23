import 'package:clothing_store_app/app_styles.dart';
import 'package:clothing_store_app/equatable.dart';
import 'package:clothing_store_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final Counter _counter = Counter();
  void increamentCounter() {
    setState(() {
      _counter.increament();
    });
  }

  void decreament() {
    setState(() {
      _counter.decreament();
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector
      (
        onTap: (){

        },
        child: Container(
          
          padding: EdgeInsets.symmetric(horizontal: 8),
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric( horizontal: myPaddingHorizotal)
          ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: myDarkBrown,
            
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/cart.png'),
              SizedBox(width: SizeConfig.blocksizeHorizental!*1,
              ),
              RichText(text:  TextSpan(
                    text: "Add to cart |\$100.99 ",
                    style: myEncodeSansBold.copyWith(
                      color: myWhite,
                      fontSize: SizeConfig.blocksizeHorizental!*4,
            
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "\$190.99",style: myEncodeSansRegular.copyWith(
                        fontSize: SizeConfig.blocksizeHorizental!*3,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: SizeConfig.blocksizeHorizental!*1,
                        decorationColor: myWhite,
                      )
            
                      )
                    ]
                    
                  ))
              
            ],
          ),
        ),
      ),
      body: SafeArea(
        
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: myPaddingHorizotal),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.blocksizeVertical! * 50,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      "assets/images/1.jpg",
                      height: SizeConfig.blocksizeVertical! * 50,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: myWhite,
                                boxShadow: [
                                  BoxShadow(
                                    color: myBrown.withOpacity(0.11),
                                    spreadRadius: 0.0,
                                    blurRadius: 12,
                                    offset: const Offset(0, 5),
                                  )
                                ]),
                            child: Image.asset('assets/back.png'),
                          ),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: myWhite,
                                boxShadow: [
                                  BoxShadow(
                                    color: myBrown.withOpacity(0.11),
                                    spreadRadius: 0.0,
                                    blurRadius: 12,
                                    offset: const Offset(0, 5),
                                  )
                                ]),
                            child: Image.asset('assets/love_3.png'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  'Modern light cloths',
                  overflow: TextOverflow.ellipsis,
                  style: myEncodeSansSemibold.copyWith(
                    color: myDarkBrown,
                    fontSize: 24,
                  ),
                ),
              
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        increamentCounter();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          shape: BoxShape.circle,
                          color: myWhite,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                     SizedBox(
                      width:SizeConfig.blocksizeHorizental!*3,
                    ),
                    Text(_counter.value.toString(),
                        style: myEncodeSansBold.copyWith(
                            fontSize: SizeConfig.blocksizeHorizental!*5,color: myDarkBrown)),
                    SizedBox(
                      width:SizeConfig.blocksizeHorizental!*3,
                    ),
                    GestureDetector(
                      onTap: () {
                        decreament();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          shape: BoxShape.circle,
                          color: myWhite,
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
           const  SizedBox(
              height: 18,
            ),
            Row(
              children: [
                RatingBar.builder(
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: myYellow,
                  ),
                  onRatingUpdate: (rating) {
                    debugPrint(rating.toString());
                },
                  itemSize: 18,
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemPadding: const EdgeInsets.all(2),
                  unratedColor: myLightGrey,
                ),
               const SizedBox(width: 8,),
                RichText(text:  TextSpan(
                  text: "5.0 ",
                  style: myEncodeSansRegular.copyWith(
                    color: myDarkGrey,
                    fontSize: SizeConfig.blocksizeHorizental!*3.5,

                  ),
                  children: <TextSpan>[
                    TextSpan(text: "(7,89 reviews)",style: myEncodeSansRegular.copyWith(
                      fontSize: SizeConfig.blocksizeHorizental!*3.5,
                      color: Colors.blue,
                    )

                    )
                  ]
                  
                ))
              ],
            ),
          const  SizedBox(height: 8,),
            ReadMoreText('"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
            trimLines: 2,
            trimMode: TrimMode.Line,
            delimiter: '',
            trimCollapsedText: 'Readmore..',
            trimExpandedText: 'Show less',
            style: myEncodeSansBold.copyWith(
              fontSize: SizeConfig.blocksizeHorizental!*3.5,
              color: myDarkGrey,
              

            ),
            moreStyle: myEncodeSansBold.copyWith(
              fontSize: SizeConfig.blocksizeHorizental!*4,
              color: myDarkBrown,
            ),
            lessStyle: myEncodeSansBold.copyWith(
              fontSize: SizeConfig.blocksizeHorizental!*4,
              color: myDarkBrown,
          )
            ),
            const SizedBox(height: 16,),
           const  Divider(
              height: 1,
              color: myGrey,
            ),

            const SizedBox(height: 16,),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                children: [
                  Text(
                    'Choose Size',
                    style: myEncodeSansBold.copyWith(
                      color: myDarkBrown,
                      fontSize: SizeConfig.blocksizeHorizental!*3.5,
                    ),
                    
                  ),
                const   SizedBox(height: 8,),
                  Row(

                    children: [
                      Container(
                        height: SizeConfig.blocksizeHorizental!*4.5,
                        width: SizeConfig.blocksizeVertical!*4.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: myLightGrey,
                            width: 1,

                          ),
                          shape: BoxShape.circle,
                          color: myWhite,

                        ),
                        child: Center(
                          child: Text('S',
                          style: myEncodeSansRegular.copyWith(
                            color: myDarkBrown,
                            fontSize: SizeConfig.blocksizeHorizental!*2.7,
                        
                          ),),
                        ),
                      ),
                       SizedBox(width: SizeConfig.blocksizeHorizental!*1,),
                      Container(
                        height: SizeConfig.blocksizeHorizental!*4.5,
                        width: SizeConfig.blocksizeVertical!*4.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: myLightGrey,
                            width: 1,

                          ),
                          shape: BoxShape.circle,
                          color: myWhite,

                        ),
                        child: Center(
                          child: Text('M',
                          style: myEncodeSansRegular.copyWith(
                            color: myDarkBrown,
                            fontSize: SizeConfig.blocksizeHorizental!*2.7,
                            
                          ),),
                        ),
                      ),

                      SizedBox(width: SizeConfig.blocksizeHorizental!*1,),

                      Container(
                        height: SizeConfig.blocksizeHorizental!*4.5,
                        width: SizeConfig.blocksizeVertical!*4.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: myLightGrey,
                            width: 1,

                          ),
                          shape: BoxShape.circle,
                          color: myDarkBrown,

                        ),
                        child: Center(
                          child: Text('L',
                          style: myEncodeSansBold.copyWith(
                            color: myWhite,
                            fontSize: SizeConfig.blocksizeHorizental!*2.7,
                            
                          ),),
                        ),
                      ),

                      SizedBox(width: SizeConfig.blocksizeHorizental!*1,),

                      Container(
                        height: SizeConfig.blocksizeHorizental!*4.5,
                        width: SizeConfig.blocksizeVertical!*4.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: myLightGrey,
                            width: 1,

                          ),
                          shape: BoxShape.circle,
                          color: myWhite,

                        ),
                        child: Center(
                          child: Text('XL',
                          style: myEncodeSansRegular.copyWith(
                            color: myDarkBrown,
                            fontSize: SizeConfig.blocksizeHorizental!*2.7,
                            
                          ),),
                        ),
                      ),
                      
              ],
            )
          ],
        ),
         Column(
                children: [
                  Text(
                    'Color',
                    style: myEncodeSansBold.copyWith(
                      color: myDarkBrown,
                      fontSize: SizeConfig.blocksizeHorizental!*3.5,
                    ),
                    
                  ),
                const   SizedBox(height: 8,),
                  Row(

                    children: [
                      Container(
                        height: SizeConfig.blocksizeHorizental!*4.5,
                        width: SizeConfig.blocksizeVertical!*4.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: myLightGrey,
                            width: 1,

                          ),
                          shape: BoxShape.circle,
                          color: myGrey,

                        ),
                        
                      ),
                       SizedBox(width: SizeConfig.blocksizeHorizental!*1,),
                      Container(
                        height: SizeConfig.blocksizeHorizental!*4.5,
                        width: SizeConfig.blocksizeVertical!*4.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: myLightGrey,
                            width: 1,

                          ),
                          shape: BoxShape.circle,
                          color: myDarkBrown,

                        ),
                      
                      ),

                      SizedBox(width: SizeConfig.blocksizeHorizental!*1,),

                      Container(
                        height: SizeConfig.blocksizeHorizental!*4.5,
                        width: SizeConfig.blocksizeVertical!*4.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: myLightGrey,
                            width: 1,

                          ),
                          shape: BoxShape.circle,
                          color: myBrown,

                        ),
                      
                      ),

                    ],
                  )
                ],
              )
      ]
      )
      ]
      ),
      )
      )
  );}
}
