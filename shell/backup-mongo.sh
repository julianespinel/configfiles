environment="s3-bucket-name"
echo $environment

# Get mongo DB backup
mongodump

# Compress dump folder
tar -zcvf dump.tar.gz dump/

# Upload to AWS S3
aws s3 cp dump.tar.gz s3://$environment/backup/

# Remove dump folder and file
rm -rf dump/
rm dump.tar.gz
