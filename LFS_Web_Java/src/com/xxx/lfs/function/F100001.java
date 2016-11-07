package com.xxx.lfs.function;

import java.util.Properties;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;

import com.xxx.web.function.RequestParameter;
import com.xxx.web.function.ResponseParameter;
import com.xxx.web.http.listener.Configure;

/** 添加  */
public class F100001 extends BaseFunction   {

	@Override
	public ResponseParameter execute(RequestParameter requestParameter) throws Exception {
	
		String title = requestParameter.getParams().get("title");
		String url = requestParameter.getParams().get("url");
		String id = requestParameter.getParams().get("id");
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
		return response;
	}
	public static void main(String arg[] ) throws Exception{
		Configure c = new Configure()  ;
		c.loadConfig();
		System.out.println(c.getConfig("function-path"));
		
	}
	
}
