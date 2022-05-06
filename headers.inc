location / {
  add_header X-Frame-Options "DENY";
  add_header X-XSS-Protection "1; mode=block";
  add_header Referrer-Policy "same-origin";
  add_header Strict-Transport-Security "max-age=31536000; includeSubDomains; preload";
  add_header 'Access-Control-Allow-Origin' 'https://mxdocs.mxroute.app';
  add_header 'Access-Control-Allow-Credentials' 'true';
  add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';
  add_header 'Access-Control-Allow-Headers' 'DNT,X-CustomHeader,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Authorization';
}
