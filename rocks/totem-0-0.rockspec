package = 'totem'
version = '0-0'

source = {
	url = 'git://github.com/akfidjeland/torch-totem.git',
	branch = 'master'
}


description = {
	summary = 'Torch test module',
	homepage = 'https://github.com/akfidjeland/torch-totem',
	license = 'BSD'
}

dependencies = { 'torch >= 7.0', 'sys', 'penlight', 'nn'}
build = {
	type = 'builtin',
	modules = {
		['totem.init'] = 'totem/init.lua',
		['totem.nn'] = 'totem/nn.lua',
		['totem.Tester'] = 'totem/Tester.lua',
		['totem.examples.test_simple'] = 'examples/test_simple.lua',
		['totem.examples.test_nn'] = 'examples/test_nn.lua',
		['totem.examples.test_tensor'] = 'examples/test_tensor.lua',
	},
	install = {
		bin = {
			'scripts/totem-init',
			'scripts/totem-run'
		}
	}
}