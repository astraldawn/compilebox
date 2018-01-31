
echo "Creating Docker Image"
docker build -t virtual_machine --build-arg CACHEB=$(date +%s) .
echo "Retrieving Installed Docker Images"
docker images
