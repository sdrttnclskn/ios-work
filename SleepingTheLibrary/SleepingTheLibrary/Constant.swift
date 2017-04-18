

import Foundation

struct Constant {

    
    struct Flickr {
        static let APIBaseURL = "https://api.flickr.com/services/rest/"
    }
    
    struct FlickersParameterKeys {
        static let Method = "method"
        static let APIKey = "api_key"
        static let USERId = "user_id"
        static let Extras = "extras"
        static let Format = "format"
        static let Nojsoncallback = "nojsoncallback"
        static let AuoToken = "auth_token"
        static let  APISgi = "api_sig"
    }
    
    struct FlickersParameterValues {
        static let Method = "flickr.photos.search"
        static let APIKey = "e9a8cf28694771511e7cc036d86ef637"
        static let USERId = "154001873%40N02"
        static let Extras = "url_m"
        static let Format = "json"
        static let Nojsoncallback = "1"
        static let AuoToken = "72157680136613912-c8c74775987042da"
        static let  APISgi = "59e718dbff0b5714801bc254930775b8"
    }
}
