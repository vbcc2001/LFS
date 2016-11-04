package com.lfs.gae.ms.function;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.kafka.common.TopicPartition;


/** 添加  */
public class F100002 extends F000001<String> {

	@Override
	public void execute() throws Exception {
	
		String title = requestData.getContent().get("title");
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
		consumer.subscribe(Arrays.asList(title));
		List<String> list = new ArrayList<String>();
		long size = -1;
		while (true) {
			ConsumerRecords<String, String> records = consumer.poll(100);
			if(list.isEmpty()){
				consumer.seekToBeginning(Arrays.asList(new TopicPartition(title, 0)));
			}
		    for (ConsumerRecord<String, String> record : records){
		    	list.add("offset="+record.offset()+",key="+record.key()+ ",value="+record.value()+"\n");
		    }
		    if(list.size()==size & list.size()>0)break;
		    size = list.size();
		}
		System.out.println( list.get(0));
	    consumer.close();
	    responseData.setList(list);
	    
	}
}
