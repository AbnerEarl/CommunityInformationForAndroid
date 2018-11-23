package com.example.frank.httploadnocache;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import java.util.Map;

public class Main2Activity extends AppCompatActivity {

    private Button joinApp;
    private EditText editTextUrl;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        joinApp=(Button)findViewById(R.id.button);
        editTextUrl=(EditText)findViewById(R.id.editText);
        Map<String, String> userInfo= SharePreferenceSave.getUserInfo ( this );
        if (userInfo!=null){
            editTextUrl.setText ( userInfo.get ( "url" ) );
        }

        joinApp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean isSaveSucess = SharePreferenceSave.saveUserInfo (Main2Activity.this, editTextUrl.getText().toString() );

                Intent intent=new Intent(Main2Activity.this,MainActivity.class);
                intent.putExtra("url",editTextUrl.getText().toString() );
                startActivity(intent);
                finish();
            }
        });
    }
}
