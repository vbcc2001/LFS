package com.lfs.kafka;

import java.util.Properties;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;


public class MyProducer {
	
	public static void main(String[] args){
		new MyProducer().send();
	}
	public void send() {
		 Properties props= new Properties();
		 props.put("bootstrap.servers", "localhost:9092");
		 props.put("bootstrap.servers","h.menss.me:9092");
		 
		 props.put("acks", "all");
		 props.put("retries", 0);
		 props.put("batch.size", 16384);
		 props.put("linger.ms", 1);
		 props.put("buffer.memory", 33554432);
		 props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		 props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		 Producer<String, String> producer = new KafkaProducer<>(props);
		 for(int i = 0; i < 100; i++){
			 producer.send(new ProducerRecord<String, String>("fool", Integer.toString(i), "foo1="+Integer.toString(i) ));
			 System.out.println(i);
		 }
		 for(int i = 0; i < 100; i++){
			 producer.send(new ProducerRecord<String, String>("barr", Integer.toString(i), "bar1="+Integer.toString(i) ));
			 System.out.println(i);
		 }
		 producer.close();
		 System.out.println("end");
	}
}
