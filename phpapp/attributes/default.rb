# Smarty config
default['phpapp']['smarty']['cache'] = 0
default['phpapp']['smarty']['error_reporting'] = 1
default['phpapp']['smarty']['compile_check'] = 1
default['phpapp']['smarty']['debugging_ctrl'] = 'URL' # [ 'URL', 'NONE' ]
default['phpapp']['smarty']['cache_dir'] = 'cache/smarty'
default['phpapp']['smarty']['templates_c_dir'] = 'templates_c'
default['phpapp']['smarty']['templates_dir'] = 'templates'

# Environment [ 'dev', 'staging', 'testing', 'live' ]
default['phpapp']['environment'] = 'dev'
default['phpapp']['sql']['debug'] = false

# App config
default['phpapp']['cache_dir'] = 'cache/app'
default['phpapp']['config_dir'] = 'config'

# SQL config
default['phpapp']['sql']['truncate-debug'] = false

# Email addresses
default['phpapp']['email']['avisos'] = 'desarrollo@inetsys.es'
default['phpapp']['email']['testigo'] = 'desarrollo@inetsys.es'
default['phpapp']['email']['origen'] = 'postmaster@inetsys.es'
default['phpapp']['email']['errores'] = 'desarrollo_errores@inetsys.es'

# Mail server
default['phpapp']['mail-server']['mailer'] = 'smtp'
default['phpapp']['mail-server']['host'] = '192.168.100.25'
default['phpapp']['mail-server']['smtpauth'] = true
default['phpapp']['mail-server']['port'] = 25
default['phpapp']['mail-server']['smtpuser'] = 'postmaster@inetsys.es'
default['phpapp']['mail-server']['smtppass'] = 'inetsys'
default['phpapp']['mail-server']['timeout'] = '30'

# Session configuration
default['phpapp']['session']['dir'] = '/tmp/session_phpapp'
default['phpapp']['session']['lifetime'] = 3600

# Log
default['phpapp']['log']['dir'] = 'log'

# Paths
default['phpapp']['path']['lib'] = 'lib'
default['phpapp']['path']['config'] = 'webconfig'
default['phpapp']['path']['locale'] = 'locale'