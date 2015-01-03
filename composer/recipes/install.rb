node[:deploy].each do |application, deploy|
  script "composer_install" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current"
    code <<-EOH
    php composer.phar install --no-dev --no-interaction --optimize-autoloader
    EOH
  end
end