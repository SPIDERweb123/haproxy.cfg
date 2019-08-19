#!/user/bin/env bash

# Renew the certificate 
certbot renew --force-renewal --tls-sni-01-port=8888


# Concatenate new cert files, with less output (avoiding the use tee and its output to stdout)
bash -c "cat /etc/letsencrypt/live/api.stbi.net/fullchain.pem
/etc/letsencrypt/live/api.stbi.net/privkey.pem >
/ect/ssl/api.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/cloud.stbi.net/fullchain.pem
/etc/letsencrypt/live/cloud.stbi.net/privkey.pem >
/ect/ssl/cloud.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/billing.stbi.net/fullchain.pem
/etc/letsencrypt/live/billing.stbi.net/privkey.pem >
/ect/ssl/billing.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/www.stbi.net/fullchain.pem
/etc/letsencrypt/live/www.stbi.net/privkey.pem >
/ect/ssl/www.stbi.net/www.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/gitlab.stbi.net/fullchain.pem
/etc/letsencrypt/live/gitlab.stbi.net/privkey.pem >
/ect/ssl/gitlab.stbi.net/gitlab.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/customer.harveststorage.net/fullchain.pem
/etc/letsencrypt/live/customer.harveststorage.net/privkey.pem >
/ect/ssl/customer.harveststorage.net/customer.harveststorage.net.pem"

bash -c "cat /etc/letsencrypt/live/www.harveststorage.net/fullchain.pem
/etc/letsencrypt/live/www.harveststorage.net/privkey.pem >
/ect/ssl/www.harveststorage.net/www.harveststorage.net.pem"

bash -c "cat /etc/letsencrypt/live/employee.stbi.net/fullchain.pem
/etc/letsencrypt/live/employee.stbi.net/privkey.pem >
/ect/ssl/employee.stbi.net/employee.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/manna.stbi.net/fullchain.pem
/etc/letsencrypt/live/manna.stbi.net/privkey.pem >
/ect/ssl/manna.stbi.net/manna.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/openproject.stbi.net/fullchain.pem
/etc/letsencrypt/live/openproject.stbi.net/privkey.pem >
/ect/ssl/openproject.stbi.net/openproject.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/map-app.stbi.net/fullchain.pem
/etc/letsencrypt/live/map-app.stbi.net/privkey.pem >
/ect/ssl/map-app.stbi.net/map-app.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/maps.stbi.net/fullchain.pem
/etc/letsencrypt/live/maps.stbi.net/privkey.pem >
/ect/ssl/maps.stbi.net/maps.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/maps2.stbi.net/fullchain.pem
/etc/letsencrypt/live/maps2.stbi.net/privkey.pem >
/ect/ssl/maps2.stbi.net/maps2.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/maps3.stbi.net/fullchain.pem
/etc/letsencrypt/live/maps3.stbi.net/privkey.pem >
/ect/ssl/maps3.stbi.net/maps3.stbi.net.pem"

bash -c "cat /etc/letsencrypt/live/maps4.stbi.net/fullchain.pem
/etc/letsencrypt/live/maps4.stbi.net/privkey.pem >
/ect/ssl/maps4.stbi.net/maps4.stbi.net.pem"


# Reload HAproxy

service harpoxy reload




