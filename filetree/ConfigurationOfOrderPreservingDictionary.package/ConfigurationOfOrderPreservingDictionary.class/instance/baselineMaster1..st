outdated - baselines
baselineMaster1: spec 
	<version: '1-master-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/PharoExtras/OrderPreservingDictionary/main'.	
		spec description: 'Imported from SqueakSource'.
		spec package: 'Collections-OrderPreservingDictionary'.
		spec 
			package: 'Collections-Tests-OrderPreservingDictionary' 
			with: [spec requires: 'Collections-OrderPreservingDictionary'].
			
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('Collections-OrderPreservingDictionary');
			group: 'Tests' with: #('Collections-Tests-OrderPreservingDictionary'). ].