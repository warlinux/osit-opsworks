package 'httpd24'

service 'httpd' do
    supports :status => true
    action [ :enable, :start ]
end

file '/var/www/html/index.html' do
  mode 0644
  content '<!DOCTYPE html>
<HTML>
   <HEAD>
      <TITLE>
         A Small Hello 
      </TITLE>
   </HEAD>
<BODY>
   <H1>Hi</H1>
   <P>This is very minimal "hello world" HTML document.</P>
</BODY>
</HTML>'
end
