instance creation
forCollatzConjectureShowing: example

	| specification |
	specification := CollatzConjecturePresenterSpecification basedOn: example.
	^self forCollatzConjectureWith: specification