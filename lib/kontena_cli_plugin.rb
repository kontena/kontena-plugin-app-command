require 'kontena_cli'
require 'kontena/plugin/app-command/app_command'

Kontena::MainCommand.register("app", "App specific commands", Kontena::Plugin::AppCommand::AppCommand)
