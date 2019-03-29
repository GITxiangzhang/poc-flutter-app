package io.flutter.plugins;

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

/**
 * Created by Ryan on 27/03/2019.
 */
public class TestToastPlugin implements MethodChannel.MethodCallHandler {

    public static String CHANNEL = "io.flutter.plugins/TestToastPlugin";

    static MethodChannel channel;

    private Activity activity;

    private TestToastPlugin(Activity activity) {
        this.activity = activity;
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        channel = new MethodChannel(registrar.messenger(), CHANNEL);
        TestToastPlugin instance = new TestToastPlugin(registrar.activity());
        //setMethodCallHandler在此通道上接收方法调用的回调
        channel.setMethodCallHandler(instance);
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {

        //通过MethodCall可以获取参数和方法名，然后再寻找对应的平台业务，本案例做了2个跳转的业务

        if (call.method.equals("toast")) {
            Toast.makeText(activity, "啦啦啦啦", Toast.LENGTH_SHORT).show();
            result.success("success");
        }

    }

}
