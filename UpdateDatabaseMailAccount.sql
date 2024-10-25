EXECUTE msdb.dbo.sysmail_help_account_sp;

exec msdb.dbo.sysmail_update_account_sp @account_name =  'DMDev2016_MailAccount'
    ,@display_name =  'DM_NEWDEV_2016_MailAccount'   
    ,@description =  'Mail Account for DataMart Dev 2016'

exec msdb.dbo.sysmail_update_account_sp @account_name =  'DMTest2016_MailAccount'
    ,@display_name =  'DM_NEWTEST_2016_MailAccount'   
    ,@description =  'Mail Account for DataMart Test 2016'


exec msdb.dbo.sp_send_dbmail 
    @recipients =  ''  
    , @subject = 'Test Email'   
    , @body = 'Test Email'
