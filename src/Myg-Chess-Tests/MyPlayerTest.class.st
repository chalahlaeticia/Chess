Class {
	#name : 'MyPlayerTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPlayerTest >> testCaptureStrategyChoosesCapture [

    | board rook pawn target strategy |

    board := MyChessBoard empty.
    rook := MyRook white.
    pawn := MyPawn black.

    board at: 'a2' put: rook.
    board at: 'a3' put: pawn.

    strategy := MyCaptureStrategy new.
    target := strategy chooseFrom: rook legalTargetSquares.

    self assert: target equals: (board at: 'a3')
]

{ #category : 'tests' }
MyPlayerTest >> testFirstStrategyChoosesFirstElement [

    | choices result |

    choices := #(a b c).
    result := MyFirstStrategy new chooseFrom: choices.

    self assert: result equals: #a
]

{ #category : 'tests' }
MyPlayerTest >> testPlayerCanChangeStrategy [

    | player newStrategy |

    player := MyPlayer new.
    newStrategy := MyFirstStrategy new.

    player strategy: newStrategy.

    self assert: player strategy identicalTo: newStrategy
]

{ #category : 'tests' }
MyPlayerTest >> testRandomStrategyChoosesAnAvailableElement [

    | choices result |

    choices := #(a b c).
    result := MyRandomStrategy new chooseFrom: choices.

    self assert: (choices includes: result)
]

{ #category : 'tests' }
MyPlayerTest >> testUsesRandomStrategyByDefault [

    | player |

    player := MyPlayer new.

    self assert: player strategy class equals: MyRandomStrategy
]

{ #category : 'tests' }
MyPlayerTest >> testWhitePlayerHasSixteenPieces [

    | board player |

    board := MyChessGame freshGame.
    player := MyPlayer new
        game: board;
        white;
        yourself.

    self assert: player pieces size equals: 16
]
