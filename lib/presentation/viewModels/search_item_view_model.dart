class SearchItemViewModel {
  int? floor;
  bool? isClass;
  bool? searchByFloor;
  String? substring = '';

  SearchItemViewModel(
      {this.floor, this.isClass, this.searchByFloor, this.substring});

  void setFloor(int newFloor) {
    floor = newFloor;
  }

  void setIsClass(bool classRoom) {
    isClass = classRoom;
  }

  void setSearchByFloor(bool searchFloor) {
    searchByFloor = searchFloor;
  }
}