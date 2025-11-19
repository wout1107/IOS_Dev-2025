//
//  Director.swift
//  Opdracht6_movies
//
//  Created by Wout Devriese on 19/11/2025.
//

import Foundation

struct Director: Codable, Hashable {
    var firstName: String
    var lastName: String
    var moviesDirected: [String]
}
