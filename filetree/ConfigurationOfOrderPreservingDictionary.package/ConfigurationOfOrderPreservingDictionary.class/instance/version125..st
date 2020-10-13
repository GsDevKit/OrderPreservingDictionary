outdated - versions
version125: spec
	<version: '1.2.5' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.16';
			package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-monty.11'. ].
