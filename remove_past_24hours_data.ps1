get-childitem -Path C:\path\where\do\you\need\to\remove\data\ –recurse |  
    where-object {$_.lastwritetime -gt (get-date).addDays(-1)} | 
    where-object {-not $_.PSIsContainer} |
    Foreach-Object { $_.FullName } | 
    Remove-Item
