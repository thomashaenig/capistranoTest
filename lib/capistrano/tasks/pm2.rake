namespace :akquinet do
  namespace :deploy do
    task :setup do
      # info "test"
      on roles(:app) do |host|
        
        execute "npm run start"

      end

    end

  end

end


# require 'json'

# namespace :pm2 do

#   def app_status
#     within current_path do
#       ps = JSON.parse(capture :pm2, :jlist, fetch(:app_command))
#       if ps.empty?
#         return nil
#       else
#         # status: online, errored, stopped
#         return ps[0]["pm2_env"]["status"]
#       end
#     end
#   end

#   def restart_app
#     within current_path do
#       execute :pm2, :restart, fetch(:app_command)
#     end
#   end
  
#   def start_app
#     within current_path do
#       execute :pm2, :stop, fetch(:app_command)
#     end
#   end

#   def start_app_full
#     # within current_path do
#       execute "npm run start"
#     # end
#   end
  
#   desc 'Restart app gracefully'
#   task :restart do

#     on roles(:web), in: :parallel do |server|
#       within release_path do
#         execute "npm run start"
#       end
#     end
#     # start_app_full
#     # on roles(:app) do
#     #   case app_status
#     #   when nil
#     #     info 'App is not registerd'
#     #     start_app
#     #   when 'stopped'
#     #     info 'App is stopped'
#     #     restart_app
#     #   when 'errored'
#     #     info 'App has errored'
#     #     restart_app
#     #   when 'online'
#     #     info 'App is online'
#     #     restart_app
#     #   end
#     # end
#   end
  
# end