class Address {
  String city;
  List<String> streets;

  Address({
    this.city,
    this.streets
  });

  Address.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    streets = json['streets'].cast<String>();
  }

//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['city'] = this.city;
//    data['streets'] = this.streets;
//    return data;
//  }
}