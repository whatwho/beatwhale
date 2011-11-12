module Beatwhale
  class Song
    attr_accessor :artist_name, :is_low_bitrate_available, :cover_art_filename, :song_name, :artist_id,
                  :is_verified, :album_name, :flags, :song_id, :popularity, :album_id

    def initialize( attributes = {} )
      self.artist_name = attributes["ArtistName"]
      self.is_low_bitrate_available = attributes["IsLowBitrateAvailable"]
      self.cover_art_filename = attributes["CoverArtFilename"]
      self.song_name = attributes["SongName"]
      self.artist_id = attributes["ArtistID"]
      self.is_verified = attributes["IsVerified"]
      self.album_name = attributes["AlbumName"]
      self.flags = attributes["Flags"]
      self.song_id = attributes["SongID"]
      self.popularity = attributes["Popularity"]
      self.album_id = attributes["AlbumID"]
    end
  end
  
end
