package com.lfs.ms.android.activity;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.view.Menu;
import android.view.MenuInflater;

import com.lfs.ms.android.R;

public class InfoActivity extends Activity implements MainDrawerFragment.NavigationDrawerCallbacks {
	
    private MainDrawerFragment navigation_drawer_fragment;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.info_activity);
		navigation_drawer_fragment = (MainDrawerFragment) this.getFragmentManager().findFragmentById(R.id.navigation_drawer);
		navigation_drawer_fragment.setUp( (DrawerLayout) findViewById(R.id.drawer_layout));
	}
	@Override
	public void onNavigationDrawerItemSelected(int position) {
    FragmentManager fragmentManager = this.getFragmentManager();
    Bundle bundle =getIntent().getExtras();
    bundle.putInt("position", position);
    fragmentManager.beginTransaction().replace(R.id.container, InfoListFragment.newInstance(bundle)).commit();
	}
  @Override  
  public boolean onCreateOptionsMenu(Menu menu)  {  
      MenuInflater inflater = getMenuInflater();  
      inflater.inflate(R.menu.main, menu);  
      return true;  
  }  
}