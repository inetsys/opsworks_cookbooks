name             'phpapp'
maintainer       'INETSYS'
maintainer_email 'sistemas@inetsys.es'
license          'All rights reserved'
description      'Installs/Configures phpapp'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apache2"
depends "deploy"
depends "mod_php5_apache2"