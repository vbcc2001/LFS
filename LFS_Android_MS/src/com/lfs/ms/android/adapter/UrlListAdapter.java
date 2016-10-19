package  com.lfs.ms.android.adapter;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.lfs.ms.android.R;
import com.lfs.ms.android.activity.MyApplication;
import com.lfs.ms.android.object.Url;

/**自定义图片适配器**/
public class UrlListAdapter extends BaseAdapter {
	
	private SimpleDateFormat year_format = new SimpleDateFormat("yyyy", Locale.getDefault());
	private SimpleDateFormat date_format = new SimpleDateFormat("MM-dd", Locale.getDefault());
	private List<Url> url_list = new ArrayList<Url>();
	private class ViewHolder {
		public TextView year;
		public TextView date;		
		public TextView title;
		public TextView url;		
	}
	public UrlListAdapter(List<Url> url_list){
		super();
		this.url_list = url_list;
	}
	@Override
	public int getCount() {
		return url_list.size();
	}
	@Override
	public Object getItem(int position) {
		return url_list.get(position);
	}
	@Override
	public long getItemId(int position) {
		return position;
	}
	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		View view = convertView;
		final ViewHolder holder;
		if (convertView == null) {
			view =  View.inflate(MyApplication.context, R.layout.url_list_item, null);
			holder = new ViewHolder();
			holder.year = (TextView) view.findViewById(R.id.year);
			holder.date = (TextView) view.findViewById(R.id.date);			
			holder.title = (TextView) view.findViewById(R.id.title);
			holder.url = (TextView) view.findViewById(R.id.url);			
			view.setTag(holder);
		} else {
			holder = (ViewHolder) view.getTag();
		}
		holder.year.setText(year_format.format(url_list.get(position).getCreate_date()) );
		holder.date.setText(date_format.format(url_list.get(position).getCreate_date()) );		
		holder.title.setText(url_list.get(position).getTitle() );
		holder.url.setText(url_list.get(position).getUrl());		
		return view;
	}
	public List<Url> geturl_list() {
		return url_list;
	}
	public void seturl_list(List<Url> url_list) {
		this.url_list = url_list;
	}
}
	