## Getting Started
Install Launchy
```
sudo gem install launchy
```

Start imgproxy
```
docker-compose up -d --build --remove-orphans --force-recreate
```

Open Image
```
ruby signature.rb "IMAGE_URL_HERE"
ruby signature.rb "https://i.imgur.com/KSLD4VV.jpeg" 
ruby signature.rb "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMG14bWNxdGEwenJidHVweWhwNG92eGdqYjM4NHN2ZHRxeGNuaDcwMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ZXXshfXaR8IwQFUEj7/giphy.gif"
```

Open image with [processing options](https://docs.imgproxy.net/usage/processing)
```
ruby signature.rb "https://i.imgur.com/KSLD4VV.jpeg" "size:200:500/resizing_type:fill/blur:5"
ruby signature.rb "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMG14bWNxdGEwenJidHVweWhwNG92eGdqYjM4NHN2ZHRxeGNuaDcwMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ZXXshfXaR8IwQFUEj7/giphy.gif" "size:200:500/resizing_type:fill/blur:5"
```