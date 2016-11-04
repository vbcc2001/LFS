package com.lfs.kafka;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.kafka.common.TopicPartition;



public class MyConsumer {
	public static void main(String[] args){
		new MyConsumer().get();

	}
	public void get() {
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
		consumer.subscribe(Arrays.asList("fool"));
		List<String> fool = new ArrayList<String>();
		long size = -1;
		while (true) {
			ConsumerRecords<String, String> records = consumer.poll(100);
			if(fool.isEmpty()){
				consumer.seekToBeginning(Arrays.asList(new TopicPartition("fool", 0)));
			}
		    for (ConsumerRecord<String, String> record : records){
		    	fool.add("offset = "+record.offset()+",key ="+record.key()+ ", value = "+record.value()+"\n");
		    }
		    if(fool.size()==size && fool.size()>0) break;
		    size = fool.size();  
		}
		System.out.println( fool.size());
	    consumer.close();
	}
}
