curl -O https://raw.githubusercontent.com/spinnaker/halyard/master/install/debian/InstallHalyard.sh
sudo bash InstallHalyard.sh
sudo update-halyard
hal config provider docker-registry enable 
hal config provider docker-registry account add <--aws account--> \ 
 --address index.docker.io --username <--user--> --<--pass-->
hal config artifact github enable
hal config artifact github account add spinnaker-github --username <--user--> --password --token
hal config provider kubernetes enable
hal config features edit --artifacts true
hal config deploy edit --type distributed --account-name <--aws accout-->
hal config storage s3 edit --access-key-id $YOUR_ACCESS_KEY_ID --secret-access-key --region <--region-->
hal config storage edit --type s3
hal deploy apply
