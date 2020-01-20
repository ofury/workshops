# Setup Firebase Project

Open up the firebase console and click on "Add Project". 
Call it "firebase_authentication".
Click on the Android Icon (or iOS) and add your package name.
Register the app and then download the google-services.json file and place it in the android/app folder. 
Open the build.gradle file in the android/app folder and change the applicationId to match the one in the Firebase project.
Setup sign in methods in Authentication section in the Firebase project.
Create Database  in test mode.

# Android setup

Open the build.gradle file in the android folder and add the google services dependency.

    dependencies {
        // existing dependencies
        classpath 'com.android.tools.build:gradle:3.5.0'
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"

        // Add the google services classpath
        classpath 'com.google.gms:google-services:4.3.0'
    }

Open up the android/app/build.gradle and add the following line at the bottom:

// ADD THIS AT THE BOTTOM
apply plugin: 'com.google.gms.google-services'

In android/app/build.gradle file bump the minSdkVersion from 16 to 21. 