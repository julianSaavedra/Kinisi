experiment
runExperimentWithDisplays

	| experiment displayProvider displays |
	experiment := lab newExperiment.
	displayProvider := DisplayProvider using: (PresenterDisplayProviderSpecification with: ScreenProvider new).
	displays := displayProvider displaysFor: experiment.
	displays do: [:display |
		| displayPresenter window |
		displayPresenter := self instantiate: DisplayPresenter on: display.
		window := displayPresenter openWithSpec.
		window extent: configuration windowInitialExtent ].
	experiment run