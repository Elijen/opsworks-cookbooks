node[:deploy].each do |application, deploy|
  template "config.local.neon" do
    source "config.local.erb"
    local true
    mode 0644
  end
end