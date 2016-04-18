enum Mode {
    case Normal
    case RepeatEach
    case RepeatAll
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
            var newSongs = [String]()
            for song in self.songs {
                newSongs.append(song)
                newSongs.append(song)
            }
            self.songs = newSongs
            
        case .RepeatAll:
            self.songs = self.songs + self.songs
            
        }
        
        return self.songs.joinWithSeparator("\n")
    }
}

Jukebox().play(.Normal)

Jukebox().play(.RepeatEach)

Jukebox().play(.RepeatAll)
