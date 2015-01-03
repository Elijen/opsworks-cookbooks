node[:deploy].each do |application, deploy|
  script "nette_fix_permissions" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current"
    code <<-EOH
    chmod -R a+rw temp log
    EOH
  end
end