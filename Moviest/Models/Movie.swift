//
//  Movie.swift
//  Moviest
//
//  Created by Nankun Xu on 3/17/24.
//

import Foundation

struct TrendingMoviesResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let id: Int
    let media_type: String?
    let original_language: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}


//{
//adult = 0;
//"backdrop_path" = "/pwGmXVKUgKN13psUjlhC9zBcq1o.jpg";
//"genre_ids" =             (
//28,
//14
//);
//id = 634492;
//"media_type" = movie;
//"original_language" = en;
//"original_title" = "Madame Web";
//overview = "Forced to confront revelations about her past, paramedic Cassandra Webb forges a relationship with three young women destined for powerful futures...if they can all survive a deadly present.";
//popularity = "425.492";
//"poster_path" = "/rULWuutDcN5NvtiZi4FRPzRYWSh.jpg";
//"release_date" = "2024-02-14";
//title = "Madame Web";
//video = 0;
//"vote_average" = "5.362";
//"vote_count" = 466;
//}
