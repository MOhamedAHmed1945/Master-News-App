class CategoryNewsModel {
  String newsImageCategories;
  String newsTitleCategories;

  CategoryNewsModel({
    this.newsImageCategories = 'assets/images/topStory.jpeg',
    this.newsTitleCategories = 'Unknown News',
  });
}

List<CategoryNewsModel> allNewsCategories = [
  CategoryNewsModel(
    newsImageCategories: 'assets/images/topStory.jpeg',
    newsTitleCategories: 'Top Stories',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Business.jpeg',
    newsTitleCategories: 'Business',
  ),
  CategoryNewsModel(
    newsImageCategories:
        'assets/images/World.jpeg', //'assets/Images/World.jpeg',
    newsTitleCategories: 'World',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Sports.jpeg',
    newsTitleCategories: 'Sports',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Tech.jpeg',
    newsTitleCategories: 'Tech',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Education.jpeg',
    newsTitleCategories: 'Education',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Music.jpeg',
    newsTitleCategories: 'Music',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Health and Fitness.jpeg',
    newsTitleCategories: 'Health and Fitness',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Fashion.jpeg',
    newsTitleCategories: 'Fashion',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Travel.jpeg',
    newsTitleCategories: 'Travel',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Its Viral.jpeg',
    newsTitleCategories: 'Its Viral',
  ),
  CategoryNewsModel(
    newsImageCategories: 'assets/images/Real Estate.jpg',
    newsTitleCategories: 'Real Estate',
  ),
];
