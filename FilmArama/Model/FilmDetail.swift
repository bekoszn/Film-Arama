//
//  Detail.swift
//  FilmArama
//
//  Created by Berke Özgüder on 7.05.2024.
//

import Foundation

struct FilmDetail: Codable {
    
    let title: String
    let year: String
    let imdbId: String
    let type: String
    let poster: String
    let actors: String
    let genre: String
    let language: String
    let awards: String
    let imdbRating: String
    let released: String
    let runtime: String
    let metascore: String
    let plot: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case type = "Type"
        case poster = "Poster"
        case actors = "Actors"
        case plot = "Plot"
        case genre = "Genre"
        case language = "Language"
        case awards = "Awards"
        case imdbRating = "imdbRating"
        case released = "Released"
        case runtime = "Runtime"
        case metascore = "Metascore"
    }
}


