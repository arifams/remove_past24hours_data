# remove_past24hours_data
remove windows data files that created since past 24 hours

1. Open PowerShell ISE to create this file

![Open PowerShell ISE to create this file](https://transfer.sh/3jmIaJNf7S/1.PNG)

2. Copy and paste the script remove_past_24hours_data.ps1 to the editor
  ![Copy and paste the script above to the editor](https://transfer.sh/HXD4cAJMWB/2.PNG)

3. Save it to your folder to execute it later with Powershell.

 ![Save it to your folder.](https://transfer.sh/i1r1aDI6Fo/3.PNG)

4. Open Task Scheduler -> keyboard Windos R > taskschd.msc.

 ![Open Task Scheduler](https://transfer.sh/ntVm986Biz/4.PNG)
  


5. Then add this task with PowerShell.



***How to add the task with PowerShell when user log in? ***

Read this [Lazy Admin - How to Create a PowerShell Scheduled Task](https://lazyadmin.nl/powershell/how-to-create-a-powershell-scheduled-task/)





### Error and Solution ###

Error 1: ``File C:\powershellscript\remove_past_24hours_data.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.  + CategoryInfo : SecurityError: (:) [], ParentContainsErrorRecordException  + FullyQualifiedErrorId : UnauthorizedAccess ``

Solution 1: 
- Open Powershell
- Give access to Local User to execute local user `` Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser ``





