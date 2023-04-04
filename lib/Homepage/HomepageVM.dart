
import 'dart:math';
//Import HomepageModel
import 'package:colorchanger/Homepage/HomepageModel.dart';

// Create a class HomepageVM which extends HomepageModel
class HomepageVM extends HomepageModel {
  // Declare the method changecolor to change the color
  void changecolor() {
    // Declare a variable scafcol with type var and assign the collectionOfColors
    var scafcol =
        collectionOfColors[Random().nextInt(collectionOfColors.length)];
     // Declare a variable Butcol with type var and assign the collectionOfColors
    var butcol =
        collectionOfColors[Random().nextInt(collectionOfColors.length)];

    //Checks for the conditon scafcol!=butcol
    if (scafcol!=butcol){
      // Invoke the colorchanger()
    colorchanger(scaffoldColor: scafcol,buttonColor: butcol);
    }
    
  }
}
