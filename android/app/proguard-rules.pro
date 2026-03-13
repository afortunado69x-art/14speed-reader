# Flutter
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Fix R8 missing Play Core classes (used internally by Flutter engine)
-dontwarn com.google.android.play.core.**
-keep class com.google.android.play.core.** { *; }

# SQLite
-keep class net.sqlcipher.** { *; }
-keep class net.sqlcipher.database.** { *; }

# File picker
-keep class com.mr.flutter.plugin.filepicker.** { *; }

# App classes
-keep class com.grimread.speedreader.** { *; }

# Dart/Flutter reflection
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes EnclosingMethod

# Remove debug logs in release
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}
