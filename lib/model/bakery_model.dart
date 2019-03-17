class Bakery {
  String id;
  List<String> type;
  String name;
  double ppu;
  Batters batters;

  Bakery({this.id, this.type, this.name, this.ppu, this.batters});

  Bakery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'].cast<String>();
    name = json['name'];
    ppu = json['ppu'];
    batters =
    json['batters'] != null ? new Batters.fromJson(json['batters']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['ppu'] = this.ppu;
    if (this.batters != null) {
      data['batters'] = this.batters.toJson();
    }
    return data;
  }
}

class Batters {
  String id;
  String type;

  Batters({this.id, this.type});

  Batters.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    return data;
  }
}