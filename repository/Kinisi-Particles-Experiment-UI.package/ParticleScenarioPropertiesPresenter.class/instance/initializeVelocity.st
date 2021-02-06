initialization
initializeVelocity

	| unitProvider |
	unitProvider := self unitProvider.
	velocity := self
		instantiate: VectorMeasurePresenter
		on: particle velocity.
	velocity
		label: 'Velocity';
		units: {unitProvider standardVelocityUnit};
		changeModelWith: [ :newVelocity | particle velocity: newVelocity ]