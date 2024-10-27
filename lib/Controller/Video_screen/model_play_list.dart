// ignore_for_file: non_constant_identifier_names

class ModelPlayList {
  final String title;
  final String video_duration;
  final String video_thumbnail;
  final Function()? video_path;

  ModelPlayList(
      {required this.title,
      required this.video_duration,
      required this.video_thumbnail,
       this.video_path});
}
