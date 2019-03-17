class Menu {
  List<Data> data;

  Menu(this.data);

  factory Menu.fromJson(List<dynamic> json){
    List<Data> menu = new List<Data>();
    menu = json.map((i) => Data.fromJson(i)).toList();

    return new Menu(menu);
  }
}

class Data {
  String mCatID;
  String mCatName;
  List<Products> products;

  Data({this.mCatID, this.mCatName, this.products});

  Data.fromJson(Map<String, dynamic> json) {
    mCatID = json['MCatID'];
    mCatName = json['MCatName'];
    if (json['Products'] != null) {
      products = new List<Products>();
      json['Products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MCatID'] = this.mCatID;
    data['MCatName'] = this.mCatName;
    if (this.products != null) {
      data['Products'] = this.products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String mID;
  String mDetail;
  String mprice;

  Products({this.mID, this.mDetail, this.mprice});

  Products.fromJson(Map<String, dynamic> json) {
    mID = json['MID'];
    mDetail = json['MDetail'];
    mprice = json['Mprice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MID'] = this.mID;
    data['MDetail'] = this.mDetail;
    data['Mprice'] = this.mprice;
    return data;
  }
}