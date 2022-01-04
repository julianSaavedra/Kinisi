private
toggleVisibility

	particle isVisible
		ifTrue: [ particle makeYourselfInvisible ]
		ifFalse: [ particle makeYourselfVisible ]