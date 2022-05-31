package com.duytq.demointegrateflutter

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import androidx.appcompat.app.AppCompatActivity
import com.example.myflutter.MyFlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
  private val CHANNEL = "com.duytq.demointegrateflutter"
  private var flutterEngine: FlutterEngine? = null
  private val PARTIAL_SCREEN_ENGINE_ID = "partialScreenEngineId"

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_main)
    var screenChose = ""
    val screens = resources.getStringArray(R.array.screens)
    btnSend.setOnClickListener {
      sendDataToFlutterModule("Hello", screenChose)
    }
    btnSendAndroid.setOnClickListener {
      startActivity(Intent(this,AndroidForm::class.java))
    }
    btnSendReact.setOnClickListener {
      startActivity(Intent(this,MyReactActivity::class.java))
    }
  }

  private fun sendDataToFlutterModule(param: String, screen: String) {
    val intent = Intent(this, MyFlutterActivity::class.java)
    intent.putExtra("param", param)
    intent.putExtra("screen", screen)
    startActivity(intent)
  }

}