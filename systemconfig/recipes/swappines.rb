execute 'swappiness' do
	command	'echo 0 > /proc/sys/vm/swappiness'
end
