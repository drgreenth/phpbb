#!/bin/sh
echo "Starting to deploy kielikuva.com"
ssh deploy@cdn.drg.fi phpbb/backup.sh
echo -n  "Deploying files.."
# old and slow one
# scp -rC * deploy@cdn.drg.fi:phpbb/

# new and faster
tar -zcvf phpbb_deploy.tgz * >/dev/null
scp -C phpbb_deploy.tgz deploy@cdn.drg.fi:phpbb/ >/dev/null
rm phpbb_deploy.tgz
echo "done."

ssh deploy@cdn.drg.fi phpbb/extract.sh
echo "Deployment done!"

exit 0

