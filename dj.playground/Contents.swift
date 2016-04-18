protocol Mixer {
    func newSongs(songs: [String]) -> [String]
}

class DJ: Mixer {
    func newSongs(songs: [String]) -> [String] {
        return [
            "Ice Ice Baby",
            "No Woman No Cry",
            "Another Brick In The Wall"
        ]
    }
}

class Mode: Mixer {
    func newSongs(songs: [String]) -> [String] {
        return songs
    }
}

class RepeatEachMode: Mode {
    override func newSongs(songs: [String]) -> [String] {
        var repeated = [String]()
        for song in songs {
            repeated.append(song)
            repeated.append(song)
        }
        return repeated
    }
}

class RepeatAllMode: Mode {
    override func newSongs(songs: [String]) -> [String] {
        return songs + songs
    }
}

class ReverseMode: Mode {
    override func newSongs(songs: [String]) -> [String] {
        return songs.reverse()
    }
}

class Jukebox {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func play(mixer: Mixer) -> String {
        self.songs = mixer.newSongs(self.songs)
        
        return self.songs.joinWithSeparator("\n")
    }
}

Jukebox().play(DJ())


Jukebox().play(Mode())

Jukebox().play(RepeatEachMode())

Jukebox().play(RepeatAllMode())

Jukebox().play(ReverseMode())


