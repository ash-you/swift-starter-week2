//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


for _ in 1...5 {
    generateLottoNumber()
}

printLottoHistory(round: 1)
printLottoHistory(round: 2)
printLottoHistory(round: 3)
printLottoHistory(round: 4)
printLottoHistory(round: 5)

if let lottoResult = lottoHistory["1회차"] {
    checkLottoResult(with: lottoResult)
}

if let lottoResult = lottoHistory["2회차"] {
    checkLottoResult(with: lottoResult)
}

if let lottoResult = lottoHistory["3회차"] {
    checkLottoResult(with: lottoResult)
}

if let lottoResult = lottoHistory["4회차"] {
    checkLottoResult(with: lottoResult)
}

if let lottoResult = lottoHistory["5회차"] {
    checkLottoResult(with: lottoResult)
}
