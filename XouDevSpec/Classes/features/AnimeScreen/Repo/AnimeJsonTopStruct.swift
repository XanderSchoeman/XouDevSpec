


import Foundation

public struct animeTopInfoStruct: Decodable {
    public var request_hash: String = ""
    public var request_cached: Bool = true
    public var request_cache_expiry: Int? = 0
    public var top = [TopStruct]()
    
    public init() {
    }
        
}

public struct TopStruct: Decodable {
    public var mal_id: Int = 0
    public var rank: Int? = 0
  public var title: String? = ""
    public  var url: String? = ""
    public var image_url: String? = ""
    public var type: String = "Anime"
    public var episodes: Int? = 0
    public var start_date: String? = ""
    public var end_date: String? = ""
    public var members: Int? = 0
    public var score: Double? = 0.0
    
    public init( ){
    }
}
