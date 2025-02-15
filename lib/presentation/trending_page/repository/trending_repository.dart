import '../models/momentcard_item_model.dart';

class TrendingRepository {
  Future<List<MomentcardItemModel>> getTrendingMoments() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    return [
      MomentcardItemModel(
        image: "img_rectangle_49",
        username: "John Doe",
        timeAgo: "2 hours ago",
        description: "This is a sample moment description",
        tag1: "#travel",
        tag2: "#photography",
        tag3: "#adventure",
      ),
      MomentcardItemModel(
        image: "img_rectangle_50",
        username: "Jane Smith",
        timeAgo: "5 hours ago",
        description: "Another amazing moment to share",
        tag1: "#lifestyle",
        tag2: "#food",
        tag3: "#culture",
      ),
    ];
  }
}
