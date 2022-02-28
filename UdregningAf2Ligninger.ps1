# UDREGNING AF DISKRIMINANT#
write-Host "Skriv værdien for A"
[single]$A = Read-Host -Prompt 'A'
write-Host "Skriv værdien for B"
[single]$B = Read-Host -Prompt 'B'
write-Host "Skriv værdien for C"
[single]$C = Read-Host -Prompt 'C'

$D = $B*$B-4*$A*$C
clear

write-Host "-------------------"   
write-Host "Din ABC værdier er A= $A, B= $B, C= $C"   
write-Host "-------------------"    
write-Host "Diskriminanten =" $D
write-Host "-------------------"
#UDREGNING AF SQRT#
[single] $r = [math]::Sqrt($D)
write-Host "Kvadratroden er" $r 
write-Host "-------------------"

if ( $D -lt 0 ) # HVIS $D LESS THAN 0 = SKRIV
{
   write-Host "Der er ingen løsning" 
   write-Host "-------------------"
}

if ( $D -gt 0 ){.$GTR}

if ( 0 -eq $D  ){.$EQ} # HVIS $D EQUAL MED 0 = SKRIV

$GTR = {
write-Host "Der er 2 løsninger" 
write-Host "-------------------"
[decimal] $r = [math]::Sqrt($D)
[decimal] $x1 = (-$B+$r)/(2*$A)
[decimal] $x2 = (-$B-$r)/(2*$A)
write-Host "x1 = $x1"
write-Host "x2 = $x2"
}

$EQ = {
write-Host "Der er 1 løsning" 
write-Host "-------------------"
[decimal] $x1 = -($B/(2*$A))
write-Host  "x1 = $x1"

}
PAUSE