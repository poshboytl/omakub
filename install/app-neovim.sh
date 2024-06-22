cd /tmp
wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
tar -xf nvim.tar.gz
sudo install nvim-linux64/bin/nvim /usr/local/bin/nvim
rm -rf nvim-linux64 nvim.tar.gz
cd -

if [ ! -d "$HOME/.config/nvim" ]; then
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	mkdir -p ~/.config/nvim/plugin/after
	cp ~/.local/share/omakub/configs/neovim/transparency.lua ~/.config/nvim/plugin/after/
	cp ~/.local/share/omakub/themes/neovim/tokyo-night.lua ~/.config/nvim/lua/plugins/theme.lua

	# Enable default extras
	cp ~/.local/share/omakub/configs/neovim/lazyvim.json ~/.config/nvim/lazyvim.json
fi
