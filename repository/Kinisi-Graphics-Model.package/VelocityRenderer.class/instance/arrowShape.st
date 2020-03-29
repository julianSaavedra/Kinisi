private
arrowShape

	| velocityShape |
	velocityShape := RTArrowedLine new.
	velocityShape head size: 10; width: 3.
	velocityShape width: 3; color: color.
	
	^velocityShape