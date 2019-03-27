package io.flutter.plugins;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.FlutterView;

/**
 * Created by Ryan on 26/03/2019.
 */
public class FlutterPluginShowDialog implements MethodChannel.MethodCallHandler {
    private static final String CHANNEL = "io.flutter.plugins/FlutterPluginShowDialog";
    private Context mContext;

    public static void registerWith(FlutterActivity activity) {
        new io.flutter.plugins.FlutterPluginShowDialog(activity.getFlutterView());
    }

    private FlutterPluginShowDialog(FlutterView view) {
        mContext = view.getContext();
        new MethodChannel(view, CHANNEL).setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String method = methodCall.method;
        switch (method) {
            case "showDialog":
                result.success(showDialog());
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    private int showDialog() {

        Toast.makeText(mContext, "11111", Toast.LENGTH_SHORT).show();

        return 0;
    }


}
