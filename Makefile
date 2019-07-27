all:
	bash scripts/update-json.sh
	(cd docs && ruby ../scripts/make-distjs.rb > dist.json)

rebuild:
	touch src/json/*
	$(MAKE) all
	scripts/apply-lint.sh

server:
	ruby scripts/dev-server.rb
	
install:
	cp docs/json/personal_aki.json ~/.config/karabiner/assets/
	cp docs/json/emacs_key_bindings.json ~/.config/karabiner/assets/
