package com.example.poc_flutter_app.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import com.example.poc_flutter_app.R;

import io.flutter.app.FlutterFragmentActivity;
import io.flutter.facade.Flutter;
import io.flutter.facade.FlutterFragment;
import io.flutter.plugins.FlutterToAndroidPlugins;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.plugins.TestToastPlugin;

/**
 * Created by Ryan on 27/03/2019.
 */
public class ReservedActivity extends FlutterFragmentActivity {
    private LinearLayout linearLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        TestToastPlugin.registerWith(registrarFor(TestToastPlugin.CHANNEL));
        FlutterToAndroidPlugins.registerWith(this);
        View flutterView = Flutter.createView(this,
                getLifecycle(),
                "route1"
        );
        //linearLayout.addView(flutterView);
        FrameLayout.LayoutParams layoutParams =
                new FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT,
                        FrameLayout.LayoutParams.MATCH_PARENT);
        addContentView(flutterView, layoutParams);

    }
}
