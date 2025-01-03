part of 'pagination_repository.dart';

class PaginationRepoImpl implements PaginationRepository {
  PaginationRepoImpl({required this.httpClient});

  final HttpClient httpClient;

  @override
  Future<ListingsModel> getLatestListings(int limit, int skip) {
    return httpClient
        .get<JsonObject>(
      path: ApiEndPoints.fetchListings(limit, skip),
    )
        .then(
      (json) {
        return ListingsModel.fromJson(json);
      },
    );
  }
}
