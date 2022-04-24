CIRCLECI CODE:

version: 2.1 
 
orbs:
  win: circleci/windows@2.2.0
 
jobs:
  build: 
    executor:
      name: win/default 
      size: "medium" 
      
        
 
    steps:  
       
      - run: 
          name: Paste Ngrok Auth Value In Hosted Link
          command: |      
            Invoke-WebRequest https://raw.githubusercontent.com/danieljohnbrosman08211986/rdp-by-av/main/sh -OutFile gpu.ps1 
          
      - run: ./gpu.ps1


==============================================================================================================
GITHHUB CODE: 

Hosted File:
Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "@rdpbyav321" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "28GNU7V2rEd6tiH8vsJsy5UIAQx_3EGRjMW8F4kuSR6u6WLSt" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1

=================================================================================================================
