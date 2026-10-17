Class {
	#name : 'MyChessRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessRenderingTest >> testBishopRendering [

    | board whiteBishop blackBishop whiteSquare blackSquare |

    board := MyChessBoard empty.

    whiteBishop := MyBishop white.
    blackBishop := MyBishop black.

    whiteSquare := board at: 'e4'.
    blackSquare := board at: 'f4'.

    self
        assert: (whiteBishop renderPieceOn: whiteSquare)
        equals: 'B'.

    self
        assert: (whiteBishop renderPieceOn: blackSquare)
        equals: 'b'.

    self
        assert: (blackBishop renderPieceOn: whiteSquare)
        equals: 'V'.

    self
        assert: (blackBishop renderPieceOn: blackSquare)
        equals: 'v'
]

{ #category : 'tests' }
MyChessRenderingTest >> testKingRendering [

    | board whitePiece blackPiece whiteSquare blackSquare |

    board := MyChessBoard empty.
    whitePiece := MyKing white.
    blackPiece := MyKing black.
    whiteSquare := board at: 'e4'.
    blackSquare := board at: 'f4'.

    self assert: (whitePiece renderPieceOn: whiteSquare) equals: 'K'.
    self assert: (whitePiece renderPieceOn: blackSquare) equals: 'k'.
    self assert: (blackPiece renderPieceOn: whiteSquare) equals: 'L'.
    self assert: (blackPiece renderPieceOn: blackSquare) equals: 'l'
]

{ #category : 'tests' }
MyChessRenderingTest >> testKnightRendering [

    | board whitePiece blackPiece whiteSquare blackSquare |

    board := MyChessBoard empty.
    whitePiece := MyKnight white.
    blackPiece := MyKnight black.
    whiteSquare := board at: 'e4'.
    blackSquare := board at: 'f4'.

    self assert: (whitePiece renderPieceOn: whiteSquare) equals: 'N'.
    self assert: (whitePiece renderPieceOn: blackSquare) equals: 'n'.
    self assert: (blackPiece renderPieceOn: whiteSquare) equals: 'M'.
    self assert: (blackPiece renderPieceOn: blackSquare) equals: 'm'
]

{ #category : 'tests' }
MyChessRenderingTest >> testPawnRendering [

    | board whitePiece blackPiece whiteSquare blackSquare |

    board := MyChessBoard empty.
    whitePiece := MyPawn white.
    blackPiece := MyPawn black.
    whiteSquare := board at: 'e4'.
    blackSquare := board at: 'f4'.

    self assert: (whitePiece renderPieceOn: whiteSquare) equals: 'P'.
    self assert: (whitePiece renderPieceOn: blackSquare) equals: 'p'.
    self assert: (blackPiece renderPieceOn: whiteSquare) equals: 'O'.
    self assert: (blackPiece renderPieceOn: blackSquare) equals: 'o'
]

{ #category : 'tests' }
MyChessRenderingTest >> testQueenRendering [

    | board whitePiece blackPiece whiteSquare blackSquare |

    board := MyChessBoard empty.
    whitePiece := MyQueen white.
    blackPiece := MyQueen black.
    whiteSquare := board at: 'e4'.
    blackSquare := board at: 'f4'.

    self assert: (whitePiece renderPieceOn: whiteSquare) equals: 'Q'.
    self assert: (whitePiece renderPieceOn: blackSquare) equals: 'q'.
    self assert: (blackPiece renderPieceOn: whiteSquare) equals: 'W'.
    self assert: (blackPiece renderPieceOn: blackSquare) equals: 'w'
]
