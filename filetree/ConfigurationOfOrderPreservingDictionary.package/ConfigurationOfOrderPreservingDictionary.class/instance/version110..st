outdated - versions
version110: spec 
	<version: '1.1' imports: #('1.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #release.
		
		spec package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.9'.
		spec package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-JAAyer.7'
		]
	

