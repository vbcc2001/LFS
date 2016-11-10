package com.xxx.lfs.function;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.kafka.common.TopicPartition;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.xxx.lfs.object.Lfs_post;
import com.xxx.web.function.DataRow;
import com.xxx.web.function.RequestParameter;
import com.xxx.web.function.ResponseParameter;


/** 添加  */
public class F100002 extends BaseFunction {

	@Override
	public ResponseParameter execute(RequestParameter requestParameter) throws Exception {

		String topic = requestParameter.getContent().get("topic");
		Properties props = new Properties();
		props.put("bootstrap.servers", "localhost:9092");
		//props.put("bootstrap.servers", "h.menss.me:9092");		
		props.put("group.id", "test-consumer-group");
		props.put("enable.auto.commit", "true");
		props.put("auto.offset.reset", "earliest");
		props.put("auto.commit.interval.ms", "1000");
		props.put("session.timeout.ms", "30000");
		props.put("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
		props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
		KafkaConsumer<String, String> consumer = new KafkaConsumer<String, String>(props);
		consumer.subscribe(Arrays.asList(topic));
		List<DataRow> list = new ArrayList<DataRow>();
		long size = -1;
		while (true) {
			ConsumerRecords<String, String> records = consumer.poll(100);
			if(list.isEmpty()){
				consumer.seekToBeginning(Arrays.asList(new TopicPartition(topic, 0)));
			}
		    for (ConsumerRecord<String, String> record : records){
		    	DataRow dataRow = new DataRow();
		    	dataRow.put("offset",record.offset());
		    	dataRow.put("key",record.key());
				Gson gson = new GsonBuilder().serializeNulls().create();
				Lfs_post post = (Lfs_post) gson.fromJson(record.value(), new TypeToken<Lfs_post>() {}.getType());  
		    	dataRow.put("value",post);
		    	list.add(dataRow);
		    }
		    if(list.size()==size & list.size()>0)break;
		    size = list.size();
		}
		System.out.println( list.get(0));
		response.setList(list);
	    consumer.close();
		return response;
	}
}
