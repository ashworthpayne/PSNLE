# One-time pad generator
# 
# This script will generate 10 pages of 10 paragraphs of 10 lines of 10 5-letter words.
# 
# This will not regenerate an existing pad. Do you understand? 
#
# This is for demonstration of nested loops. If you use this for anything other than
# educational purposes you are an idiot who deserves cancer.


# Save the output to:
Start-Transcript -Path .\Documents\Books\Mine\1TimePad.txt	

# Generate a random Alphanumeric string
	Function Get-RandomAlphanumericString {
		[CmdletBinding()]
	Param (
	[int] $length = 8
	)
	Begin{
	}
	
	Process{
	Write-Output ( -join ((0x30..0x39) + ( 0x41..0x5A) + ( 0x61..0x7A) | Get-Random -Count $length | % {[char]$_}) )
	}
	}

# Write 10 pages.
for ($j=1; $j -le 10; $j++) {
Write-Host ""
Write-Host "                                                - $j -"
# Write 10 paragraphs.
for ($i=1; $i -le 10; $i++) {
Write-Host "Paragraph $i"
Write-Host " |   A     B     C     D     E     F     G     H     I     J  "
Write-Host "--------------------------------------------------------------"
0..9 | % {	Write-Host "$_|"(Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) (Get-RandomAlphanumericString -length 5| Tee-Object -variable teeTime ) }
Write-Host "--------------------------------------------------------------"
}
Write-Host ""
Write-Host "                                                - $j -"
}
Stop-Transcript
