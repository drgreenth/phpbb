#!/bin/bash
echo -n "Extracting files.."
cd phpbb
tar -zxf phpbb_deploy.tgz 2>/dev/null
rm phpbb_deploy.tgz
chgrp www-data * -R 2>/dev/null
echo "done."

