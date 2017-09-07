package com.mightyjava.config;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.hazelcast.config.Config;
import com.hazelcast.config.EvictionPolicy;
import com.hazelcast.config.MapConfig;
import com.hazelcast.config.MaxSizeConfig;

@Configuration
@EnableCaching
public class HazelCastCacheConfig {
	
	@Bean
	public Config userConfig() {
		return cacheConfig("userCache");
	}
	
	@Bean
	public Config addressConfig() {
		return cacheConfig("addressCache");
	}
	
	private Config cacheConfig(String cacheName) {
		return new Config().setInstanceName("hazelcast-instance")
				.addMapConfig(new MapConfig().setName(cacheName)
						.setMaxSizeConfig(new MaxSizeConfig(200, MaxSizeConfig.MaxSizePolicy.FREE_HEAP_SIZE))
						.setEvictionPolicy(EvictionPolicy.LRU).setTimeToLiveSeconds(600));
	}
}
