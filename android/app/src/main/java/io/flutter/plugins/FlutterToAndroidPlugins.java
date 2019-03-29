package io.flutter.plugins;

import io.flutter.app.FlutterActivity;
import io.flutter.app.FlutterFragmentActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/**
 * Created by Ryan on 26/03/2019.
 */
public class FlutterToAndroidPlugins implements MethodChannel.MethodCallHandler{

    private FlutterFragmentActivity activity;

    private FlutterToAndroidPlugins(FlutterFragmentActivity activity) {
        this.activity = activity;
    }

    public static void registerWith(FlutterFragmentActivity activity) {
        FlutterToAndroidPlugins instance = new FlutterToAndroidPlugins(activity);
        //flutter调用原生
        MethodChannel channel = new MethodChannel(activity.registrarFor(DealMethodCall.channels_flutter_to_native)
                .messenger(), DealMethodCall.channels_flutter_to_native);
        //setMethodCallHandler在此通道上接收方法调用的回调
        channel.setMethodCallHandler(instance);
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        DealMethodCall.onMethodCall(activity, methodCall, result);
    }


}