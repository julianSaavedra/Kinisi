private
horizontalTick

	| horizontalTick |
	horizontalTick := RSHorizontalTick new
		                  integer;
		                  fontSize: 8;
		                  yourself.
	observationIndices size < 5 ifTrue: [ 
		horizontalTick numberOfTicks: observationIndices size ].
	^ horizontalTick