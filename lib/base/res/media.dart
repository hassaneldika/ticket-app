//it is good for optimization and feature maintenance

class AppMedia {
  //static means that this variable _baseImage it is not part of the class instance
  //but it is part of the class itself which means we can directly use the class
  //name to access it (_baseImage)
  static const _baseImage = 'assets/images';
  static const logo = '$_baseImage/logo.png';
}
