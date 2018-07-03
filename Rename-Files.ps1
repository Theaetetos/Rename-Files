# rename all files in passed-in array by replacing first string passed in with second
# WARNING - Replace function will find all occurences of $s in full name (incl path)
Function Rename-Files($a, $s, $r){
    $a | %{
        mv $_.FullName $_.FullName.Replace($s, $r)
    }
}
New-Alias -name rf -value Rename-Files -option allscope