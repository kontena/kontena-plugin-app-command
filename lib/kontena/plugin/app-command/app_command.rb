module Kontena
  module Plugin
    module AppCommand
      class AppCommand < Kontena::Command
        subcommand "init", "Init Kontena application", load_subcommand('kontena/cli/apps/init_command')
        subcommand "build", "Build Kontena services", load_subcommand('kontena/cli/apps/build_command')
        subcommand "config", "View service configurations", load_subcommand('kontena/cli/apps/config_command')
        subcommand "deploy", "Deploy Kontena services", load_subcommand('kontena/cli/apps/deploy_command')
        subcommand "scale", "Scale services", load_subcommand('kontena/cli/apps/scale_command')
        subcommand "start", "Start services", load_subcommand('kontena/cli/apps/start_command')
        subcommand "stop", "Stop services", load_subcommand('kontena/cli/apps/stop_command')
        subcommand "restart", "Restart services", load_subcommand('kontena/cli/apps/restart_command')
        subcommand "show", "Show service details", load_subcommand('kontena/cli/apps/show_command')
        subcommand ["ps", "list", "ls"], "List services", load_subcommand('kontena/cli/apps/list_command')
        subcommand ["logs"], "Show service logs", load_subcommand('kontena/cli/apps/logs_command')
        subcommand "monitor", "Monitor services", load_subcommand('kontena/cli/apps/monitor_command')
        subcommand ["remove","rm"], "Remove services", load_subcommand('kontena/cli/apps/remove_command')
      end
    end
  end
end
