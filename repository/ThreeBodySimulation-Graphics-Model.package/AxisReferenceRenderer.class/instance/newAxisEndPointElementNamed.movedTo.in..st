private
newAxisEndPointElementNamed: axisName movedTo: aPoint in: aView

	| axisEndPointElement |
	axisEndPointElement := self
		newPointElementNamed: axisName
		movedTo: aPoint
		in: aView.
	axisEndPointElement @ RTLabeled.

	^axisEndPointElement