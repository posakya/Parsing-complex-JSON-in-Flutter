class College {
  String name;
  List<String> majors;
  List<Subjects> subjects;

  College({this.name, this.majors, this.subjects});

  College.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    majors = json['majors'].cast<String>();
    if (json['subjects'] != null) {
      subjects = new List<Subjects>();
      json['subjects'].forEach((v) {
        subjects.add(new Subjects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['majors'] = this.majors;
    if (this.subjects != null) {
      data['subjects'] = this.subjects.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Subjects {
  String subjectName;
  String teacher;

  Subjects({this.subjectName, this.teacher});

  Subjects.fromJson(Map<String, dynamic> json) {
    subjectName = json['subjectName'];
    teacher = json['teacher'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subjectName'] = this.subjectName;
    data['teacher'] = this.teacher;
    return data;
  }
}