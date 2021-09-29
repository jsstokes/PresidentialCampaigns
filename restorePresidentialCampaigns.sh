# mongorestore --host $1 --gzip --archive=PresidentialCampaigns.tgz
if [ ! -f ./PresidentialCampaigns.tar.gz ]; then
    echo "File PresidentialCampaigns.tar.gz not found!" >&2
    echo " --> downloading from s3://sstokes-s3/PresidentialCampaigns.tar.gz" >&2
    aws s3 cp s3://sstokes-s3/PresidentialCampaigns.tar.gz ./PresidentialCampaigns.tar.gz
fi
if [ ! -f ./PresidentialCampaigns.tar.gz ]; then
    echo "*** File still not found - apparently there was an issue downloading from S3"
    echo "*** Please make sure the aws cli is installed and properly configured"
    echo "*** Also make sure you have permission to download the file"
fi
if [ $# -lt 2 ]; then
	echo "Usage is: $0 <hostname> <username>"
	echo 
else
    mongorestore --host $1 --gzip --archive=PresidentialCampaigns.tar.gz --authenticationDatabase admin --username $2
fi
