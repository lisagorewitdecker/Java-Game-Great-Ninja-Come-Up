# Great Ninja Come Up Java Game
Game developed in Spring Tool Suite 4 using Java v8. Responsive, Pac-Man inspired game with a ninja theme.
Developed by Brent Songey and Lisa Gorewit-Decker. 

## Getting Started
Download Java SDK 8u131, JDK, choose which installation type (tar, zip, dng) based on your operating system. 
Download Apache Tomcat 8 version 8.5.15 from this link: Apache Tomcat Download.
Create a new folder named 'servlets' and have Spring Tool Suite as a working directory.
Add Apache Tomcat as one of our run time environments.
IMPORTANT: STS has been updated to Spring Tools 4 and there has been some changes on how to add to your Tomcat servers. Here is a video update on how to add it with the new STS version:
After clicking on Preferences, go to Server --> Runtime Environments --> Add...
Select Apache Tomcat v8.5 and click 'Next'
Change the Tomcat installation directory to the folder downloaded from our very first step and click 'Finish'.
On the left bottom side of STS, in the Servers tab, we are going to create a new server using Apache Tomcat 8.5. If you cannot find the Servers tab, you can go to Window --> Show View --> Servers, to add it to your STS dashboard view. 
Name the project 'HelloWorld', double check that the Target runtime is using Apache Tomcat v8.5. Click 'Finish' and the project will be created for you. If you get a pop up about the project being associated with the Java EE perspective, click 'yes'. All it means is that STS will display the directory hierarchy in a certain way. 
Right click on the 'HelloWorld' project --> Run As --> Run on server
Choose Tomcat v8.5 and click 'Finish'. Now, you should see a '404 Error' in the STS Browser.
Change the build path to create your classes in the '/WEB-INF/' folder.
You  will need to go through this process every time you set up a servlet project. 
( Useful links: Apache Tomcat )
Brew Maven: Now that we have Homebrew package manager, we are going to download and install Maven. 
Open your terminal and type: 'brew install maven'.
This command downloads maven and installs it in on your computer. To check if you have it installed correctly we will check the maven version that it has installed. 
In your teminal, type: 'https://github.com/user/repo/blob/branch/other_file.md'
 
You will also need Spring Tool Suite 4 (again, download based on your operating system).

### Prerequisites
See above...

### Installing
How to clone/initialize repository:
The source code can be found at 'https://github.com/songey/Great_Ninja_Come_Up_Java.git'.
git clone

Create a feature branch and push to it. You can do a remote commit with the following:
git checkout master
git pull
git checkout -b your_feature_branch_goes_here
Make your edits

In STS, right-click on project, e.g. "ninjaProject". Scroll down to 'Run As', navigate to and click on 'Spring Boot App'.

git status
This will show you any new files and confirm what branch you're on.

git diff
git add "XYZ" for any new files, e.g. "XYZ"
git commit --all
git push origin your_feature_branch_goes_here
Go to the pull requests page at github and choose 'New pull request' to create a request to merge your feature branch into master.
When ready to Merge feature branch into master. Click the 'Merge' button and let the website do the actual change to master. You can then close the source branch on github and delete your local branch with git checkout master && git pull && git branch -d your_feature_branch_goes_here

Try to make your feature branch as short and descriptive as you can be. If you have to refactor due to your change(s), create one feature branch for refactoring, another that will build on it.

## Video Walkthrough
'https://www.youtube.com/embed/E8UiKXXnvvo?rel=0'

## Built With
Java, STS, JSP, CSS, JavaScript, Adobe Creative Suite

## Versioning 
1.0

## Authors
Brent Songey, Lisa Gorewit-Decker

## License
Apache, MIT
