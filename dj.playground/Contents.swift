class Playlist {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func play() -> String {
        return self.songs.joinWithSeparator("\n")
    }
}

Playlist().play()
