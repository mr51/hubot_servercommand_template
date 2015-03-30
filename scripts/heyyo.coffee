# Description
#   hey yo! script.  
#   heyと呼びかけるとyoと返事します。
#   返事はechoでサーバー上で実行した結果です。
#   shellのコマンドを組み替えることでサーバー上で処理を行うbotのテンプレートです。
# Commands:
#   hey
child_process = require 'child_process'

module.exports = (robot) -> 
    robot.respond /^hey/i, (msg) ->
        command = "echo \"yo\";"
     
        msg.send "実行します。\n===================================\n"
        command += ";echo \"==================================\""
        command += ";echo \"実行しました\""
        child_process.exec command, (error, stdout, stderr) ->
            msg.send stderr
            msg.send stdout
