package com.lfs.kafka;

import java.util.Arrays;
import java.util.Properties;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;


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
		//props.put("auto.offset.reset", "earliest");
		props.put("auto.commit.interval.ms", "1000");
		props.put("session.timeout.ms", "30000");
		props.put("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
		props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
		KafkaConsumer<String, String> consumer = new KafkaConsumer<String, String>(props);
		consumer.subscribe(Arrays.asList("foo", "bar"));
		while(true){
			//System.out.print(1);
		    ConsumerRecords<String, String> records = consumer.poll(100);
		    for (ConsumerRecord<String, String> record : records){
		    	//System.out.println(2);
		    	System.out.printf("offset = %d, key = %s, value = %s", record.offset(), record.key(), record.value());
		    }
		}
	    //System.out.println(3);
	    //consumer.close();
	}
}
