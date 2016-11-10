package com.xxx.lfs.function;

import java.util.Properties;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.xxx.lfs.object.Lfs_post;
import com.xxx.web.function.RequestParameter;
import com.xxx.web.function.ResponseParameter;
import com.xxx.web.http.listener.Configure;

/** 添加  */
public class F100001 extends BaseFunction   {

	@Override
	public ResponseParameter execute(RequestParameter requestParameter) throws Exception {
		
		String object = requestParameter.getContent().get("object");
		String topic = requestParameter.getContent().get("topic");
		Gson gson = new GsonBuilder().serializeNulls().create();
		Lfs_post post = (Lfs_post) gson.fromJson(object, new TypeToken<Lfs_post>() {}.getType());    
		Properties props= new Properties();
		props.put("bootstrap.servers", "localhost:9092");
		props.put("bootstrap.servers", "h.menss.me:9092");
		props.put("acks", "all");
		props.put("retries", 0);
		props.put("batch.size", 16384);
		props.put("linger.ms", 1);
		props.put("buffer.memory", 33554432);
		props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		Producer<String, String> producer = new KafkaProducer<String, String>(props);
		producer.send(new ProducerRecord<String, String>(topic, post.getId(), object));
		producer.close();
		return response;
	}
	public static void main(String arg[] ) throws Exception{
		Configure c1 = new Configure()  ;
		c1.loadConfig();
		System.out.println(1234);
	}
}
