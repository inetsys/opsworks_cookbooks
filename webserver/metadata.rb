name             'webserver'
maintainer       'INETSYS'
maintainer_email 'sistemas@inetsys.es'
license          'All rights reserved'
description      'Installs/Configures webserver'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'opsworks_initial_setup'
depends 'mysql'
depends 'dependencies'
depends 'opsworks_ganglia'
depends 'apache2'