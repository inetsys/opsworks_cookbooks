name             'dbserver'
maintainer       'INETSYS'
maintainer_email 'sistemas@inetsys.es'
license          'All rights reserved'
description      'Installs/Configures Database server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

#depends 'apt'
#depends 'yum'
depends 'yum-pgdg'
# depends 'yum-epel'