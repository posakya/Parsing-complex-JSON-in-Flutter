class PhotosList {
  List<Photo> photos;

  PhotosList(this.photos);

  factory PhotosList.fromJson(List<dynamic> json){
    List<Photo> photos = new List<Photo>();
    photos = json.map((i)=>Photo.fromJson(i)).toList();

    return new PhotosList(photos);
  }

}

class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String,dynamic> json){
    return new Photo(
      id:json['id'],
      albumId: json['albumId'],
      url: json['url'],
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl']
    );
  }

}