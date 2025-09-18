@echo off

echo Deploying Chart of Accounts...
echo.

docker cp "E:\github\erpnext_china_coa\cn_accounting_standards_for_business_enterprises.json" frappe_docker-backend-1:/home/frappe/frappe-bench/apps/erpnext/erpnext/accounts/doctype/account/chart_of_accounts/verified/
if errorlevel 1 (
    echo ERROR: Failed to copy first file.
    goto :error
)

docker cp "E:\github\erpnext_china_coa\cn_saas_chart_of_accounts.json" frappe_docker-backend-1:/home/frappe/frappe-bench/apps/erpnext/erpnext/accounts/doctype/account/chart_of_accounts/verified/
if errorlevel 1 (
    echo ERROR: Failed to copy second file.
    goto :error
)

echo Files copied successfully.
echo.

echo Setting file ownership...
docker exec -u root frappe_docker-backend-1 bash -c "chown frappe:frappe /home/frappe/frappe-bench/apps/erpnext/erpnext/accounts/doctype/account/chart_of_accounts/verified/cn_accounting_standards_for_business_enterprises.json && chown frappe:frappe /home/frappe/frappe-bench/apps/erpnext/erpnext/accounts/doctype/account/chart_of_accounts/verified/cn_saas_chart_of_accounts.json"
if errorlevel 1 (
    echo ERROR: Failed to set file ownership.
    goto :error
)
echo File ownership set successfully.
echo.

echo ---------------------------------
echo Deployment successful!
echo ---------------------------------
goto :end

:error
echo.
echo Deployment FAILED. Please check the errors above.

:end
echo.
pause