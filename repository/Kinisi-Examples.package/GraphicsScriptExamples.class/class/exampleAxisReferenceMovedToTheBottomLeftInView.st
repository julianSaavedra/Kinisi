graphic - decorations
exampleAxisReferenceMovedToTheBottomLeftInView

	self
		openWindowNamed: 'Axis Reference - Moved from center'
		inCanvasDraw: [:canvas | 
			canvas color: Color black.
			(AxisReferenceRenderer movedFromCenterBy: 50) drawIn: canvas ]