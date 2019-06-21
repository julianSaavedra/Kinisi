actions
drawIn: aView movedFromCenterToLeftBottomCornerBy: distance

	"Moving 'FromCenterToLeftBottomCorner' means moving in 0.79 radians / 45 degrees direction (both left and down).
	This means that distance given to renderer will be multiplied by sin(45°) for both components (x and y) "
	| absoluteComponentMovement |
	absoluteComponentMovement := distance * 0.79 sin. "0.79 rad = 45 degrees"
	self
		drawIn: aView
		movedFromCenterBy: absoluteComponentMovement negated @ absoluteComponentMovement
	