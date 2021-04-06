package com.example.lab3;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private int mCount;
    private TextView mShowCount;
    public static final String EXTRA_MESSAGE =
            "com.example.android.lab3.extra.MESSAGE";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mCount = 0;
        mShowCount = (TextView) findViewById(R.id.show_count);
    }


//    public void showToast(View view) {
//        Toast toast = Toast.makeText(this, R.string.toast_message, Toast.LENGTH_SHORT);
//        toast.show();
//    }

    public void countUp(View view) {
        mCount++;
        if (mShowCount != null) {
            mShowCount.setText(Integer.toString(mCount));
        }
    }

    public void sayHello(View view) {
        Intent intent = new Intent(this, SecondActivity.class);
        startActivity(intent);
        String message = mShowCount.getText().toString();
        intent.putExtra(EXTRA_MESSAGE, message);
        startActivity(intent);
    }
}