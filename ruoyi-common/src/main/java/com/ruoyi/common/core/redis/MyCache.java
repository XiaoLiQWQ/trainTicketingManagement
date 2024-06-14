package com.ruoyi.common.core.redis;

import org.springframework.cache.Cache;
import org.springframework.cache.support.SimpleValueWrapper;
import org.springframework.stereotype.Component;

import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;

@Component
public class MyCache implements Cache {

    // 使用ConcurrentHashMap作为数据的存储
    private Map<String, Object> storage = new ConcurrentHashMap<>();

    // getName获取cache的名称，存取数据的时候用来区分是针对哪个cache操作
    @Override
    public String getName() {
        return null;
    }

    @Override
    public Object getNativeCache() {
        return null;
    }

    public boolean hasKey(String key){
        return storage.containsKey(key);
    }

    @Override
    public ValueWrapper get(Object key) {
        String k = key.toString();
        Object value = storage.get(k);

        // 注意返回的数据，要和存放时接收到数据保持一致，要将数据反序列化回来。
        return Objects.isNull(value) ? null : new SimpleValueWrapper(value);
    }

    @Override
    public <T> T get(Object key, Class<T> type) {
        return null;
    }

    @Override
    public <T> T get(Object key, Callable<T> valueLoader) {
        return null;
    }

    // put方法，就是执行将数据进行缓存
    @Override
    public void put(Object key, Object value) {
        if (Objects.isNull(value)) {
            return;
        }
        //存值
        storage.put(key.toString(), value);
    }

    // evict方法，是用来清除某个缓存项
    @Override
    public void evict(Object key) {
        storage.remove(key.toString());
    }

    // 删除集合
    public boolean deleteObject(final Collection collection){
        collection.forEach(o -> {
            storage.remove(o.toString());
        } );
        return true;
    }

    // 获取所有的keys
    public Collection<String> keys(final String pattern){
        return storage.keySet();
    }

    @Override
    public void clear() {

    }
}
