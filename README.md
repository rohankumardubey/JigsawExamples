# JigsawExamples
Few Java 9 examples to start with module system(Jigsaw).

## ModuleIntro
This is the first project to start with. "com.varun.helloworld" module calls a method in "com.varun.printer" module to print the string
"hello world". This dependency is specified in the module-info.java file which at the root of helloworld project. Use to .sh files to 
compile and run the program. <br/>
linking.sh will create a new runtime image with just the modules required to run the program.

## PackageExports-Fail
In this project, helloworld module calls the methods in com.varun.printer.internal package which are not exported by printer module.
So the compilation fails.


## CyclicDependencies-Fail
Modules cannot have cyclic dependencies. 

## AppMigration
com.varun.testapp is a module which depends on junit.jar which is on classpath. To make junit.jar visible to testapp module, 
move it to modulepath (see run.sh). <br/>
Moving a jar to modulepath makes it an automatic module. The name of the automatic module is the name of the jar. Automatic module 
 exports all of its packages and requires(can read) all modules in the system.
 
## AppMigration-EC2
The main method in "com.varun.appmigration" module uses AmazonEC2Client to print the volumes in your Amazon EBS account. 
All the required jar files are placed in the lib directory. This is similar to AppMigration project.

## LibraryMigration-EC2
I added module-info.java file to AmazonEC2Client and packaged it into a modular jar. It is in the mlib dir under aws.java.sdk.ec2.jar
"com.varun.appmigration" module depends on "aws.java.sdk.ec2.jar". All dependencies for ec2 jar are placed in lib dir. The current program 
fails with some weire joda-time error. Will update the project once I figure out the issue.
