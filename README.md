# ffmap-backend
ffmap Backend Infos
aliases.json


Um die aliases automatisch zu übernehmen (muss auf allen Gateways):


useradd -m -s /bin/bash ffmap

su - ffmap

git clone https://github.com/ffod/ffmap-backend.git

chmod +x ffmap-backend/updatealias.sh

su - / exit

vim /etc/crontab

*/15 * * * * root /home/ffmap/ffmap-backend/updatealias.sh > /dev/null 2>&1

service cron reload

updatealias.sh einmal ausführen und schauen ob die alias Datei übernommen wurde. ACHTUNG: je nach Installation des ffmap-backends muss eventuell die updatealias.sh angepasst werden!!!


