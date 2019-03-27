package com.example.poc_flutter_app;

import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.BatteryManager;
import io.flutter.plugins.FlutterPluginShowDialog;
import io.flutter.plugins.FlutterToAndroidPlugins;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        FlutterPluginShowDialog.registerWith(this);
        FlutterToAndroidPlugins.registerWith(this);
    }
}
