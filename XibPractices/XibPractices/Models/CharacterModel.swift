//
//  CharacterModel.swift
//  XibPractices
//
//  Created by Debora Lage Moreira Barbosa on 19/12/23.
//

import Foundation

struct Character: Codable {
    let id: Int
    let name: String
    let status: String //('Alive', 'Dead' or 'unknown')
    let species: String
    let type: String?
    let gender: String // Female', 'Male', 'Genderless' or 'unknown'
    let origin: CharacterLocation
    let location: CharacterLocation
    let image: String // url
    let episode: [String]
    let url: String
    let created: String
}

struct CharacterInfo: Codable {
    let info: Info
    let results: [Character]
}

struct CharacterLocation: Codable {
    let name: String
    let url: String
}

struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
