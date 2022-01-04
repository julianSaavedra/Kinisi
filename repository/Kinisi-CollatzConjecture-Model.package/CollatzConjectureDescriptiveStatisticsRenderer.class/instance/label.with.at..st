private 
label: indicatorBox with: indicatorName at: labelLocation

	| evensLabeled |
	evensLabeled := RSLabeled new.
	evensLabeled fontSize: 20.
	evensLabeled shapeBuilder labelShape color: color.
	evensLabeled text: [ indicatorName ].
	labelLocation value: evensLabeled location.
	indicatorBox @ evensLabeled