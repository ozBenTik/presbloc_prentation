abstract class ImageEvent {
  String get eventName;
  String get url;
}

class PinkPantherImageEvent extends ImageEvent {
  @override
  String get eventName => 'Pink Panther';

  @override
  // TODO: implement url
  String get url => 'https://petticoatparlor.com/prodimages/pink%20panther%20(1).jpg';
}

class LisaImageEvent extends ImageEvent {
  @override
  String get eventName => 'Lisa Simpson';

  @override
  // TODO: implement url
  String get url => 'https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F82109c15-5f39-4882-9bec-55e074a81c03_1080x1080.png';
}

class OctopusImageEvent extends ImageEvent {
  @override
  String get eventName => 'Octopus';

  @override
  // TODO: implement url
  String get url => 'https://images.theconversation.com/files/443875/original/file-20220201-25-lb03xa.jpg';
}