initialization
initializePosition

	| unitProvider units |
	unitProvider := self unitProvider.
	units := {unitProvider milimeter. unitProvider meter. unitProvider kilometer}.
	position := self instantiate: VectorMeasurePresenter on: particle position.
	position
		label: 'Position';
		units: units;
		changeModelWith: [:newPosition | particle position: newPosition ]