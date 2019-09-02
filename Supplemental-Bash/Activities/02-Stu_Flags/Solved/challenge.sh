# In order to run this you will need to change the permissions to allow for execution: chmod 777 challenge.sh
# Reference for above: https://www.maketecheasier.com/file-permissions-what-does-chmod-777-means/

curl -s --create-dirs https://api.spacexdata.com/v3/launches/latest?pretty=true https://api.spacexdata.com/v3/dragons/dragon1?pretty=true -o ./SpaceX/API/Launches/Amos-17.json -o ./SpaceX/API/Capsules/Dragon/Dragon1.json