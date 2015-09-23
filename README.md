# WikiaTest
#Initial Setup
Open Eclipse
Create New Project WikiaAssignment and click on finish
Right click on the project and click on Properties
Go to Java Build Path and Select Libraries
Click on Add External JARs
Add the selenium-server-standalone-2.47.1.jar and click on
Right Click on Project and create Package wikia
Install TestNG Framework
#To Create Selenium Grid Hub and Node
Create a folder Lib on your local drive
Copy selenium-server-standalone-2.47.1.jar and chromedriver.exe in that folder
Open Command prompt on the lib folder and give the following command to initialize the hub : java -jar selenium-server-standalone-2.47.1.jar -role hub
Open aother Command prompt on the lib folder and give the following command to initialize the hub : java -Dwebdriver.chrome.driver=chromedriver.exe -jar  selenium-server-standalone-2.47.1.jar -role node -hub  http://localhost:4444/grid/register-browser browserName=chrome
#Creating TestCase1
Right Click on Package wikia and Select TestNG>Create TestNG Class
Give the Class name as "Login" and Click on finish
Copy the code from Login to the Login.java class
Run the TestCase as TestNG Test
It will launch Firefox browser, open the http://qm-homework.wikia.com site, go to Sign In and login with valid credentials
#Creating TestCase2
Right Click on Package wikia and Select TestNG>Create TestNG Class
Give the Class name as "AddVideo" and Click on finish
Copy the code from AddVideo to the AddVideo.java class
Run the TestCase as TestNG Test
It will launch Chrome browser, open the http://qm-homework.wikia.com site, go to Sign In and login with valid credentials,Click on the contibute button and select Add a Video, type video URL an add the video
#Running the Test Suite
Save the Project
Right click on Project and go to TestNG>Convert to TestNG
It will create the TestNG.xml file
Run the TestNG.xml file

