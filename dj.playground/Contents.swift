class Jukebox {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func play(repeatEach: Bool) -> String {
        if repeatEach {
            var newSongs = [String]()
            for song in self.songs {
                newSongs.append(song)
                newSongs.append(song)
            }
            self.songs = newSongs
        }
        
        return self.songs.joinWithSeparator("\n")
    }
}

Jukebox().play(true)

Jukebox().play(false)
