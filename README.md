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
| PresidentialCampaigns.tar.gz | mongodump of the database used byrestorePresidentialCampaigns.sh
| generate-profiledata-scenario1.js | Used by generate-profiledata-scenario1.js
| aggregation.js | Some Sample Aggregation examples for this database that can be used with Compass to demo the aggregation builder