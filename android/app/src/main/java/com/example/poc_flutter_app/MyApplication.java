package com.example.poc_flutter_app;

import android.app.Activity;
import android.support.annotation.CallSuper;

import io.flutter.app.FlutterApplication;
import io.flutter.view.FlutterMain;

/**
 * Created by Ryan on 27/03/2019.
 */
public class MyApplication extends FlutterApplication {
    private Activity mCurrentActivity = null;

    public MyApplication() {
    }

    @CallSuper
    public void onCreate() {
        super.onCreate();
        FlutterMain.startInitialization(this);
    }

    public Activity getCurrentActivity() {
        return this.mCurrentActivity;
    }

    public void setCurrentActivity(Activity mCurrentActivity) {
        this.mCurrentActivity = mCurrentActivity;
    }
}

