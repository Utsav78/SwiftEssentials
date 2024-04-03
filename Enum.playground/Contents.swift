import UIKit

enum MusicGenre {
    // Define cases for different genres
    case rock(albums: [String], topSongs: [String])
    case pop(artist: String, hitSongs: [String])
    case hipHop(artists: [String], popularTracks: [String])
    case electronic(subGenres: [String], popularTracks: [String])
    case classical(composers: [String], famousPieces: [String])
    
    // Add a function to get a description of each genre
    func description() -> String {
        switch self {
        case .rock:
            return "Rock music features electric guitars, drums, and passionate vocals."
        case .pop:
            return "Pop music is characterized by catchy melodies and widespread appeal."
        case .hipHop:
            return "Hip-hop music is known for its rhythmic delivery and lyrical content."
        case .electronic:
            return "Electronic music relies heavily on synthesizers and electronic beats."
        case .classical:
            return "Classical music encompasses a wide range of styles from various time periods."
        }
    }
}


let rockGenre = MusicGenre.rock(albums: ["Back in Black", "Led Zeppelin IV"], topSongs: ["Stairway to Heaven", "Bohemian Rhapsody"])
print(rockGenre.description())

let popGenre = MusicGenre.pop(artist: "Taylor Swift", hitSongs: ["Shake It Off", "Blank Space"])
print(popGenre.description())

let hipHopGenre = MusicGenre.hipHop(artists: ["Kendrick Lamar", "Drake"], popularTracks: ["HUMBLE.", "Hotline Bling"])
print(hipHopGenre.description())

let electronicGenre = MusicGenre.electronic(subGenres: ["Techno", "House"], popularTracks: ["Levels", "One More Time"])
print(electronicGenre.description())

let classicalGenre = MusicGenre.classical(composers: ["Mozart", "Beethoven"], famousPieces: ["Symphony No. 5", "Eine kleine Nachtmusik"])
print(classicalGenre.description())

