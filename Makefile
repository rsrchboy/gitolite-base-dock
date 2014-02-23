key-gen::
	@echo "# generating a new ssh keypair"
	ssh-keygen -b 2048 -t rsa -C 'gitolite admin keypair' -N '' -f ./admin
