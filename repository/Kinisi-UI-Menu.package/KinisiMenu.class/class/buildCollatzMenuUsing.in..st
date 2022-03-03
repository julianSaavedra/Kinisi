private - menu construction
buildCollatzMenuUsing: builder in: menu

	(builder item: #CollatzConjecture)
		label: 'Collatz Conjecture';
		target: menu;
		order: 1;
		iconName: #smallNew;
		with: [ 
			(builder item: 'Open new lab')
				target: menu;
				selector: #openCollatzLab;
				help: 'Open Lab over Collatz domain.';
				order: 1;
				iconName: #workspace;
				withSeparatorAfter.
			(builder item: 'ExamplesCollatz')
				label: 'Examples';
				order: 2;
				iconName: #glamorousOpen;
				with: [ 
					self
						add: self collatzExampleItemDefinitions
						with: #openCollatzLabWith:
						to: menu
						using: builder ] ]