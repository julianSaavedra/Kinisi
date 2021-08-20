instance creation
forCollatzConjectureWith: example
 
	^self
		title: 'Lab - Collatz Conjecture'
		extent: 600 @ 450
		with: (CollatzConjecturePresenterSpecification basedOn: example)