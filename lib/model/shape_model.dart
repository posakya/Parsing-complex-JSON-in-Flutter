class Shape {
  String shapeName;
  Property property;

  Shape({this.shapeName, this.property});

  Shape.fromJson(Map<String, dynamic> json) {
    shapeName = json['shape_name'];
    property = json['property'] != null
        ? new Property.fromJson(json['property'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shape_name'] = this.shapeName;
    if (this.property != null) {
      data['property'] = this.property.toJson();
    }
    return data;
  }
}

class Property {
  double width;
  double breadth;

  Property({this.width, this.breadth});

  Property.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    breadth = json['breadth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['breadth'] = this.breadth;
    return data;
  }
}
