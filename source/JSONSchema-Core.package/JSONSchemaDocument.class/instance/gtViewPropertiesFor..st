accessing
gtViewPropertiesFor: aView
	^ aView columnedTree
		title: 'Document';
		items: [ self gtChidDefinitions associations ];
		children: [ :each |
			each value reference 
				ifNil: [ each value gtChidDefinitions associations ]
				ifNotNil: [ (self lookupReference: each value reference) gtChidDefinitions associations ] ];
		column: 'Property' text: [ :assoc | assoc key ] width: 200;
		column: 'Schema' text: [ :assoc | assoc value ];
		send: #value