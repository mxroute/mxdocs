location / {
  add_header X-Frame-Options "DENY";
  add_header X-XSS-Protection "1; mode=block";
  add_header Referrer-Policy "same-origin";
  add_header Strict-Transport-Security "max-age=31536000; includeSubDomains; preload";
}
