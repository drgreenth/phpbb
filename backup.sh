#!/bin/bash
echo -n "Making backup of phpbb folder.."
tar -zcvf phpbb.backup.`date +%d.%m.%Y`.tar.gz phpbb/* >/dev/null
echo "done."

exit 0

