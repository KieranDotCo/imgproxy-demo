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
```