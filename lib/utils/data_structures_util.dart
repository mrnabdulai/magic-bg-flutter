import 'dart:math';
///Utility class for data structures
///Utitilties are code snippets that are used in multiple places and for solving common problems applications wide regardless of the layer in architure
class DataStructuresUtil {

  ///Returns a random element from a list of type T
  static T getRandomElement<T>(List<T> list) {
    final random =  Random();

    final i = random.nextInt(list.length);

    return list[i];
  }
}
