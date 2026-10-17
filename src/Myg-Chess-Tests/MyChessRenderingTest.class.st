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
