desc 'deploy vimrc'
task :deploy  do
	puts "********** Installing vim plugins **********"
	home_dir = ENV['HOME'] 
	vimrc_file = "#{home_dir}/.vimrc"
	vimrc_bak_file = "#{home_dir}/vimrc_old"
	ackrc_file = "#{home_dir}/.ackrc"
	vundle_dir = "#{home_dir}/.vim/bundle/vundle"
	vim_dir = "#{home_dir}/.vim"

	if File.exist?("#{vimrc_file}")
		FileUtils.mv "#{vimrc_file}", "#{vimrc_bak_file}"
	end

	unless File.exist?("#{ackrc_file}")
		system "curl -L https://raw.github.com/SaitoWu/dotfiles/master/ackrc > ~/.ackrc"
	end

	unless Dir.exist?(vundle_dir)
		system "git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle"	
	end

	FileUtils.cp "bundle.vim", "#{vim_dir}"

	system "vim +BundleInstall +qall"

	FileUtils.cp "vimrc", "#{vimrc_file}"
end

desc 'update plugins'
task :update do
	system "vim +BundleInstall! +qall"
end
