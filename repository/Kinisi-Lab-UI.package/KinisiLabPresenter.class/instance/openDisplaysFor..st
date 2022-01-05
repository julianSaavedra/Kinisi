private
openDisplaysFor: experiment

	| displays |
	displays := self displayProvider displaysFor: experiment.
	displays do: [ :display | 
		| displayPresenter window |
		displayPresenter := self instantiate: DisplayPresenter on: display.
		window := displayPresenter openWithSpec.
		window extent: configuration windowInitialExtent ]