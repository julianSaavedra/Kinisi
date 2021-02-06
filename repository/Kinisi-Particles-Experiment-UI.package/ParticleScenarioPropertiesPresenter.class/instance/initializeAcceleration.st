initialization
initializeAcceleration

	| unitProvider |
	unitProvider := self unitProvider.
	acceleration := self
		instantiate: VectorMeasurePresenter
		on: particle acceleration.
	acceleration
		label: 'Acceleration';
		units: {unitProvider standardAccelerationUnit};
		changeModelWith: [:newAcceleration | particle acceleration: newAcceleration ]