/*
 Love Yourself
 Stressed Out
 Work
*/


enum Mode {
    case Normal
    case RepeatEach
    case RepeatAll
}

class RepeatEachMode {
    func newSongs(songs: [String]) -> [String] {
        var repeated = [String]()
        for song in songs {
            repeated.append(song)
            repeated.append(song)
        }
        return repeated
    }
}

class RepeatAllMode {
    func newSongs(songs: [String]) -> [String] {
        return songs + songs
    }
}

class Jukebox {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func play(mode: Mode) -> String {
        switch mode {
        case .Normal:
            break
            
        case .RepeatEach:
            self.songs = RepeatEachMode().newSongs(self.songs)
            
        case .RepeatAll:
            self.songs = RepeatAllMode().newSongs(self.songs)
        }
        
        return self.songs.joinWithSeparator("\n")
    }
}

Jukebox().play(.Normal)

Jukebox().play(.RepeatEach)

Jukebox().play(.RepeatAll)
