# Creating a Data Volume Container which can be used by other containers 
docker run -d -v /v/01 -v /v/02 -v /v/03 --name DATA haystack/base echo Data-only container for exposing Disk-Drives
