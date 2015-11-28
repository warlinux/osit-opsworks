group 'admin' do
  action :create
  append true
end

user 'nache' do
  comment 'nache user'
  uid '10001'
  gid 'admin'
  home '/home/nache'
  shell '/bin/bash'
  password '$1$bHjpye3b$y6nsGZApX2AvBdbuDOQI1.'
end
