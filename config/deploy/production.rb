
set :stage, :production
set :server_name, "g.dreamreality.cn"

set :node_count, 1


set :branch, "master"
set :deploy_to, "/app/www/g"

set :god_pid, "#{shared_path}/tmp/pids/god.pid"

server fetch(:server_name), user: "ubuntu", roles: %w{web app db}
