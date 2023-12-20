docker build -t dashboard-hdd . && docker run --rm -v ./data:/mount -it --name dashboard-hdd -p 8008:80 -p 8009:8080 --hostname dashboard-hdd dashboard-hdd:latest sh
