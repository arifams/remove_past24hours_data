get-childitem -Path C:\path\where\do\you\need\to\remove\data\ –recurse |  
    where-object {$_.lastwritetime -gt (get-date).addDays(-1)} | 
    where-object {-not $_.PSIsContainer} |
    Foreach-Object { $_.FullName } | 
    Remove-Item


# remove past 24 hours data in multiple folders #

$removedFolder = 'C:\Users\ahoy\Downloads\','C:\Users\ahoy\Pictures\' ,'C:\Users\ahoy\Documents\'

get-childitem -Path $removedFolder -Recurse | 
    where-object {$_.lastwritetime -gt (get-date).addDays(-1)} | 
    where-object {-not $_.PSIsContainer} |
    Foreach-Object { $_.FullName } | 
    Remove-Item
