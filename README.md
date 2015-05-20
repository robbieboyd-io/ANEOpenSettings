# ANEOpenSettings

This AIR NAtive Extension allows iOS8+ devices to be directed to the Notifications Center. This is handy when you want to prompt the user to toggle their Push Notification settings for inside your app. 

Note: This is is just iOS8+ as this feature is relatively new. You may need to add instructions to direct the user to Notification Center on previous version of iOS. This can be checked by using ANEOpenSettings.isSupported.

Example
```actionscript
if(ANEOpenSettings.isSupported())
{
    ANEOpenSettings.instance.openSettings();
} else {
    trace(this + " : this version of iOS is not supprted for this ANE");
}
```