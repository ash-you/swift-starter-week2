//
//  generateLottoNumber.swift.swift
//  CodeStarterCamp_Week2
//
//  Created by 유연수 on 2022/04/28.
//

import Foundation


func generateLottoNumber(numberOfWinningNumbers: Int = 6) -> [Int] {
    var lottoWinningNumbers: [Int] = []

    while lottoWinningNumbers.count < numberOfWinningNumbers {
        let randomNumber = Int.random(in: 1...45)
        
        if lottoWinningNumbers.contains(randomNumber) == false {
                lottoWinningNumbers.append(randomNumber)
        }
    }
    
    saveLottoHistory(lottoWinningNumbers)
    return lottoWinningNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkLottoResult(with lottoWinningNumbers: [Int]) {
    let lottoWinningNumbers: [Int] = lottoWinningNumbers
    var matchedNumbers: [Int] = []
    
    for index in 0..<lottoWinningNumbers.endIndex {
        if myLottoNumbers.contains(lottoWinningNumbers[index]) == true {
            matchedNumbers.append(lottoWinningNumbers[index])
        }
    }
    
    let lastIndex = matchedNumbers.endIndex - 1
    
    if matchedNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 0...lastIndex {
            if index == lastIndex {
                print(matchedNumbers[index], terminator: " ")
            }
            else {
                print(matchedNumbers[index], terminator: ", ")
            }
        }
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

var lottoHistory: [String: [Int]] = [:]

func saveLottoHistory(_ lottoWinningNumbers: [Int]){
    let round = lottoHistory.count + 1
    lottoHistory["\(round)회차"] = lottoWinningNumbers
}

func printLottoHistory(round: Int) {
    if let value = lottoHistory["\(round)회차"] {
        let lastIndex: Int = value.index(before: value.endIndex)
        
        print("\(round)회차의 로또 당첨 번호는 ", terminator: "")
        for index in 0...lastIndex {
            if index == lastIndex {
                print(value[index], terminator: " ")
            } else {
                print(value[index], terminator: ", ")
            }
        }
        print("입니다.")
    }
}
