#!/bin/bash
#HRMS.REALHRSOFT.COM
echo "Backup Started for hrms.realhrsoft.com"
rsync -avP hrms.realhrsoft.com:/home/test/hrms-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/hrms.realhrsoft.com/backups
rsync -avP hrms.realhrsoft.com:/home/test/hrms-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/hrms.realhrsoft.com/media
rsync -avP hrms.realhrsoft.com:/home/test/hrms-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/hrms.realhrsoft.com/backend_env/
rsync -avP hrms.realhrsoft.com:/home/test/hrms-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/hrms.realhrsoft.com/frontend_env/
echo "Backup finished for hrms.realhrsoft.com"

#DEMO.REALHRSOFT.COM
echo "Backup Started for demo.realhrsoft.com"
echo "Database backup for demo.realhrsoft.com"
ssh demo.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/demo-realhrsoft-backend/backups'
rsync -avP demo.realhrsoft.com:/etc/opt/demo-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/demo.realhrsoft.com/backups
ssh demo.realhrsoft.com 'sudo chown -R root:root /etc/opt/demo-realhrsoft-backend/backups'

echo "Media backup for demo.realhrsoft.com"
ssh demo.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/demo-realhrsoft-backend/media'
rsync -avP demo.realhrsoft.com:/etc/opt/demo-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/demo.realhrsoft.com/media
ssh demo.realhrsoft.com 'sudo chown -R root:root /etc/opt/demo-realhrsoft-backend/media'

rsync -avP demo.realhrsoft.com:/etc/opt/demo-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/demo.realhrsoft.com/backend_env/
rsync -avP demo.realhrsoft.com:/etc/opt/demo-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/demo.realhrsoft.com/frontend_env/
echo " Backup finished for demo.realhrsoft.com"

#CORE.REALHRSOFT.COM
echo "Backup Started for core.realhrsoft.com"
echo "Database backup for core.realhrsoft.com"
ssh core.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/core-realhrsoft-backend/backups'
rsync -avP core.realhrsoft.com:/etc/opt/core-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/core.realhrsoft.com/backups
ssh core.realhrsoft.com 'sudo chown -R root:root /etc/opt/core-realhrsoft-backend/backups'

echo "Media backup for core.realhrsoft.com"
ssh core.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/core-realhrsoft-backend/media'
rsync -avP core.realhrsoft.com:/etc/opt/core-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/core.realhrsoft.com/media
ssh core.realhrsoft.com 'sudo chown -R root:root /etc/opt/core-realhrsoft-backend/media'

rsync -avP core.realhrsoft.com:/etc/opt/core-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/core.realhrsoft.com/backend_env/
rsync -avP core.realhrsoft.com:/etc/opt/core-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/core.realhrsoft.com/frontend_env/
echo " Backup finished for core.realhrsoft.com"

echo "Backup Started for merojob.realhrsoft.com"
#MEROJOB.REALHRSOFT.COM
echo "Database backup for merojob.realhrsoft.com"
ssh merojob.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/merojob-realhrsoft-backend/backups'
rsync -avP merojob.realhrsoft.com:/etc/opt/merojob-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/merojob.realhrsoft.com/backups
ssh merojob.realhrsoft.com 'sudo chown -R root:root /etc/opt/merojob-realhrsoft-backend/backups'

echo "Media backup for merojob.realhrsoft.com"
ssh merojob.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/merojob-realhrsoft-backend/media'
rsync -avP merojob.realhrsoft.com:/etc/opt/merojob-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/merojob.realhrsoft.com/media
ssh merojob.realhrsoft.com 'sudo chown -R root:root /etc/opt/merojob-realhrsoft-backend/media'

rsync -avP merojob.realhrsoft.com:/etc/opt/merojob-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/merojob.realhrsoft.com/backend_env/
rsync -avP merojob.realhrsoft.com:/etc/opt/merojob-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/merojob.realhrsoft.com/frontend_env/
echo " Backup finished for merojob.realhrsoft.com"

echo "Backup Started for ewc.realhrsoft.com"
#ewc.realhrsoft.com
echo "Database backup for ewc.realhrsoft.com"
ssh ewc.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/ewc-realhrsoft-backend/backups'
rsync -avP ewc.realhrsoft.com:/etc/opt/ewc-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/ewc.realhrsoft.com/backups
ssh ewc.realhrsoft.com 'sudo chown -R root:root /etc/opt/ewc-realhrsoft-backend/backups'

echo "Media backup for ewc.realhrsoft.com"
ssh ewc.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/ewc-realhrsoft-backend/media'
rsync -avP ewc.realhrsoft.com:/etc/opt/ewc-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/ewc.realhrsoft.com/media
ssh ewc.realhrsoft.com 'sudo chown -R root:root /etc/opt/ewc-realhrsoft-backend/media'

rsync -avP ewc.realhrsoft.com:/etc/opt/ewc-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/ewc.realhrsoft.com/backend_env/
rsync -avP ewc.realhrsoft.com:/etc/opt/ewc-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/ewc.realhrsoft.com/frontend_env/
echo " Backup finished for ewc.realhrsoft.com"

echo "Backup Started for shtc.realhrsoft.com"
#SHTC.REALHRSOFT.COM
echo "Database backup for shtc.realhrsoft.com"
ssh shtc.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/shtc-realhrsoft-backend/backups'
rsync -avP shtc.realhrsoft.com:/etc/opt/shtc-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/shtc.realhrsoft.com/backups
ssh shtc.realhrsoft.com 'sudo chown -R root:root /etc/opt/shtc-realhrsoft-backend/backups'

echo "Media backup for shtc.realhrsoft.com"
ssh shtc.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/shtc-realhrsoft-backend/media'
rsync -avP shtc.realhrsoft.com:/etc/opt/shtc-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/shtc.realhrsoft.com/media
ssh shtc.realhrsoft.com 'sudo chown -R root:root /etc/opt/shtc-realhrsoft-backend/media'

rsync -avP shtc.realhrsoft.com:/etc/opt/shtc-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/shtc.realhrsoft.com/backend_env/
rsync -avP shtc.realhrsoft.com:/etc/opt/shtc-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/shtc.realhrsoft.com/frontend_env/
echo " Backup finished for shtc.realhrsoft.com"

#R2M.REALHRSOFT.COM
echo "Backup Started for r2m.realhrsoft.com"
echo "Database backup for r2m.realhrsoft.com"
ssh r2m.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/r2m-realhrsoft-backend/backups'
rsync -avP r2m.realhrsoft.com:/etc/opt/r2m-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/r2m.realhrsoft.com/backups
ssh r2m.realhrsoft.com 'sudo chown -R root:root /etc/opt/r2m-realhrsoft-backend/backups'

echo "Media backup for r2m.realhrsoft.com"
ssh r2m.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/r2m-realhrsoft-backend/media'
rsync -avP r2m.realhrsoft.com:/etc/opt/r2m-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/r2m.realhrsoft.com/media
ssh r2m.realhrsoft.com 'sudo chown -R root:root /etc/opt/r2m-realhrsoft-backend/media'

rsync -avP r2m.realhrsoft.com:/etc/opt/r2m-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/r2m.realhrsoft.com/backend_env/
rsync -avP r2m.realhrsoft.com:/etc/opt/r2m-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/r2m.realhrsoft.com/frontend_env/
echo " Backup finished for r2m.realhrsoft.com"

#mediquest.realhrsoft.com
echo "Backup Started for mediquest.realhrsoft.com"
echo "Database backup for mediquest.realhrsoft.com"
ssh mediquest.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/mediquest-realhrsoft-backend/backups'
rsync -avP mediquest.realhrsoft.com:/etc/opt/mediquest-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/mediquest.realhrsoft.com/backups
ssh mediquest.realhrsoft.com 'sudo chown -R root:root /etc/opt/mediquest-realhrsoft-backend/backups'

echo "Media backup for mediquest.realhrsoft.com"
ssh mediquest.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/mediquest-realhrsoft-backend/media'
rsync -avP mediquest.realhrsoft.com:/etc/opt/mediquest-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/mediquest.realhrsoft.com/media
ssh mediquest.realhrsoft.com 'sudo chown -R root:root /etc/opt/mediquest-realhrsoft-backend/media'

rsync -avP mediquest.realhrsoft.com:/etc/opt/mediquest-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/mediquest.realhrsoft.com/backend_env/
rsync -avP mediquest.realhrsoft.com:/etc/opt/mediquest-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/mediquest.realhrsoft.com/frontend_env/
echo " Backup finished for mediquest.realhrsoft.com"

#musicnepal.realhrsoft.com
echo "Backup Started for musicnepal.realhrsoft.com"
echo "Database backup for musicnepal.realhrsoft.com"
ssh musicnepal.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/musicnepal-realhrsoft-backend/backups'
rsync -avP musicnepal.realhrsoft.com:/etc/opt/musicnepal-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/musicnepal.realhrsoft.com/backups
ssh musicnepal.realhrsoft.com 'sudo chown -R root:root /etc/opt/musicnepal-realhrsoft-backend/backups'

echo "Media backup for musicnepal.realhrsoft.com"
ssh musicnepal.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/musicnepal-realhrsoft-backend/media'
rsync -avP musicnepal.realhrsoft.com:/etc/opt/musicnepal-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/musicnepal.realhrsoft.com/media
ssh musicnepal.realhrsoft.com 'sudo chown -R root:root /etc/opt/musicnepal-realhrsoft-backend/media'

rsync -avP musicnepal.realhrsoft.com:/etc/opt/musicnepal-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/musicnepal.realhrsoft.com/backend_env/
rsync -avP musicnepal.realhrsoft.com:/etc/opt/musicnepal-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/musicnepal.realhrsoft.com/frontend_env/
echo " Backup finished for musicnepal.realhrsoft.com"

#spark.realhrsoft.com
echo "Backup Started for spark.realhrsoft.com"
echo "Database backup for spark.realhrsoft.com"
ssh sparkgroup.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/spark-realhrsoft-backend/backups'
rsync -avP sparkgroup.realhrsoft.com:/etc/opt/spark-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/sparkgroup.realhrsoft.com/backups
ssh sparkgroup.realhrsoft.com 'sudo chown -R root:root /etc/opt/spark-realhrsoft-backend/backups'

echo "Media backup for sparkgroup.realhrsoft.com"
ssh sparkgroup.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/spark-realhrsoft-backend/media'
rsync -avP sparkgroup.realhrsoft.com:/etc/opt/spark-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/sparkgroup.realhrsoft.com/media
ssh sparkgroup.realhrsoft.com 'sudo chown -R root:root /etc/opt/spark-realhrsoft-backend/media'

rsync -avP sparkgroup.realhrsoft.com:/etc/opt/spark-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/sparkgroup.realhrsoft.com/backend_env/
rsync -avP sparkgroup.realhrsoft.com:/etc/opt/spark-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/sparkgroup.realhrsoft.com/frontend_env/
echo " Backup finished for spark.realhrsoft.com"

#awecode.realhrsoft.com
echo "Backup Started for awecode.realhrsoft.com"
ssh awecode.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/awecode-realhrsoft-backend/backups'
echo "Database backup for awecode.realhrsoft.com"
rsync -avP awecode.realhrsoft.com:/etc/opt/awecode-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/awecode.realhrsoft.com/backups
ssh awecode.realhrsoft.com 'sudo chown -R root:root /etc/opt/awecode-realhrsoft-backend/backups'

echo "Media backup for awecode.realhrsoft.com"
ssh awecode.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/awecode-realhrsoft-backend/media'
rsync -avP awecode.realhrsoft.com:/etc/opt/awecode-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/awecode.realhrsoft.com/media
ssh awecode.realhrsoft.com 'sudo chown -R root:root /etc/opt/awecode-realhrsoft-backend/media'

rsync -avP awecode.realhrsoft.com:/etc/opt/awecode-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/awecode.realhrsoft.com/backend_env/
rsync -avP awecode.realhrsoft.com:/etc/opt/awecode-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/awecode.realhrsoft.com/frontend_env/
echo " Backup finished for awecode.realhrsoft.com"

#hei.realhrsoft.com
echo "Backup Started for hei.realhrsoft.com"
echo "Database backup for hei.realhrsoft.com"
ssh hei.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/hei-realhrsoft-backend/backups'
rsync -avP hei.realhrsoft.com:/etc/opt/hei-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/hei.realhrsoft.com/backups
ssh hei.realhrsoft.com 'sudo chown -R root:root /etc/opt/hei-realhrsoft-backend/backups'

echo "Media backup for hei.realhrsoft.com"
ssh hei.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/hei-realhrsoft-backend/media'
rsync -avP hei.realhrsoft.com:/etc/opt/hei-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/hei.realhrsoft.com/media
ssh hei.realhrsoft.com 'sudo chown -R root:root /etc/opt/hei-realhrsoft-backend/media'

rsync -avP hei.realhrsoft.com:/etc/opt/hei-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/hei.realhrsoft.com/backend_env/
rsync -avP hei.realhrsoft.com:/etc/opt/hei-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/hei.realhrsoft.com/frontend_env/
echo " Backup finished for hei.realhrsoft.com"

#wrp.realhrsoft.com
echo "Backup Started for wrp.realhrsoft.com"
echo "Database backup for wrp.realhrsoft.com"
ssh wrp.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/wrp-realhrsoft-backend/backups'
rsync -avP wrp.realhrsoft.com:/etc/opt/wrp-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/wrp.realhrsoft.com/backups
ssh wrp.realhrsoft.com 'sudo chown -R root:root /etc/opt/wrp-realhrsoft-backend/backups'

echo "Media backup for wrp.realhrsoft.com"
ssh wrp.realhrsoft.com 'sudo chown -R ubuntu:ubuntu /etc/opt/wrp-realhrsoft-backend/media'
rsync -avP wrp.realhrsoft.com:/etc/opt/wrp-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/wrp.realhrsoft.com/media
ssh wrp.realhrsoft.com 'sudo chown -R root:root /etc/opt/wrp-realhrsoft-backend/media'

rsync -avP wrp.realhrsoft.com:/etc/opt/wrp-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/wrp.realhrsoft.com/backend_env/
rsync -avP wrp.realhrsoft.com:/etc/opt/wrp-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/wrp.realhrsoft.com/frontend_env/
echo " Backup finished for wrp.realhrsoft.com"


