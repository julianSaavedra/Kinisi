private
newEndPointElementIn: aView

	| endPointElement |
	endPointElement := self dotShape elementOn: #Velocity.
	aView add: endPointElement.
	
	^endPointElement