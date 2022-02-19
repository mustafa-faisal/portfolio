$number = Read-Host -Prompt "Please type a number greater than 5"

While ( [int]$number -lt 5 )
{
    write-Output "That number is less than 5!! Try again :("
    $number = Read-Host -Prompt "Please type a number greater than 5"
}
write-Output "Thank you! :)"