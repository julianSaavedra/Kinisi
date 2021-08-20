options
openCollatzLabWith: example

	| presenterConfiguration |
	presenterConfiguration := LabPresenterSpecification forCollatzConjectureWith: example.
	self openLabBasedOn: presenterConfiguration