package com.ethanou.offline_speech_recognition;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;


import org.vosk.LibVosk;
import org.vosk.LogLevel;
import org.vosk.Model;
import org.vosk.Recognizer;
import org.vosk.android.RecognitionListener;
import org.vosk.android.SpeechService;
import java.io.IOException;
import java.util.concurrent.Callable;

import io.flutter.plugin.common.EventChannel;

public class SpeechRecognitionModel implements RecognitionListener {
    private Model model;
    private SpeechService speechService;
    private TaskRunner taskRunner;
    private Activity activity;
    private EventChannel.EventSink resultEvent;
    private EventChannel.EventSink partialEvent;

    public SpeechRecognitionModel(final Activity activity, EventChannel.EventSink resultEvent, EventChannel.EventSink partialEvent) {
        this.activity = activity;
        this.resultEvent = resultEvent;
        this.partialEvent = partialEvent;
    }

    // Checks for permissions and loads the new model. It runs the setup in a Runnable.
    public void load(String path) {
        Permissions.check(activity);

        if (taskRunner == null) {
            taskRunner = new TaskRunner();
        }

        if (path == null) {
            return;
        }

        // Recognizer initialization is a time-consuming and it involves IO,
        // so we execute it in a Runnable
        try {
            taskRunner.executeAsync(new SetupModel(path), new TaskRunner.Callback<Model>() {
                @Override
                public void onComplete(Model result) {
                    model = result;
                }
            });

        } catch(Exception e) {
           throw new RuntimeException(e);
        }

    }

    private static class SetupModel implements Callable<Model> {
        private final String path;

        public SetupModel(String path) {
            this.path = path;
        }

        @Override
        public Model call() {
          LibVosk.setLogLevel(LogLevel.INFO);

            return new Model(path);
        }
    }

    // More accurately, this is a start/stop toggle.
    public void start() throws IOException {
        // If the speech is already running, cancel it.
        if (speechService != null) {
            speechService.cancel();
            speechService = null;
            return;
        }

        if (model == null) {
            throw new IOException("Model not loaded. Model may not be downloaded yet, or has the wrong path in the filesystem.");
        }

        Recognizer rec = new Recognizer(model, 16000.0f, "[\"do\",\"re\",\"mi\",\"fa\",\"sol\",\"la\",\"si\"]");
        rec.setWords(true);
        speechService = new SpeechService(rec, 16000.0f);
        speechService.startListening(this);
    }

    public void stop() {
        if (speechService != null) {
          speechService.cancel();
          speechService.stop();
            speechService.shutdown();
            speechService = null;
        }
    }

    public void destroy() {
        if (speechService != null) {
          speechService.cancel();
            speechService.stop();
            speechService.shutdown();
            speechService = null;
        }

    }

    @Override
    public void onResult(String hypothesis) {
        if (resultEvent != null) {
            resultEvent.success(hypothesis);
        }
    }

    @Override
    public void onFinalResult(String hypothesis) {
        resultEvent.success(hypothesis);
    }

    @Override
    public void onPartialResult(String hypothesis) {
        if (partialEvent != null) {
            partialEvent.success(hypothesis);
        }
    }

    // User might be listening to both the results and the partial results, so return an error for both.
    @Override
    public void onError(Exception e) {
        if (resultEvent != null) {
            resultEvent.error("Runtime Exception", e.getMessage(), e);
        }

        if (partialEvent != null) {
            partialEvent.error("Runtime Exception", e.getMessage(), e);
        }
    }

    @Override
    public void onTimeout() {
        speechService.cancel();
        speechService = null;
    }
}
