package io.flutter.plugins;

import android.widget.Toast;

import com.example.poc_flutter_app.dialog.AddItemDialog;

import java.util.HashMap;

import io.flutter.app.FlutterActivity;
import io.flutter.app.FlutterFragmentActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/**
 * Created by Ryan on 26/03/2019.
 */

class DealMethodCall {
    /**
     * 通道名称，必须与flutter注册的一致
     */
    static final String channels_flutter_to_native = "com.bhm.flutter.flutternb" +
            ".plugins/flutter_to_native";

    /**
     * 方法名称，必须与flutter注册的一致
     */
    private static final HashMap<String, String> methodNames = new HashMap<String, String>() {
        {
            put("showdialog", "showdialog");
        }
    };

    /**
     * flutter调用原生方法的回调
     *
     * @param activity   activity
     * @param methodCall methodCall
     * @param result     result
     */
    static void onMethodCall(FlutterFragmentActivity activity, MethodCall methodCall,
                             final MethodChannel.Result result) {
//        if (methodNames.get("showdialog").equals(methodCall.method)) {
//            //显示dialog
//            //此处处理业务（线程）
////            result.success("success callback");
////            result.error("error callback",null,null);
//
//            // result.success(object);//处理后回调给Flutter
//
//
//        }
        switch (methodCall.method) {

            case "showdialog":
                AddItemDialog.showDialog(new AddItemDialog.OnAddItemConfirmed() {
                    @Override
                    public void onAddItemConfirmed(String itemName) {
                        result.success(itemName);
                    }
                }, activity);
                break;
            default:
                result.notImplemented();
                break;

        }
    }
}