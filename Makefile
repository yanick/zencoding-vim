all : zencoding-vim.zip

remove-zip:
	-rm doc/tags
	rm -f zencoding-vim.zip

zencoding-vim.zip: remove-zip
	zip -r zencoding-vim.zip autoload plugin doc

release: zencoding-vim.zip
	vimup update-script zencoding.vim

bundle: zencoding-vim.zip
	mkdir zencoding-vim
	unzip zencoding-vim.zip -d zencoding-vim
