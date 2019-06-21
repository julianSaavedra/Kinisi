asserting
assertAxisReferencePointsAreMovedBy: expectedMovement fromTheCenterOfCanvasIn: aView

	| canvas axisSize expectedOriginPointPosition expectedXAxisPoint expectedYAxisPoint |
	axisSize := self defaultAxisSize.
	expectedOriginPointPosition := 0@0 + expectedMovement.
	expectedXAxisPoint := axisSize@0 + expectedMovement.
	expectedYAxisPoint := 0@axisSize negated + expectedMovement.
	
	canvas := aView canvas.
	(Array with: expectedXAxisPoint with: expectedYAxisPoint) do: [:axisPoint |
		self
			assert: (canvas shapeForPosition: axisPoint) from
			equals: expectedOriginPointPosition]
		
	