private
newPointElementNamed: pointName movedTo: aPoint in: aView

	| pointElement |
	pointElement := self dotShape elementOn: pointName asSymbol.
	aView add: pointElement.
	pointElement translateTo: aPoint.

	^pointElement