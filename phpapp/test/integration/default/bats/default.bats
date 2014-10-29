@test "smarty cache dirs are created" {
    [ -d /srv/www/demo-php-simple-app/current/cache/app ]
    [ -d /srv/www/demo-php-simple-app/current/cache/smarty ]
}