package com.lfs.gae.ms.function;

import java.util.Properties;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;

/** 添加  */
public class F100001 extends F000001<String> {

	@Override
	public void execute() throws Exception {
	
		String title = requestData.getContent().get("title");
		String url = requestData.getContent().get("url");
		String id = requestData.getContent().get("id");
		System.out.println(requestData);
		Properties props= new Properties();
		props.put("bootstrap.servers", "localhost:9092");
		//props.put("bootstrap.servers","h.menss.me:9092");
		props.put("acks", "all");
		props.put("retries", 0);
		props.put("batch.size", 16384);
		props.put("linger.ms", 1);
		props.put("buffer.memory", 33554432);
		props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		System.out.println(title);
		System.out.println(id);
		System.out.println(url);
		Producer<String, String> producer = new KafkaProducer<String, String>(props);
		producer.send(new ProducerRecord<String, String>(title, id, url));
		producer.close();
	}
}
