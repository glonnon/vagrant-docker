# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
ENV['VAGRANT_DEFAULT_PROVIDER'] = "docker"

sys_env = {
  'MYSQL_ROOT_PASSWORD' => 'root',
}

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "mysql" do |mysql|
    mysql.vm.hostname = "mysql"
    
    env = sys_env.clone

    mysql.vm.provider "docker" do |d|
      d.image = "stackbrew/mysql:latest"
      d.name = "mysql"
      env['foo'] = "bar"
      d.env = env
    end
  end
  
  config.vm.define "rabbitmq" do |rabbitmq|
    rabbitmq.vm.hostname = "rabbitmq"
 
    env = sys_env.clone

    rabbitmq.vm.provider "docker" do |d|
      d.image = "tutum/rabbitmq:latest"
      d.name = "rabbitmq"
      env['foo'] = "bar"
      d.env = env
    end
  end

  config.vm.define "webapp" do |webapp|
    webapp.vm.hostname = "webapp"
 
    env = sys_env.clone

    webapp.vm.provider "docker" do |d|
      d.build_dir = "webapp"
      d.name = "webapp"
      env['foo'] = "bar"
      d.env = env
      d.link "rabbitmq:rabbitmq"
      d.link "mysql:mysql"
    end
  end

end
