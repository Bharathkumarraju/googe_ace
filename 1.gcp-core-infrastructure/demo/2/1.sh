docker build -t py-server .
docker run -d py-server

gcloud container clusters create k1


kubectl autoscale nginx --min=10 --max=15 --cpu=80

