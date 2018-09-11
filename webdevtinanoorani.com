server {
        listen 80;
        listen [::]:80;

        root /home/tinan/www/main;

        index index.html;

        server_name webdevtinanoorani.com www.webdevtinanoorani.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
