package com.donuldmduck.tech.music_beat;

import android.content.Intent;
import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

import com.spotify.sdk.android.auth.AuthorizationClient;
import com.spotify.sdk.android.auth.AuthorizationRequest;
import com.spotify.sdk.android.auth.AuthorizationResponse;

public class MainActivity extends FlutterActivity {

    private static final String CHANNEL = "spotify_auth";
    private static final int REQUEST_CODE = 1337;
    private static final String CLIENT_ID = BuildConfig.SPOTIFY_CLIENT_ID;
    private static final String REDIRECT_URI = BuildConfig.SPOTIFY_REDIRECT_URI;


    private MethodChannel.Result pendingResult;

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);

        new MethodChannel(
                flutterEngine.getDartExecutor().getBinaryMessenger(),
                CHANNEL
        ).setMethodCallHandler((call, result) -> {
            if ("login".equals(call.method)) {
                pendingResult = result;
                startSpotifyLogin();
            } else {
                result.notImplemented();
            }
        });
    }

    private void startSpotifyLogin() {
        AuthorizationRequest request =
                new AuthorizationRequest.Builder(
                        CLIENT_ID,
                        AuthorizationResponse.Type.CODE,
                        REDIRECT_URI
                )
                        .setScopes(new String[]{"streaming"})
                        .build();

        AuthorizationClient.openLoginActivity(
                this,
                REQUEST_CODE,
                request
        );
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent intent) {
        super.onActivityResult(requestCode, resultCode, intent);

        if (requestCode == REQUEST_CODE) {
            AuthorizationResponse response =
                    AuthorizationClient.getResponse(resultCode, intent);

            if (pendingResult == null) return;

            switch (response.getType()) {
                case CODE:
                    pendingResult.success(response.getCode());
                    break;

                case ERROR:
                    pendingResult.error(
                            "AUTH_ERROR",
                            response.getError(),
                            null
                    );
                    break;

                default:
                    pendingResult.error(
                            "AUTH_CANCELLED",
                            "Login cancelled",
                            null
                    );
            }
            pendingResult = null;
        }
    }
}
