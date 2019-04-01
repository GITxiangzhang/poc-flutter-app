package com.example.poc_flutter_app;

import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.app.FlutterFragmentActivity;
import io.flutter.plugins.FlutterToAndroidPlugins;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.plugins.TestToastPlugin;

public class MainActivity extends FlutterFragmentActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        FlutterToAndroidPlugins.registerWith(this);
        TestToastPlugin.registerWith(registrarFor(TestToastPlugin.CHANNEL));
    }
}
