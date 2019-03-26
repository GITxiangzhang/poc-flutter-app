package com.example.poc_flutter_app.ui.activity;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomNavigationView;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.example.poc_flutter_app.R;
import com.example.poc_flutter_app.dialog.AddItemDialog;
import com.example.poc_flutter_app.ui.fragment.HomeFragment;
import com.example.poc_flutter_app.ui.fragment.SecondFragment;
import com.example.poc_flutter_app.ui.fragment.ThirdFragment;

/**
 * Created by Ryan on 26/03/2019.
 */
public class HomeActivity extends AppCompatActivity implements
        BottomNavigationView.OnNavigationItemSelectedListener {
    private LinearLayout myreact;
    private ViewPager viewPager;
    private BottomNavigationView bottomNavigationView;
    private MenuItem menuItem;

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
        //ReactNative相关
//        myreact = (LinearLayout) findViewById(R.id.react_root_layout);//原生布局中的view
//        mReactRootView = new ReactRootView(this);
//        mReactInstanceManager = ReactInstanceManager.builder()
//                .setApplication(getApplication())
//                .setCurrentActivity(this)
//                .setBundleAssetName("index.android.bundle")
//                .setJSMainModulePath("index")
//                .addPackage(new MainReactPackage())
//                .setUseDeveloperSupport(BuildConfig.DEBUG)
//                .setInitialLifecycleState(LifecycleState.RESUMED)
//                .build();
//        mReactRootView.startReactApplication(mReactInstanceManager, "pocRNApp", null);//启动入口
//        myreact.addView(mReactRootView);//添加react布局
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
    public void onBackPressed() {

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