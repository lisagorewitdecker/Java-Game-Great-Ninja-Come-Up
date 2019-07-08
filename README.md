# Great Ninja Come Up Java Game
Game developed in Spring Tool Suite 4 using Java v8. Responsive, Pac-Man inspired game with a ninja theme.
Developed by Brent Songey and Lisa Gorewit-Decker.

## Getting Started
Download <a href="https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html">Java JDK 8(u211)</a>, choose which installation type (tar, zip, dmg) based on your operating system. Download Apache Tomcat 8 version 8.5.15 from this link: <a href="http://tomcat.apache.org/download-80.cgiApache"> Tomcat Download</a>.

Create a new folder named <b>servlets</b> and have Spring Tool Suite as a working directory.
Add Apache Tomcat as one of our run time environments.

IMPORTANT: STS has been updated to Spring Tools 4 and there has been some changes on how to add to your Tomcat servers. Here is a <a href="http://www.bigsoft.co.uk/blog/2008/08/10/configuring-eclipse-tomcat-spring">video update</a> on how to add it with the new STS version:
After clicking on Preferences, go to <b>Server</b> --> <b>Runtime Environments</b> --> <b>Add</b>...
Select <b>Apache Tomcat v8.5</b> and click <b>Next</b>.
Change the Tomcat installation directory to the folder downloaded from our very first step and click <b>Finish</b>.

On the left bottom side of STS, in the Servers tab, we are going to create a new server using Apache Tomcat 8.5. If you cannot find the Servers tab, you can go to <b>Window</b> --> <b>Show View</b> --> <b>Servers</b>, to add it to your STS dashboard view.

Name the project <b>HelloWorld</b>, double check that the Target runtime is using Apache Tomcat v8.5. Click <b>Finish</b> and the project will be created for you. If you get a pop up about the project being associated with the Java EE perspective, click <b>yes</b>. All it means is that STS will display the directory hierarchy in a certain way.

Right click on the <b>HelloWorld Project</b>  --> <b>Run As</b> --> <b>Run on server</b>
Choose Tomcat v8.5 and click <b>Finish</b>. Now, you should see a <b>404 Error</b> in the STS Browser.
Change the build path to create your classes in the <b>/WEB-INF/</b> folder.
You  will need to go through this process every time you set up a servlet project.
( Useful links: <a href="https://tomcat.apache.org/download-80.cgi">Apache Tomcat</a> )

Assuming that you are familiar with and use Homebrew package manager, we are going to download and install Maven which is a dependency.
Open your text editor and type the following:<br>
<b>brew install maven</b>.

This command downloads maven and installs it in on your computer. To check if you have it installed correctly we will check the maven version that it has installed.
In your text editor, type: <b>https://github.com/user/repo/blob/branch/other_file.md</b>

You will also need Spring Tool Suite 4 (again, download based on your operating system).

### Prerequisites
Please See Above...

### Installing
The source code can be found at <a href="https://github.com/songey/Great_Ninja_Come_Up_Java.git">https://github.com/songey/Great_Ninja_Come_Up_Java.git</a>.

How to clone/initialize repository:<br>
<b>git clone</b>

Create a feature branch and push to it. You can do a remote commit with the following:<br>
<b>git checkout master</b><br>
<b>git pull</b><br>
<b>git checkout -b your_feature_branch_goes_here</b><br>
Make your edits

In STS, right-click on project, e.g. "ninjaProject". Scroll down to <b>Run As</b>, navigate to and click on <b>Spring Boot App</b>.

This command will show you any new files and confirm what branch you're on:<br>
<b>git status</b><br>

To see files which have been modified or changed use the command below:<br>
<b>git diff</b><br>

In order to add any new files and stage these new files for a commit:<br>
<b>git add "XYZ"</b> for any new files, e.g. "XYZ".<br>

To commit: <br>
<b>git commit --all</b><br>
<b>git push origin your_feature_branch_goes_here</b><br>

Then navigate to the pull requests page at github.com within the repository and choose <b>New pull request</b> in order to create a request to merge your feature branch into master.<br>

When you are ready to Merge your feature branch into master, click the <b>Merge</b> button and let the github website perform the actual change to master. You can then close the source branch on github and delete your local branch with:<br>
<b>git checkout master && git pull && git branch -d your_feature_branch_goes_here</b>

Try to make your feature branch as short and descriptive as you can be. If you have to refactor due to your change(s), create one feature branch for refactoring, another that will build on it.

## Video Walkthrough
<a href="https://youtu.be/E8UiKXXnvvo">https://youtu.be/E8UiKXXnvvo</a>

## Built With
Java, STS, JSP, CSS, JavaScript, Adobe Creative Suite

## Versioning 
1.0

## Authors
Brent Songey, Lisa Gorewit-Decker

## License
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
