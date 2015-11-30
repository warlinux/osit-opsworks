execute 'nodejs' do
        cwd "/opt/nodejs"
        command "node /opt/nodejs/hello-world.js"
end
