create_venv:
	python3 -m venv mvenv

# Doesn't work with make command
# source_env_fish:
# 	source mvenv/bin/activate.fish
#
# source_env_bash:
# 	source mvenv/bin/activate

install_dependencies:
	pip3 install ansible
	pip3 install pytest
	pip3 install testinfra
	pip3 install molecule[docker]
	pip3 install molecule-vagrant

init_docker:
	molecule init role acme.docker_demo --driver-name docker

init_vagrant:
	molecule init role acme.vagrant_demo --driver-name vagrant --verifier-name testinfra  

