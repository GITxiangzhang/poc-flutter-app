package com.example.poc_flutter_app.ui.activity;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.MenuItem;

import com.example.poc_flutter_app.R;
import com.example.poc_flutter_app.ui.fragment.HomeFragment;
import com.example.poc_flutter_app.ui.fragment.SecondFragment;
import com.example.poc_flutter_app.ui.fragment.ThirdFragment;

import io.flutter.app.FlutterFragmentActivity;
import io.flutter.plugins.FlutterToAndroidPlugins;
import io.flutter.plugins.GeneratedPluginRegistrant;

/**
 * Created by Ryan on 26/03/2019.
 */
public class HomeActivity extends FlutterFragmentActivity implements
        BottomNavigationView.OnNavigationItemSelectedListener {
    private BottomNavigationView bottomNavigationView;
    private HomeFragment fragmentHome;
    private SecondFragment secondFragment;
    private ThirdFragment thirdFragment;
    private Fragment[] fragments;
    private int lastfragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initView();
        initValue();
        initEvent();

    }

    private void initEvent() {
        bottomNavigationView.setOnNavigationItemSelectedListener(this);
    }

    private void initValue() {
    }

    private void initView() {

        bottomNavigationView = findViewById(R.id.bnv);
        initFragment();
    }

    private void initFragment() {

        fragmentHome = new HomeFragment();
        secondFragment = new SecondFragment();
        thirdFragment = new ThirdFragment();
        fragments = new Fragment[]{fragmentHome, secondFragment, thirdFragment};
        lastfragment = 0;
        getSupportFragmentManager().beginTransaction().replace(R.id.mainview, fragmentHome).show(fragmentHome).commit();

    }

    //切换Fragment
    private void switchFragment(int lastfragment, int index) {
        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        transaction.hide(fragments[lastfragment]);//隐藏上个Fragment
        if (fragments[index].isAdded() == false) {
            transaction.add(R.id.mainview, fragments[index]);


        }
        transaction.show(fragments[index]).commitAllowingStateLoss();


    }


    @Override
    protected void onPause() {
        super.onPause();


    }

    @Override
    protected void onResume() {
        super.onResume();


    }

    @Override
    protected void onDestroy() {
        super.onDestroy();


    }


    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        switch (itemId) {
            case R.id.item1:

                if (lastfragment != 0) {
                    switchFragment(lastfragment, 0);
                    lastfragment = 0;

                }
                return true;

            case R.id.item2:
                if (lastfragment != 1) {
                    switchFragment(lastfragment, 1);
                    lastfragment = 1;

                }
                return true;
            case R.id.item3:
                if (lastfragment != 2) {
                    switchFragment(lastfragment, 2);
                    lastfragment = 2;

                }
                return true;

        }
        return false;
    }


}