az group create \
--location westeurope \
--name udac-prj-1-rg

az sql server create \
--admin-user udackkadm \
--admin-password jfhDk39Dcdl3- \
--name udac-prj1-sql-server \
--resource-group udac-prj-1-rg \
--location westeurope \
--enable-public-network true \
--verbose

az sql server firewall-rule create \
-g udac-prj-1-rg \
-s udac-prj1-sql-server \
-n azureaccess \
--start-ip-address 0.0.0.0 \
--end-ip-address 0.0.0.0 \
--verbose

az sql server firewall-rule create \
-g udac-prj-1-rg \
-s udac-prj1-sql-server \
-n clientip \
--start-ip-address 109.43.48.255 \
--end-ip-address 109.43.48.255 \
--verbose

az sql db create \
--name udac-prj1-db \
--resource-group udac-prj-1-rg \
--server udac-prj1-sql-server \
--tier Basic \
--verbose

az storage account create \
--name udacpr1storacc5123 \
--resource-group udac-prj-1-rg \
--location westeurope

az storage container create \
--account-name udacpr1storacc5123 \
--name images \
--auth-mode login \
--public-access container

az appservice plan create \
-g udac-prj-1-rg \
-n udac-prj-1-asp \
--sku F1 \
--location westeurope \
--is-linux

az webapp create \
-n udac-prj-1-webappkk \
-g udac-prj-1-rg \
-p udac-prj-1-asp \
--runtime 'PYTHON|3.7'

