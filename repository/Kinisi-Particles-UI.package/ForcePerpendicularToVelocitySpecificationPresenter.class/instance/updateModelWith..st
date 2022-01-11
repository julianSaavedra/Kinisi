private
updateModelWith: newSpecification
 
	postModelChangeAction value: newSpecification.
	specification := newSpecification