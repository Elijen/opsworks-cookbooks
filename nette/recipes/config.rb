node[:deploy].each do |application, deploy|
  template "#{deploy[:deploy_to]}/current/app/config/config.local.neon" do
    source "#{deploy[:deploy_to]}/current/app/config/config.local.erb"
    local true
    mode 0644
  end
end