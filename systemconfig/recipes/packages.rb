#basic packages
['ncdu','strace','htop'].each do |package|
	package package
end

package 'httpd24'

service 'httpd24' do
  supports restart: true, reload: true
  action %w(enable start)
end

execute 'copy-index' do
    cwd '/var/www/html/'
    command 'wget http://bionexo-opsworks-intermediate.s3-website-us-east-1.amazonaws.com/hello-world.html -O index2.html'   
end


