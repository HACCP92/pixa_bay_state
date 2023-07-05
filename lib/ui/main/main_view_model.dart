import 'package:flutter/material.dart';
import 'package:pixa_bay_state/data/model/photo.dart';
import 'package:pixa_bay_state/data/repository/photo_repository.dart';

class MainViewModel with ChangeNotifier {
  final PhotoRepository _repository;

  MainViewModel(this._repository);
  List<Photo> _photos = [];
  List<Photo> get photos => _photos;

  bool _isloading = false;
  bool get isloading => _isloading;

  void fetchImages(String query) async {
    _isloading = true;
    notifyListeners();

    _photos = await _repository.getPhotos(query);

    _isloading = false;
    notifyListeners();
  }
}
