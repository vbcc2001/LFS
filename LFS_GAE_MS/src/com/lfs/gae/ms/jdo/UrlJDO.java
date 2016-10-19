package com.lfs.gae.ms.jdo;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.lfs.gae.ms.object.Url;

public class UrlJDO  {

		public void add(Url url) {
			PersistenceManager pm = PMF.get();
			try {
				pm.makePersistent(url);
			} finally {
				pm.close();
			}
		}
		@SuppressWarnings("unchecked")
		public List<Url> get20()  {
			PersistenceManager pm = PMF.get();
			Query q = pm.newQuery(Url.class);
			q.setOrdering("create_date asc");
			q.setRange(0, 19);
			return (List<Url>)q.execute();
		}	
		public void deleteALL(){
			PersistenceManager pm = PMF.get();
			pm.newQuery(Url.class).deletePersistentAll();
		}
}