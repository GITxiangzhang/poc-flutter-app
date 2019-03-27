package io.flutter.plugins;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.FlutterView;

/**
 * Created by Ryan on 26/03/2019.
 */
public class BatteryManager implements MethodChannel.MethodCallHandler {
    private static final String CHANNEL = "io.flutter.plugins/battery";
    private Context mContext;

    public static void registerWith(FlutterActivity activity) {
        new BatteryManager(activity.getFlutterView());
    }

    private BatteryManager(FlutterView view) {
        mContext = view.getContext();
        new MethodChannel(view, CHANNEL).setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String method = methodCall.method;
        switch (method) {
            case "getBatteryLevel":
                result.success(getBatteryLevel());
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    private int getBatteryLevel() {
        Intent intent = new ContextWrapper(mContext.getApplicationContext()).
                registerReceiver(null, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        if (intent == null) return -1;
        return intent.getIntExtra(android.os.BatteryManager.EXTRA_LEVEL, -1);
    }
}
