dotnet publish -c Release
image_name="bpb54321/splitwise-api:$1"
docker build . -t $image_name
docker push $image_name
