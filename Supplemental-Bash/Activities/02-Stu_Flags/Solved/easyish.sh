# In order to run this you will need to change the permissions to allow for execution: chmod 777 challenge.sh
# Reference for above: https://www.maketecheasier.com/file-permissions-what-does-chmod-777-means/

mkdir -p SpaceX/API/Launches SpaceX/API/Capsules
curl https://api.spacexdata.com/v3/launches/latest?pretty=true > SpaceX/API/Launches/Amos-17.json