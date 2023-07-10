class AppwriteConstants {
  static const String databaseId = '64a10ff36b0fc470c973';
  static const String projectId = '6423ba26ef6c810b3753';
  static const String endPoint = 'https://baas.pasarjepara.com/v1';

  static const String usersCollection = '63cb8ae73960973b0635';
  static const String tweetsCollection = '64a1100b2dbec625422d';
  static const String notificationsCollection = '63cd5ff88b08e40a11bc';

  static const String imagesBucket = '63cbdab48cdbccb6b34e';

  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
