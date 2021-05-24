accessing
gtViewPropertiesFor: aView
	<gtView>
	^ aView columnedTree
		title: 'Definition';
		items: [ self gtChidDefinitions associations ];
		children: [ :each | each value gtChidDefinitions associations ];
		column: 'Property' text: [ :assoc | assoc key ] width: 200;
		column: 'Schema' text: [ :assoc | assoc value ];
		send: #value