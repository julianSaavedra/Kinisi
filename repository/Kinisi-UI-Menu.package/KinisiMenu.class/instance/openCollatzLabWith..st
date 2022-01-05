options
openCollatzLabWith: example

	| presenterConfiguration |
	presenterConfiguration := LabPresenterSpecification forCollatzConjectureShowing: example.
	self openLabBasedOn: presenterConfiguration