package com.lfs.ms.android.activity;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.support.v4.app.ActionBarDrawerToggle;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import com.lfs.ms.android.R;

public class MainDrawerFragment extends Fragment {
	
	private ActionBarDrawerToggle drawer_toggle;
	private int current_selected_position = 0;
    private ListView drawer_List_view;
    private DrawerLayout drawer_layout;
    private View fragmen_container_view;
    private NavigationDrawerCallbacks navigation_drawer_callbacks;
    public MainDrawerFragment() {
    }
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.selectItem(current_selected_position);
    }
    @Override
    public void onActivityCreated (Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        setHasOptionsMenu(true);
    }    
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    	drawer_List_view = (ListView) inflater.inflate(R.layout.info_drawer, container, false);
    	drawer_List_view.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                selectItem(position);
            }
        });
    	drawer_List_view.setAdapter(new ArrayAdapter<String>(
    			getActivity().getActionBar().getThemedContext(),
                android.R.layout.simple_list_item_activated_1,
                android.R.id.text1,
                new String[]{
                        getString(R.string.title_section_1),
                        getString(R.string.title_section_2),
                        getString(R.string.title_section_3),
                        getString(R.string.title_section_10)                     
                }));
    	drawer_List_view.setItemChecked(current_selected_position, true);
        return drawer_List_view;
    }
    public void setUp(DrawerLayout drawerLayout) {
    	fragmen_container_view = this.getActivity().findViewById(R.id.navigation_drawer);
    	drawer_layout = drawerLayout;
    	drawer_layout.setDrawerShadow(R.drawable.drawer_shadow, GravityCompat.START);
        ActionBar actionBar = this.getActivity().getActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setHomeButtonEnabled(true);
        drawer_toggle = new ActionBarDrawerToggle(
                getActivity(),                    /* host Activity */
                drawer_layout,                    /* DrawerLayout object */
                R.drawable.ic_drawer,             /* nav drawer image to replace 'Up' caret */
                R.string.navigation_drawer_open,  /* "open drawer" description for accessibility */
                R.string.navigation_drawer_close  /* "close drawer" description for accessibility */
        ) { };
        drawer_layout.post(new Runnable() {
            @Override
            public void run() {
            	drawer_toggle.syncState();
            }
        });
        drawer_layout.setDrawerListener(drawer_toggle);
    }
    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
        	navigation_drawer_callbacks = (NavigationDrawerCallbacks) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException("Activity must implement NavigationDrawerCallbacks.");
        }
    }
    @Override
    public void onDetach() {
        super.onDetach();
        navigation_drawer_callbacks = null;
    }
    private void selectItem(int position) {
    	current_selected_position = position;
        if (drawer_List_view != null) {
        	drawer_List_view.setItemChecked(position, true);
        }
        if (drawer_layout != null) {
        	drawer_layout.closeDrawer(fragmen_container_view);
        }
        if (navigation_drawer_callbacks != null) {
        	navigation_drawer_callbacks.onNavigationDrawerItemSelected(position);
        }
    }
    public boolean isDrawerOpen() {
        return drawer_layout != null && drawer_layout.isDrawerOpen(fragmen_container_view);
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (drawer_toggle.onOptionsItemSelected(item)) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    public static interface NavigationDrawerCallbacks {
        void onNavigationDrawerItemSelected(int position);
    }
}
