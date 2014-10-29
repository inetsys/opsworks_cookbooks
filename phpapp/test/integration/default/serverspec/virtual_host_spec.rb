require 'serverspec'

# Required by serverspec
set :backend, :exec

vhost='/etc/apache2/sites-available/demo-php-simple-app.conf'

describe file(vhost) do
  it { should be_file }
  its(:content) { should match 'DocumentRoot /srv/www/demo-php-simple-app/current/public/' }
  its(:content) { should match 'ServerName domain.test' }
end

