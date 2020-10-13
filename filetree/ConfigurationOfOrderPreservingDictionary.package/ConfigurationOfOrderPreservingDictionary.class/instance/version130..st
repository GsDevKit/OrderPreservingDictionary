outdated - versions
version130: spec 
	<version: '1.3.0' imports: #('1.0-baseline')>

	spec for: #common do: [
		spec blessing: #release.
		spec package: 'Collections-OrderPreservingDictionary' with: 			'Collections-OrderPreservingDictionary-monty.21'.
		spec package: 'Collections-Tests-OrderPreservingDictionary' with: 			'Collections-Tests-OrderPreservingDictionary-monty.14']