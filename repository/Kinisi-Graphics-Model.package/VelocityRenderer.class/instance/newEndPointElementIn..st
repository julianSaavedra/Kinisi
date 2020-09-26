private
newEndPointElementIn: aView

	| endPointElement |
	endPointElement := self dotShape.
	endPointElement model: #Velocity.
	aView add: endPointElement.
	
	^endPointElement