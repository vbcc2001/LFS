package com.lfs.gae.ms.jdo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.SortDirection;
import com.google.appengine.datanucleus.JDODatastoreBridge;
import com.lfs.gae.ms.object.LfsUser;

public class LfsUserJDO  {
		String kind = LfsUser.class.getSimpleName();
		/* 添加 */
		public LfsUser addUser(LfsUser user) {
			PersistenceManager pm = PMF.get();
			try {
				return pm.makePersistent(user);
			} finally {
				pm.close();
			}
		}
		/* 查询，按时间查后20条 */
		public List<LfsUser> getLatestInfo(String id,String create_date) throws Exception {
    		Date date = new Date(0);
    		if(create_date!=null && create_date.length()>0){
        		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
        		date =format.parse(create_date);
    		}
    		Key key = KeyFactory.createKey(kind, 1);
    		if(id!=null && id.length()>0){
    			key = KeyFactory.createKey(kind,Long.parseLong(id));
    		}
    		Filter dateFilter =new FilterPredicate("create_date",FilterOperator.GREATER_THAN_OR_EQUAL,date);
    		Query q = new Query(kind).setFilter(dateFilter);
    		q.addSort("create_date", SortDirection.DESCENDING);
    		q.addSort(Entity.KEY_RESERVED_PROPERTY, SortDirection.DESCENDING);
    		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
    		PreparedQuery pq = datastore.prepare(q);
    		Iterable<Entity> list =  pq.asIterable(FetchOptions.Builder.withLimit(20));
    		List<LfsUser> list_info = new ArrayList<LfsUser>(); 
    		JDODatastoreBridge j = new JDODatastoreBridge();
    		PersistenceManager pm =PMF.get();
    		for (Entity entity : list) {
    			Date entity_create_date = (Date)entity.getProperty("create_date");
    			if(entity_create_date.getTime()==date.getTime() && key.getId()!=1 && entity.getKey().getId()<=key.getId()){
    				break;
    			}else{
    				list_info.add((LfsUser)j.getJDOFromEntity(entity, pm, LfsUser.class));
    			}
    		}
    		return list_info;
		}
		/* 查询，按时间查前20条 */
		public List<LfsUser> getOldInfo(String id,String create_date) throws Exception {
    		Date date = new Date(0);
    		if(create_date!=null && create_date.length()>0){
        		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
        		date =format.parse(create_date);
    		}
    		Key key = KeyFactory.createKey(kind, 1);
    		if(id!=null && id.length()>0){
    			key = KeyFactory.createKey(kind,Long.parseLong(id));
    		}
    		Filter dateFilter =new FilterPredicate("create_date",FilterOperator.LESS_THAN_OR_EQUAL,date);
    		Query q = new Query(kind).setFilter(dateFilter);
    		q.addSort("create_date", SortDirection.DESCENDING);
    		q.addSort(Entity.KEY_RESERVED_PROPERTY, SortDirection.DESCENDING);
    		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
    		PreparedQuery pq = datastore.prepare(q);
    		Iterable<Entity> list =  pq.asIterable(FetchOptions.Builder.withLimit(20));
    		List<LfsUser> list_info = new ArrayList<LfsUser>(); 
    		JDODatastoreBridge j = new JDODatastoreBridge();
    		PersistenceManager pm =PMF.get();
    		for (Entity entity : list) {
    			Date entity_create_date = (Date)entity.getProperty("create_date");
    			if(entity_create_date.getTime()!=date.getTime() || entity.getKey().getId()<key.getId()){
    				list_info.add((LfsUser)j.getJDOFromEntity(entity, pm, LfsUser.class));
    			}
    		}
    		return list_info;
		}	
		/* 删除全部 */
		public void deleteALL(){
			PersistenceManager pm = PMF.get();
			pm.newQuery(LfsUser.class).deletePersistentAll();
		}
		/* 删除 */
		public void delete(LfsUser user){
			PersistenceManager pm = PMF.get();
			pm.deletePersistent(user);
		}
		/* 获取最新20个 */
		@SuppressWarnings("unchecked")
		public List<LfsUser> get20()  {
			PersistenceManager pm = PMF.get();
			javax.jdo.Query q = pm.newQuery(LfsUser.class);
			q.setOrdering("create_date asc");
			q.setRange(0, 19);
			return (List<LfsUser>)q.execute();
		}	
}