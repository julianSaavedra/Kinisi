menu construction
buildUsing: builder

	"See WorldState class>>#pharoItemsOn:"
	| menu |
	menu := self new.
	(builder item: #Kinisi)
		label: 'Kinisi';
		iconName: #remote;
		order: 2.5;
		help: 'Kinisi simulation workbench';
		withSeparatorAfter;
		with: [ (builder item: 'Open new Collatz Lab')
				target: menu;
				selector: #openCollatzLab;
				help: 'Open Lab over Collatz domain.';
				order: 2;
				"keyText: 'Ctrl+K+N';"
				iconName: #workspace.
			(builder item: 'Open new Particles Lab')
				target: menu;
				selector: #openParticlesLab;
				help: 'Open Lab over Particles domain.';
				order: 2;
				"keyText: 'Ctrl+K+N';"
				iconName: #workspace ]