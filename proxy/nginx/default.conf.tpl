server {
  listen 80;
  server_name _;

  location /.well-known/acme-challenge/ {
    root /var/www/;
  }

  location / {
    return 301 https://$host$request_uri;
  }
}
