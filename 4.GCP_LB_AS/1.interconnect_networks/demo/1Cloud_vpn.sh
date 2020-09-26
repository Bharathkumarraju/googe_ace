Cloud VPN

CLoud Interconnect and Peering

Shared VPC networks


gcloud compute --project "qwiklabs-gcp-01-882740353037" target-vpn-gateways create "vpn-2" --region "europe-west1" --network "vpn-network-2"

gcloud compute --project "qwiklabs-gcp-01-882740353037" forwarding-rules create "vpn-2-rule-esp" --region "europe-west1" --address "35.195.250.121" --ip-protocol "ESP" --target-vpn-gateway "vpn-2"

gcloud compute --project "qwiklabs-gcp-01-882740353037" forwarding-rules create "vpn-2-rule-udp500" --region "europe-west1" --address "35.195.250.121" --ip-protocol "UDP" --ports "500" --target-vpn-gateway "vpn-2"

gcloud compute --project "qwiklabs-gcp-01-882740353037" forwarding-rules create "vpn-2-rule-udp4500" --region "europe-west1" --address "35.195.250.121" --ip-protocol "UDP" --ports "4500" --target-vpn-gateway "vpn-2"

gcloud compute --project "qwiklabs-gcp-01-882740353037" vpn-tunnels create "tunnel2to1" --region "europe-west1" --peer-address "35.238.148.113" --shared-secret "gcprocks" --ike-version "2" --local-traffic-selector "0.0.0.0/0" --target-vpn-gateway "vpn-2"

gcloud compute --project "qwiklabs-gcp-01-882740353037" routes create "tunnel2to1-route-1" --network "vpn-network-2" --next-hop-vpn-tunnel "tunnel2to1" --next-hop-vpn-tunnel-region "europe-west1" --destination-range "10.5.4.0/24"


