// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

package com.ledger.reactnative;

import co.ledger.core.RippleLikeNetworkParameters;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableNativeArray;
import com.facebook.react.bridge.ReadableNativeMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.TimeZone;
import java.util.UUID;

@ReactModule(name = "RCTCoreRippleLikeNetworkParameters")
public class RCTCoreRippleLikeNetworkParameters extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, RippleLikeNetworkParameters> javaObjects;
    public Map<String, RippleLikeNetworkParameters> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreRippleLikeNetworkParameters(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, RippleLikeNetworkParameters>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreRippleLikeNetworkParameters";
    }
    @ReactMethod
    public void release(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            this.javaObjects.remove(uid);
            promise.resolve(0);
        }
        else
        {
            promise.reject("Failed to release instance of RCTCoreRippleLikeNetworkParameters", "First parameter of RCTCoreRippleLikeNetworkParameters::release should be an instance of RCTCoreRippleLikeNetworkParameters");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, RippleLikeNetworkParameters> elem : this.javaObjects.entrySet())
        {
            result.pushString(elem.getKey());
        }
        promise.resolve(result);
    }
    @ReactMethod
    public void flush(Promise promise)
    {
        this.javaObjects.clear();
        promise.resolve(0);
    }
    @ReactMethod
    public void isNull(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (this.javaObjects.get(uid) == null)
            {
                promise.resolve(true);
                return;
            }
            else
            {
                promise.resolve(false);
                return;
            }
        }
        promise.resolve(true);
    }
    public static byte[] hexStringToByteArray(String hexString)
    {
        int hexStringLength = hexString.length();
        byte[] data = new byte[hexStringLength / 2];
        for (int i = 0; i < hexStringLength; i += 2)
        {
            data[i / 2] = (byte) ((Character.digit(hexString.charAt(i), 16) << 4) + Character.digit(hexString.charAt(i+1), 16));
        }
        return data;
    }
    static final String HEXES = "0123456789ABCDEF";
    public static String byteArrayToHexString( byte [] data)
    {
        if (data == null)
        {
            return null;
        }
        final StringBuilder hexStringBuilder = new StringBuilder( 2 * data.length );
        for ( final byte b : data )
        {
            hexStringBuilder.append(HEXES.charAt((b & 0xF0) >> 4)).append(HEXES.charAt((b & 0x0F)));
        }
        return hexStringBuilder.toString();
    }

    @ReactMethod
    public void init(String Identifier, String MessagePrefix, String XPUBVersion, ReadableArray AdditionalRIPs, long TimestampDelay, Promise promise) {
        byte [] javaParam_2 = hexStringToByteArray(XPUBVersion);

        ArrayList<String> javaParam_3 = new ArrayList<String>();
        for (int i = 0; i <  AdditionalRIPs.size(); i++)
        {
            String AdditionalRIPs_elem = AdditionalRIPs.getString(i);
            javaParam_3.add(AdditionalRIPs_elem);
        }
        RippleLikeNetworkParameters javaResult = new RippleLikeNetworkParameters(Identifier, MessagePrefix, javaParam_2, javaParam_3, TimestampDelay);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreRippleLikeNetworkParameters");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void getIdentifier(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            RippleLikeNetworkParameters javaObj = this.javaObjects.get(uid);
            String result = javaObj.getIdentifier();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreRippleLikeNetworkParameters::getIdentifier", "First parameter of RCTCoreRippleLikeNetworkParameters::getIdentifier should be an instance of RCTCoreRippleLikeNetworkParameters");
        }
    }

    @ReactMethod
    public void getMessagePrefix(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            RippleLikeNetworkParameters javaObj = this.javaObjects.get(uid);
            String result = javaObj.getMessagePrefix();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreRippleLikeNetworkParameters::getMessagePrefix", "First parameter of RCTCoreRippleLikeNetworkParameters::getMessagePrefix should be an instance of RCTCoreRippleLikeNetworkParameters");
        }
    }

    @ReactMethod
    public void getXPUBVersion(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            RippleLikeNetworkParameters javaObj = this.javaObjects.get(uid);
            byte[] result = javaObj.getXPUBVersion();
            String converted_result = byteArrayToHexString(result);
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", converted_result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreRippleLikeNetworkParameters::getXPUBVersion", "First parameter of RCTCoreRippleLikeNetworkParameters::getXPUBVersion should be an instance of RCTCoreRippleLikeNetworkParameters");
        }
    }

    @ReactMethod
    public void getAdditionalRIPs(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            RippleLikeNetworkParameters javaObj = this.javaObjects.get(uid);
            ArrayList<String> result = javaObj.getAdditionalRIPs();
            WritableNativeArray converted_result = new WritableNativeArray();
            for (String result_elem : result)
            {
                converted_result.pushString(result_elem);
            }
            promise.resolve(converted_result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreRippleLikeNetworkParameters::getAdditionalRIPs", "First parameter of RCTCoreRippleLikeNetworkParameters::getAdditionalRIPs should be an instance of RCTCoreRippleLikeNetworkParameters");
        }
    }

    @ReactMethod
    public void getTimestampDelay(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            RippleLikeNetworkParameters javaObj = this.javaObjects.get(uid);
            double result = javaObj.getTimestampDelay();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putDouble("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreRippleLikeNetworkParameters::getTimestampDelay", "First parameter of RCTCoreRippleLikeNetworkParameters::getTimestampDelay should be an instance of RCTCoreRippleLikeNetworkParameters");
        }
    }

}
