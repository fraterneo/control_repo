node default {
}
node 'master.puppet.vm' {
  include role::master_server
}

#Regex to match beginning with web
node /^web/ {
  include role::app_server
}

#Regex to match beginning with db
node /^db/ {
  include role::db_server
}
