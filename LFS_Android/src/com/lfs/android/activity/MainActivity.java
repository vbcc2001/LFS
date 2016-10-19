package com.lfs.android.activity;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.view.Menu;
import android.view.MenuInflater;

import com.lfs.android.R;

public class MainActivity extends Activity implements NavigationDrawerFragment.NavigationDrawerCallbacks {
	
    private NavigationDrawerFragment navigation_drawer_fragment;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		navigation_drawer_fragment = (NavigationDrawerFragment) this.getFragmentManager().findFragmentById(R.id.navigation_drawer);
		navigation_drawer_fragment.setUp( (DrawerLayout) findViewById(R.id.drawer_layout));
	}
	@Override
	public void onNavigationDrawerItemSelected(int position) {
        FragmentManager fragmentManager = this.getFragmentManager();
        if(position==2){
        	 fragmentManager.beginTransaction().replace(R.id.container, BTFileFragment.newInstance(position)).commit();
        }else{
        	 fragmentManager.beginTransaction().replace(R.id.container, PlaceholderFragment.newInstance(position + 1)).commit();
        }
       
	}
    @Override  
    public boolean onCreateOptionsMenu(Menu menu)  {  
        MenuInflater inflater = getMenuInflater();  
        inflater.inflate(R.menu.main, menu);  
        return true;  
    }  
}