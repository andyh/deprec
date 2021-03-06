SPEC = Gem::Specification.new do |s|
  s.name = 'deprec'
  s.version = '1.99.27'
  s.authors = ['Mike Bailey']
  s.description = <<-EOF
      This project provides libraries of Capistrano tasks and extensions to 
      remove the repetative manual work associated with installing services 
      on linux servers.
  EOF
  s.email = 'mike@bailey.net.au'
  s.homepage = 'http://www.deprec.org/'
  s.rubyforge_project = 'deprec'
  s.summary = 'deployment recipes for capistrano'

  s.require_paths = ['lib']
  s.add_dependency('capistrano', '> 2.0.0')
  
  s.files = ["CHANGELOG",
              "COPYING",
              "LICENSE", 
              "README", 
              "THANKS",
              "bin/depify",
              "docs/ANNOUNCE.deprec2",
              "docs/deprec-1.x",
              "docs/deprec-1.x/deprec-1.x.quickstart",
              "docs/deprec-1.x/notes.txt",
              "docs/deprec_banner.gif",
              "docs/README.install",
              "docs/README.nagios",
              "docs/README.rails",
              "docs/README.svn",
              "docs/ROADMAP.txt",
              "docs/windows_linux.txt",
              "docs/xen",
              "docs/xen/plan.txt",
              "docs/xen/traffic_monitoring_with_vnstat.txt",
              "docs/xen/xen-tools-notes.txt",
              "docs/xen/xen_on_hardy.txt",
              "lib/deprec",
              "lib/deprec/capistrano_extensions.rb",
              "lib/deprec/recipes",
              "lib/deprec/recipes/aoe.rb",
              "lib/deprec/recipes/apache.rb",
              "lib/deprec/recipes/ar_sendmail.rb",
              "lib/deprec/recipes/canonical.rb",
              "lib/deprec/recipes/deprec.rb",
              "lib/deprec/recipes/deprecated.rb",
              "lib/deprec/recipes/example.rb",
              "lib/deprec/recipes/git.rb",
              "lib/deprec/recipes/gitosis.rb",
              "lib/deprec/recipes/heartbeat.rb",
              "lib/deprec/recipes/logrotate.rb",
              "lib/deprec/recipes/lvm.rb",
              "lib/deprec/recipes/memcache.rb",
              "lib/deprec/recipes/mongrel.rb",
              "lib/deprec/recipes/monit.rb",
              "lib/deprec/recipes/mysql.rb",
              "lib/deprec/recipes/nagios.rb",
              "lib/deprec/recipes/network.rb",
              "lib/deprec/recipes/nginx.rb",
              "lib/deprec/recipes/ntp.rb",
              "lib/deprec/recipes/php.rb",
              "lib/deprec/recipes/postfix.rb",
              "lib/deprec/recipes/rails.rb",
              "lib/deprec/recipes/ruby.rb",
              "lib/deprec/recipes/sphinx.rb",
              "lib/deprec/recipes/ssh.rb",
              "lib/deprec/recipes/svn.rb",
              "lib/deprec/recipes/trac.rb",
              "lib/deprec/recipes/ubuntu.rb",
              "lib/deprec/recipes/users.rb",
              "lib/deprec/recipes/utils.rb",
              "lib/deprec/recipes/vnstat.rb",
              "lib/deprec/recipes/xen.rb",
              "lib/deprec/recipes.rb",
              "lib/deprec/templates",
              "lib/deprec/templates/aoe",
              "lib/deprec/templates/aoe/aoe-init",
              "lib/deprec/templates/aoe/fence_aoemask",
              "lib/deprec/templates/apache",
              "lib/deprec/templates/apache/httpd-vhost-app.conf.erb",
              "lib/deprec/templates/apache/httpd.conf",
              "lib/deprec/templates/apache/index.html.erb",
              "lib/deprec/templates/apache/master.css",
              "lib/deprec/templates/ar_sendmail",
              "lib/deprec/templates/ar_sendmail/logrotate.conf.erb",
              "lib/deprec/templates/ar_sendmail/monit.conf.erb",
              "lib/deprec/templates/deprec",
              "lib/deprec/templates/deprec/caprc.erb",
              "lib/deprec/templates/heartbeat",
              "lib/deprec/templates/heartbeat/authkeys.erb",
              "lib/deprec/templates/heartbeat/ha.cf.erb",
              "lib/deprec/templates/heartbeat/haresources.erb",
              "lib/deprec/templates/logrotate",
              "lib/deprec/templates/logrotate/logrotate.conf.erb",
              "lib/deprec/templates/mongrel",
              "lib/deprec/templates/mongrel/logrotate.conf.erb",
              "lib/deprec/templates/mongrel/mongrel_cluster-init-script",
              "lib/deprec/templates/mongrel/mongrel_cluster.logrotate.d",
              "lib/deprec/templates/mongrel/mongrel_cluster.yml.erb",
              "lib/deprec/templates/mongrel/monit.conf.erb",
              "lib/deprec/templates/monit",
              "lib/deprec/templates/monit/monit-init-script",
              "lib/deprec/templates/monit/monitrc.erb",
              "lib/deprec/templates/monit/nothing",
              "lib/deprec/templates/mysql",
              "lib/deprec/templates/mysql/create_databases.sql",
              "lib/deprec/templates/mysql/database.yml.prod",
              "lib/deprec/templates/mysql/database.yml.stage",
              "lib/deprec/templates/mysql/my.cnf.erb",
              "lib/deprec/templates/mysql/sphinx.conf.prod",
              "lib/deprec/templates/mysql/sphinx.conf.stage",
              "lib/deprec/templates/nagios",
              "lib/deprec/templates/nagios/cgi.cfg.erb",
              "lib/deprec/templates/nagios/check_linux_free_memory.pl",
              "lib/deprec/templates/nagios/check_mongrel_cluster.rb",
              "lib/deprec/templates/nagios/commands.cfg.erb",
              "lib/deprec/templates/nagios/contacts.cfg.erb",
              "lib/deprec/templates/nagios/hosts.cfg.erb",
              "lib/deprec/templates/nagios/htpasswd.users",
              "lib/deprec/templates/nagios/localhost.cfg.erb",
              "lib/deprec/templates/nagios/nagios.cfg.erb",
              "lib/deprec/templates/nagios/nagios_apache_vhost.conf.erb",
              "lib/deprec/templates/nagios/nrpe.cfg.erb",
              "lib/deprec/templates/nagios/nrpe.xinetd.erb",
              "lib/deprec/templates/nagios/resource.cfg.erb",
              "lib/deprec/templates/nagios/services.cfg.erb",
              "lib/deprec/templates/nagios/templates.cfg.erb",
              "lib/deprec/templates/nagios/timeperiods.cfg.erb",
              "lib/deprec/templates/network",
              "lib/deprec/templates/network/hostname.erb",
              "lib/deprec/templates/network/hosts.erb",
              "lib/deprec/templates/network/interfaces.erb",
              "lib/deprec/templates/nginx",
              "lib/deprec/templates/nginx/logrotate.conf.erb",
              "lib/deprec/templates/nginx/mime.types.erb",
              "lib/deprec/templates/nginx/nginx-init-script",
              "lib/deprec/templates/nginx/nginx.conf.erb",
              "lib/deprec/templates/nginx/nginx.logrotate.d",
              "lib/deprec/templates/nginx/nothing.conf",
              "lib/deprec/templates/nginx/rails_nginx_vhost.conf.erb",
              "lib/deprec/templates/ntp",
              "lib/deprec/templates/ntp/ntp.conf.erb",
              "lib/deprec/templates/postfix",
              "lib/deprec/templates/postfix/aliases.erb",
              "lib/deprec/templates/postfix/dynamicmaps.cf.erb",
              "lib/deprec/templates/postfix/main.cf.erb",
              "lib/deprec/templates/postfix/master.cf.erb",
              "lib/deprec/templates/sphinx",
              "lib/deprec/templates/sphinx/monit.conf.erb",
              "lib/deprec/templates/ssh",
              "lib/deprec/templates/ssh/ssh_config.erb",
              "lib/deprec/templates/ssh/sshd_config.erb",
              "lib/deprec/templates/subversion",
              "lib/deprec/templates/subversion/svn.apache.vhost.erb",
              "lib/deprec/templates/trac",
              "lib/deprec/templates/trac/apache_vhost.conf.erb",
              "lib/deprec/templates/trac/nginx_vhost.conf.erb",
              "lib/deprec/templates/trac/trac.ini.erb",
              "lib/deprec/templates/trac/trac_deprec.png",
              "lib/deprec/templates/trac/tracd-init.erb",
              "lib/deprec/templates/trac/users.htdigest.erb",
              "lib/deprec/templates/vnstat",
              "lib/deprec/templates/vnstat/config.php",
              "lib/deprec/templates/xen",
              "lib/deprec/templates/xen/15-disable-hwclock",
              "lib/deprec/templates/xen/network-bridge-wrapper",
              "lib/deprec/templates/xen/xen-tools.conf.erb",
              "lib/deprec/templates/xen/xend-config.sxp.erb",
              "lib/deprec/templates/xen/xend-init.erb",
              "lib/deprec/templates/xen/xendomains.erb",
              "lib/deprec/templates/xen/xm.tmpl.erb",
              "lib/deprec.rb",
              "lib/deprec_cmd_completion.sh",
              "lib/vmbuilder_plugins",
              "lib/vmbuilder_plugins/all.rb",
              "lib/vmbuilder_plugins/apt.rb",
              "lib/vmbuilder_plugins/emerge.rb",
              "lib/vmbuilder_plugins/gem.rb",
              "lib/vmbuilder_plugins/std.rb",
    ]
  s.default_executable = "depify"
  s.executables = ["depify"]
end
