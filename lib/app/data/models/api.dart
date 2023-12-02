class Album {
    List<AlbumElement> albums;

    Album({
        required this.albums,
    });

}

class AlbumElement {
    String albumType;
    List<dynamic> artists;
    List<dynamic> availableMarkets;
    List<dynamic> copyrights;
    ExternalIds externalIds;
    ExternalIds externalUrls;
    List<dynamic> genres;
    String href;
    String id;
    List<dynamic> images;
    String name;
    int popularity;
    String releaseDate;
    String releaseDatePrecision;
    ExternalIds tracks;
    String type;
    String uri;

    AlbumElement({
        required this.albumType,
        required this.artists,
        required this.availableMarkets,
        required this.copyrights,
        required this.externalIds,
        required this.externalUrls,
        required this.genres,
        required this.href,
        required this.id,
        required this.images,
        required this.name,
        required this.popularity,
        required this.releaseDate,
        required this.releaseDatePrecision,
        required this.tracks,
        required this.type,
        required this.uri,
    });

}

class ExternalIds {
    ExternalIds();
}
