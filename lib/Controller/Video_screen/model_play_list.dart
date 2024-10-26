class ModelPlayList {
  final String video_title;
  final String video_duration;
  final String? video_image;
  void Function()? video_path;

  ModelPlayList(
      {required this.video_title,
      required this.video_duration,
      this.video_image});
}