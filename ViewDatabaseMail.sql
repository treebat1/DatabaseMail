
EXECUTE msdb.dbo.sysmail_help_account_sp;


EXECUTE msdb.dbo.sysmail_help_profile_sp;  


exec msdb.dbo.sp_send_dbmail 
@recipients = 'someone@company.com'
, @Subject = 'Test'
, @Body = 'Test'




exec msdb.dbo.sysmail_help_queue_sp @queue_type = 'mail';


exec msdb.dbo.sysmail_help_status_sp

SELECT * 
FROM msdb.dbo.sysmail_event_log
--WHERE 
--event_type = 'error'
--log_date BETWEEN '1/27/2018 20:30:00' AND '1/27/2018 20:45:00'
order by log_date DESC
/*
*/



SELECT top 100 mailitem_id, recipients, subject, body,  send_request_date, send_request_user, sent_account_id, sent_status, sent_date, last_mod_date, last_mod_user
FROM msdb.dbo.sysmail_allitems SA
--WHERE SA.send_request_date BETWEEN '1/27/2018 20:33:00' AND '1/27/2018 20:34:00'
ORDER BY sent_date DESC
--58 messages
/**/

select count(*) from msdb.dbo.sysmail_unsentitems;
-- remove all the unsent emails

select * 
FROM msdb.dbo.sysmail_unsentitems
ORDER BY send_request_date

/*
delete 
FROM msdb.dbo.sysmail_unsentitems
WHERE send_request_date < '1/25/2018'; 
*/
