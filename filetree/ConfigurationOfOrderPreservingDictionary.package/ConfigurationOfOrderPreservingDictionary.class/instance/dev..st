symbolic versions
dev: spec
	<version: #'dev'>

	spec for: #'common' do: [ 
		spec
			baseline: 'OrderPreservingDictionary' with: [ 
				spec 
					className: 'BaselineOfOrderPreservingDictionary';
					repository: 'github://pharo-contributions/OrderPreservingDictionary:master/src' ]]