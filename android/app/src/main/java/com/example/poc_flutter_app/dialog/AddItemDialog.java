package com.example.poc_flutter_app.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.StyleRes;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.example.poc_flutter_app.R;

/**
 * Created by Ryan on 26/03/2019.
 */
public class AddItemDialog extends Dialog {

    private EditText editText;
    private TextView confirmTV;
    private TextView cancelTV;
    private OnAddItemConfirmed onAddItemConfirmed;


    public static void  showDialog(OnAddItemConfirmed onAddItemConfirmed,Context context){
        AddItemDialog addItemDialog = new AddItemDialog(context,R.style.MyDialog);
        addItemDialog.setOnAddItemConfirmed(onAddItemConfirmed);
        addItemDialog.show();
    }



    public interface OnAddItemConfirmed {
        void onAddItemConfirmed(String itemName);
    }

    public void setOnAddItemConfirmed(OnAddItemConfirmed onAddItemConfirmed) {
        this.onAddItemConfirmed = onAddItemConfirmed;
    }

    public AddItemDialog(@NonNull Context context, @StyleRes int themeResId) {
        super(context, themeResId);
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_fragment_input);
        //空白处不能取消动画
        setCanceledOnTouchOutside(false);

        //初始化界面控件
        initView();

        //初始化界面控件的事件
        initEvent();
    }

    /**
     * 初始化界面控件
     */
    private void initView() {
        editText = findViewById(R.id.ed);
        confirmTV = findViewById(R.id.tv_confirm);
        cancelTV = findViewById(R.id.tv_cancel);
    }


    /**
     * 初始化界面的确定和取消监听
     */
    private void initEvent() {
        confirmTV.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String input = editText.getText().toString();
                if (TextUtils.isEmpty(input)) {
                    Toast.makeText(getContext(), "Please input the item name",
                            Toast.LENGTH_SHORT).show();
                } else {
                    if (onAddItemConfirmed != null) {
                        onAddItemConfirmed.onAddItemConfirmed(input);
                    }
                    dismiss();
                }
            }
        });
        cancelTV.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
            }
        });
    }

}