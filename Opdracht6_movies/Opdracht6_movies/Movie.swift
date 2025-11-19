//
//  Movie.swift
//  Opdracht6_movies
//
//  Created by Wout Devriese on 19/11/2025.
//

import Foundation

struct Movie: Codable, Hashable {
    var title: String
    var description: String
    var actors: [Actor]
    var director: Director
    var releaseDate: String
}
