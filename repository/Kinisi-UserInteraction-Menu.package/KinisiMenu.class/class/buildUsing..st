menu construction
buildUsing: builder
 
	"See WorldState class>>#pharoItemsOn:"
	
	| menu |
	menu := self new.
	(builder item: #Kinisi)
		label: 'Kinisi';
		iconName: #remote;
		order: 2.5;
		help: 'Particles simulator';
		withSeparatorAfter;
		with: [ (builder item: #NewWorkbench)
				target: menu;
				selector: #newWorkbench;
				help: 'Open a new workbench.';
				order: 1;
				"keyText: 'Ctrl+K+N';"
				iconName: #page]