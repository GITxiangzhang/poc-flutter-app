package com.example.poc_flutter_app.ui.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.example.poc_flutter_app.MainActivity;
import com.example.poc_flutter_app.R;

import io.flutter.facade.Flutter;
import io.flutter.plugins.FlutterToAndroidPlugins;
import io.flutter.plugins.GeneratedPluginRegistrant;


/**
 * Created by Ryan on 25/03/2019.
 */
public class SecondFragment extends Fragment {
    private LinearLayout flutterLayout;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_second, container, false);

        return view;
    }


    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        flutterLayout=getActivity().findViewById(R.id.fluuter_layout);
        View flutterView = Flutter.createView(getActivity(),
                getLifecycle(),
                "route1"
        );
        flutterLayout.addView(flutterView);
    }
}
