//
//  Game.swift
//  Apple Pie
//
//  Created by amasiero on 24/02/21.
//

import Foundation

struct Game {
	var word = String()
	var incorrectMovesRemaining = Int()
	var guessedLetters: [Character]
	var formattedWord: String{
		var guessedWord = ""
		for letter in word {
			guessedWord += guessedLetters.contains(letter) ? "\(letter)" : "_"
		}
		return guessedWord
	}
	
	
	
	mutating func playerGuessed(letter: Character) {
		guessedLetters.append(letter)
		if !word.contains(letter) {
			incorrectMovesRemaining -= 1
		}
	}
	
	
	
	
}
