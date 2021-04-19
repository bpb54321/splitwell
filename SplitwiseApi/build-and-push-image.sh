dotnet publish -c Release
image_name="bpb54321/splitwise-api"
image_version="$image_name:$1"
image_latest="$image_name:latest"
docker build . -t $image_version
docker tag $image_version $image_latest
docker push $image_latest
docker push $image_version
