outdated - versions
version121: spec
	<version: '1.2.1' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.10';
			package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-JAAyer.7'. ].
