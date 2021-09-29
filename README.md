# Simple MongoDB Demo
This repo contains data and scripts to demo MongoDB - either EA or Atlas.

There are two primary scripts:
| File | Description
| ---- | ----
| restorePresidentialCampaigns.sh | Loads the PresidentialCampaigns database
| run-load.sh | Runs the load generation script from the mongo console |

**Syntax**
> Both scripts follow the syntax of:  
> `script-name <hostname> <username> `



---
### Other Files are:
| File | Description
| ---- | ------
| PresidentialCampaigns.tar.gz | mongodump of the database used byrestorePresidentialCampaigns.sh<br/>**Note** - This file will be downloaded from Amazon S3 if it is not present.  It is *NOT* included in the repo.  You must have access rights to the S3 bucket in order for it to be downloaded.
| generate-profiledata-scenario1.js | Used by generate-profiledata-scenario1.js
| aggregation.js | Some Sample Aggregation examples for this database that can be used with Compass to demo the aggregation builder