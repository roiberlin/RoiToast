
package com.reactlibrary;

import android.app.Activity;
import android.widget.Toast;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNRoiToastModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNRoiToastModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNRoiToast";
  }

  @ReactMethod
  public void show(String text) {
    Toast.makeText(getReactApplicationContext(),text, Toast.LENGTH_LONG).show();
  }
}