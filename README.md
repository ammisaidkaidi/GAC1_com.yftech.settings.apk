# GAC1_com.yftech.settings.apk

> Decompiled source repository for `com.yftech.settings.apk`.

## Summary

- **APK file name**: `com.yftech.settings.apk`
- **Package name**: `com.yftech.settings`
- **Version**: `?` (versionCode `?`)
- **Min SDK**: `26`  |  **Target SDK**: `28`
- **Total decompiled classes**: `1694`
- **Decompiled on**: 2026-10-18 12:23:29 UTC
- **Source repo**: [ammisaidkaidi/yftech-apks](https://github.com/ammisaidkaidi/yftech-apks)

## What this app does (inferred)

- System settings application
- Bluetooth access
- Network access
- Location access (GPS)
- External storage access

Inference is based on the APK file name, package name, declared permissions, registered services/receivers, and top-level Java package structure. Manual review of the source under `jadx_out/sources/` is recommended for definitive behavior.

## Permissions

- `android.permission.ACCESS_COARSE_LOCATION`  (ACCESS_COARSE_LOCATION)
- `android.permission.ACCESS_FINE_LOCATION`  (ACCESS_FINE_LOCATION)
- `android.permission.ACCESS_NETWORK_STATE`  (ACCESS_NETWORK_STATE)
- `android.permission.ACCESS_WIFI_STATE`  (ACCESS_WIFI_STATE)
- `android.permission.BLUETOOTH`  (BLUETOOTH)
- `android.permission.BLUETOOTH_ADMIN`  (BLUETOOTH_ADMIN)
- `android.permission.CHANGE_NETWORK_STATE`  (CHANGE_NETWORK_STATE)
- `android.permission.CHANGE_WIFI_STATE`  (CHANGE_WIFI_STATE)
- `android.permission.INTERNET`  (INTERNET)
- `android.permission.MASTER_CLEAR`  (MASTER_CLEAR)
- `android.permission.READ_EXTERNAL_STORAGE`  (READ_EXTERNAL_STORAGE)
- `android.permission.READ_SETTINGS`  (READ_SETTINGS)
- `android.permission.WRITE_EXTERNAL_STORAGE`  (WRITE_EXTERNAL_STORAGE)
- `android.permission.WRITE_SETTINGS`  (WRITE_SETTINGS)
- `beantechs.permission.DATATRACK`
- `com.yftech.permission.media.service`
- `com.yftech.permission.service.bluetooth`
- `com.yftech.permission.service.car`
- `com.yftech.permission.service.main.audio`
- `com.yftech.permission.service.main.audio.effect`
- `com.yftech.permission.service.main.data`
- `com.yftech.permission.service.main.input`
- `com.yftech.permission.service.main.screen`
- `com.yftech.permission.service.transfer.phonelink`
- `com.yftech.permission.service.upgrade.upgrade`
- `com.yftech.permission.service.vehicle.COMMON`
- `com.yftech.permission.test`

## App components (from AndroidManifest.xml)

**Application class**: `com.yftech.settings.SettingsApp`
**Launcher activity**: `com.yftech.settings.SettingsActivity`

### Activities (2)

- `com.yftech.settings.SettingsActivity`
- `com.yftech.settings.avdc.AvdcActivity`

### Services (0)

- (none)

### Broadcast receivers (1)

- `com.yftech.settings.CarSettingsReceiver`

### Content providers (0)

- (none)

## Java package structure

**Top-level packages**: `android`, `androidx`, `bolts`, `com`, `javax`, `kotlin`, `org`

**Detected third-party libraries**:

- Android framework (system)  (1 top-level entries)
- Android Jetpack (AndroidX libraries)  (1 top-level entries)
- JDK standard library (extensions)  (1 top-level entries)
- Kotlin stdlib  (1 top-level entries)

**Custom (non-library) packages — depth 2**:

- `com.bumptech`
- `com.bumptech.glide`
- `com.bumptech.glide.annotation`
- `com.bumptech.glide.disklrucache`
- `com.bumptech.glide.gifdecoder`
- `com.bumptech.glide.load`
- `com.bumptech.glide.manager`
- `com.bumptech.glide.module`
- `com.bumptech.glide.provider`
- `com.bumptech.glide.request`
- `com.bumptech.glide.signature`
- `com.bumptech.glide.util`
- `com.facebook`
- `com.facebook.binaryresource`
- `com.facebook.cache`
- `com.facebook.cache.common`
- `com.facebook.cache.disk`
- `com.facebook.callercontext`
- `com.facebook.common`
- `com.facebook.common.activitylistener`
- `com.facebook.common.disk`
- `com.facebook.common.executors`
- `com.facebook.common.file`
- `com.facebook.common.internal`
- `com.facebook.common.lifecycle`
- `com.facebook.common.logging`
- `com.facebook.common.media`
- `com.facebook.common.memory`
- `com.facebook.common.references`
- `com.facebook.common.statfs`
- `com.facebook.common.streams`
- `com.facebook.common.time`
- `com.facebook.common.util`
- `com.facebook.common.webp`
- `com.facebook.datasource`
- `com.facebook.drawable`
- `com.facebook.drawable.base`
- `com.facebook.drawee`
- `com.facebook.drawee.backends`
- `com.facebook.drawee.components`
- `com.facebook.drawee.controller`
- `com.facebook.drawee.debug`
- `com.facebook.drawee.drawable`
- `com.facebook.drawee.generic`
- `com.facebook.drawee.gestures`
- `com.facebook.drawee.interfaces`
- `com.facebook.drawee.view`
- `com.facebook.fbcore`
- `com.facebook.fresco`
- `com.facebook.fresco.common`
- ... (62 more)

## Key classes & method signatures

Per custom package, the top-level classes (up to 8 each) and their first few public method signatures.

### `com.bumptech`  (0 class files in this folder)

(no top-level classes in this package)

### `com.bumptech.glide`  (15 class files in this folder)

- **class `BuildConfig`**  (`BuildConfig.java`, ~12 lines)

- **class `GeneratedAppGlideModule`**  (`GeneratedAppGlideModule.java`, ~22 lines)

- **class `GenericTransitionOptions`**  (`GenericTransitionOptions.java`, ~29 lines)
  - `static <TranscodeType> GenericTransitionOptions<TranscodeTyp with(...)`
  - `static <TranscodeType> GenericTransitionOptions<TranscodeTyp with(...)`
  - `static <TranscodeType> GenericTransitionOptions<TranscodeTyp with(...)`
  - `static <TranscodeType> GenericTransitionOptions<TranscodeTyp withNoTransition(...)`

- **class `Glide`**  (`Glide.java`, ~445 lines)
  - `Glide get(...)`
  - `File getPhotoCacheDir(...)`
  - `File getPhotoCacheDir(...)`
  - `void init(...)`
  - `void init(...)`
  - `void tearDown(...)`
  - `RequestManager with(...)`
  - `RequestManager with(...)`
  - `RequestManager with(...)`
  - `RequestManager with(...)`
  - `RequestManager with(...)`
  - `RequestManager with(...)`
  - `void clearDiskCache(...)`
  - `void clearMemory(...)`
  - `ArrayPool getArrayPool(...)`

- **class `GlideBuilder`**  (`GlideBuilder.java`, ~212 lines)
  - `GlideBuilder addGlobalRequestListener(...)`
  - `GlideBuilder setAnimationExecutor(...)`
  - `GlideBuilder setArrayPool(...)`
  - `GlideBuilder setBitmapPool(...)`
  - `GlideBuilder setConnectivityMonitorFactory(...)`
  - `GlideBuilder setDefaultRequestOptions(...)`
  - `GlideBuilder setDiskCache(...)`
  - `GlideBuilder setDiskCacheExecutor(...)`
  - `GlideBuilder setIsActiveResourceRetentionAllowed(...)`
  - `GlideBuilder setLogLevel(...)`
  - `GlideBuilder setLogRequestOrigins(...)`
  - `GlideBuilder setMemoryCache(...)`
  - `GlideBuilder setMemorySizeCalculator(...)`
  - `GlideBuilder setMemorySizeCalculator(...)`
  - `GlideBuilder setResizeExecutor(...)`

- **class `GlideContext`**  (`GlideContext.java`, ~94 lines)
  - `ArrayPool getArrayPool(...)`
  - `List<RequestListener<Object>> getDefaultRequestListeners(...)`
  - `RequestOptions getDefaultRequestOptions(...)`
  - `Engine getEngine(...)`
  - `int getLogLevel(...)`
  - `Registry getRegistry(...)`
  - `boolean isLoggingRequestOriginsEnabled(...)`

- **class `ListPreloader`**  (`ListPreloader.java`, ~163 lines)
  - `void getSize(...)`
  - `void onResourceReady(...)`
  - `void removeCallback(...)`
  - `PreloadTarget next(...)`
  - `void onScroll(...)`
  - `void onScrollStateChanged(...)`

- **enum `MemoryCategory`**  (`MemoryCategory.java`, ~19 lines)
  - `float getMultiplier(...)`

### `com.bumptech.glide.annotation`  (5 class files in this folder)

- **@interface `Excludes`**  (`Excludes.java`, ~14 lines)

- **@interface `GlideExtension`**  (`GlideExtension.java`, ~13 lines)

- **@interface `GlideModule`**  (`GlideModule.java`, ~14 lines)

- **@interface `GlideOption`**  (`GlideOption.java`, ~24 lines)

- **@interface `GlideType`**  (`GlideType.java`, ~14 lines)

### `com.bumptech.glide.disklrucache`  (3 class files in this folder)

- **class `DiskLruCache`**  (`DiskLruCache.java`, ~661 lines)
  - `Void call(...)`
  - `Thread newThread(...)`
  - `void abort(...)`
  - `void abortUnlessCommitted(...)`
  - `void commit(...)`
  - `File getFile(...)`
  - `String getString(...)`
  - `void set(...)`
  - `void setLengths(...)`
  - `File getCleanFile(...)`
  - `File getDirtyFile(...)`
  - `String getLengths(...)`
  - `Editor edit(...)`
  - `File getFile(...)`
  - `long getLength(...)`

- **class `StrictLineReader`**  (`StrictLineReader.java`, ~119 lines)
  - `void close(...)`
  - `boolean hasUnterminatedLine(...)`
  - `String readLine(...)`
  - `String toString(...)`

- **class `Util`**  (`Util.java`, ~61 lines)

### `com.bumptech.glide.gifdecoder`  (7 class files in this folder)

- **class `BuildConfig`**  (`BuildConfig.java`, ~12 lines)

- **interface `GifDecoder`**  (`GifDecoder.java`, ~87 lines)

- **class `GifFrame`**  (`GifFrame.java`, ~28 lines)

- **class `GifHeader`**  (`GifHeader.java`, ~45 lines)
  - `int getHeight(...)`
  - `int getNumFrames(...)`
  - `int getStatus(...)`
  - `int getWidth(...)`

- **class `GifHeaderParser`**  (`GifHeaderParser.java`, ~310 lines)
  - `void clear(...)`
  - `boolean isAnimated(...)`
  - `GifHeader parseHeader(...)`
  - `GifHeaderParser setData(...)`
  - `GifHeaderParser setData(...)`

- **class `R`**  (`R.java`, ~8 lines)

- **class `StandardGifDecoder`**  (`StandardGifDecoder.java`, ~726 lines)
  - `void advance(...)`
  - `void clear(...)`
  - `int getByteSize(...)`
  - `int getCurrentFrameIndex(...)`
  - `ByteBuffer getData(...)`
  - `int getDelay(...)`
  - `int getFrameCount(...)`
  - `int getHeight(...)`
  - `int getLoopCount(...)`
  - `int getNetscapeLoopCount(...)`
  - `int getNextDelay(...)`
  - `Bitmap getNextFrame(...)`
  - `int getStatus(...)`
  - `int getTotalIterationCount(...)`
  - `int getWidth(...)`

### `com.bumptech.glide.load`  (14 class files in this folder)

- **enum `DataSource`**  (`DataSource.java`, ~11 lines)

- **enum `DecodeFormat`**  (`DecodeFormat.java`, ~10 lines)

- **enum `EncodeStrategy`**  (`EncodeStrategy.java`, ~9 lines)

- **interface `Encoder`**  (`Encoder.java`, ~10 lines)

- **class `HttpException`**  (`HttpException.java`, ~33 lines)
  - `int getStatusCode(...)`

- **interface `ImageHeaderParser`**  (`ImageHeaderParser.java`, ~44 lines)
  - `boolean hasAlpha(...)`

- **class `ImageHeaderParserUtils`**  (`ImageHeaderParserUtils.java`, ~81 lines)
  - `int getOrientation(...)`

- **interface `Key`**  (`Key.java`, ~18 lines)

### `com.bumptech.glide.manager`  (16 class files in this folder)

- **class `ActivityFragmentLifecycle`**  (`ActivityFragmentLifecycle.java`, ~60 lines)
  - `void addListener(...)`
  - `void removeListener(...)`

- **class `ApplicationLifecycle`**  (`ApplicationLifecycle.java`, ~19 lines)
  - `void addListener(...)`
  - `void removeListener(...)`

- **interface `ConnectivityMonitor`**  (`ConnectivityMonitor.java`, ~10 lines)

- **interface `ConnectivityMonitorFactory`**  (`ConnectivityMonitorFactory.java`, ~11 lines)

- **class `DefaultConnectivityMonitor`**  (`DefaultConnectivityMonitor.java`, ~89 lines)
  - `void onReceive(...)`
  - `void onDestroy(...)`
  - `void onStart(...)`
  - `void onStop(...)`

- **class `DefaultConnectivityMonitorFactory`**  (`DefaultConnectivityMonitorFactory.java`, ~23 lines)
  - `ConnectivityMonitor build(...)`

- **class `EmptyRequestManagerTreeNode`**  (`EmptyRequestManagerTreeNode.java`, ~19 lines)
  - `Set<RequestManager> getDescendants(...)`

- **interface `Lifecycle`**  (`Lifecycle.java`, ~11 lines)

### `com.bumptech.glide.module`  (6 class files in this folder)

- **class `AppGlideModule`**  (`AppGlideModule.java`, ~17 lines)
  - `void applyOptions(...)`
  - `boolean isManifestParsingEnabled(...)`

- **interface `AppliesOptions`**  (`AppliesOptions.java`, ~13 lines)

- **interface `GlideModule`**  (`GlideModule.java`, ~7 lines)

- **class `LibraryGlideModule`**  (`LibraryGlideModule.java`, ~14 lines)
  - `void registerComponents(...)`

- **class `ManifestParser`**  (`ManifestParser.java`, ~83 lines)
  - `List<GlideModule> parse(...)`

- **interface `RegistersComponents`**  (`RegistersComponents.java`, ~14 lines)

### `com.bumptech.glide.provider`  (6 class files in this folder)

- **class `EncoderRegistry`**  (`EncoderRegistry.java`, ~45 lines)
  - `synchronized <T> void append(...)`
  - `synchronized <T> Encoder<T> getEncoder(...)`
  - `synchronized <T> void prepend(...)`

- **class `ImageHeaderParserRegistry`**  (`ImageHeaderParserRegistry.java`, ~21 lines)
  - `void add(...)`
  - `List<ImageHeaderParser> getParsers(...)`

- **class `LoadPathCache`**  (`LoadPathCache.java`, ~53 lines)
  - `boolean isEmptyLoadPath(...)`
  - `void put(...)`

- **class `ModelToResourceClassCache`**  (`ModelToResourceClassCache.java`, ~43 lines)
  - `void clear(...)`
  - `void put(...)`

- **class `ResourceDecoderRegistry`**  (`ResourceDecoderRegistry.java`, ~101 lines)
  - `boolean handles(...)`
  - `synchronized <T, R> void append(...)`
  - `synchronized <T, R> List<ResourceDecoder<T, R>> getDecoders(...)`
  - `synchronized <T, R> List<Class<R>> getResourceClasses(...)`
  - `synchronized <T, R> void prepend(...)`
  - `void setBucketPriorityList(...)`

- **class `ResourceEncoderRegistry`**  (`ResourceEncoderRegistry.java`, ~47 lines)
  - `synchronized <Z> void append(...)`
  - `synchronized <Z> ResourceEncoder<Z> get(...)`
  - `synchronized <Z> void prepend(...)`

### `com.bumptech.glide.request`  (11 class files in this folder)

- **class `BaseRequestOptions`**  (`BaseRequestOptions.java`, ~841 lines)
  - `T apply(...)`
  - `T autoClone(...)`
  - `T centerCrop(...)`
  - `T centerInside(...)`
  - `T circleCrop(...)`
  - `T mo5clone(...)`
  - `T decode(...)`
  - `T disallowHardwareConfig(...)`
  - `T diskCacheStrategy(...)`
  - `T dontAnimate(...)`
  - `T dontTransform(...)`
  - `T downsample(...)`
  - `T encodeFormat(...)`
  - `T encodeQuality(...)`
  - `boolean equals(...)`

- **class `ErrorRequestCoordinator`**  (`ErrorRequestCoordinator.java`, ~139 lines)
  - `void begin(...)`
  - `boolean canNotifyCleared(...)`
  - `boolean canNotifyStatusChanged(...)`
  - `boolean canSetImage(...)`
  - `void clear(...)`
  - `boolean isAnyResourceSet(...)`
  - `boolean isCleared(...)`
  - `boolean isComplete(...)`
  - `boolean isEquivalentTo(...)`
  - `boolean isFailed(...)`
  - `boolean isResourceSet(...)`
  - `boolean isRunning(...)`
  - `void onRequestFailed(...)`
  - `void onRequestSuccess(...)`
  - `void recycle(...)`

- **interface `FutureTarget`**  (`FutureTarget.java`, ~9 lines)

- **interface `Request`**  (`Request.java`, ~23 lines)

- **interface `RequestCoordinator`**  (`RequestCoordinator.java`, ~17 lines)

- **class `RequestFutureTarget`**  (`RequestFutureTarget.java`, ~203 lines)
  - `boolean cancel(...)`
  - `R get(...)`
  - `R get(...)`
  - `Request getRequest(...)`
  - `void getSize(...)`
  - `boolean isCancelled(...)`
  - `boolean isDone(...)`
  - `void onDestroy(...)`
  - `void onLoadCleared(...)`
  - `void onLoadFailed(...)`
  - `boolean onLoadFailed(...)`
  - `void onLoadStarted(...)`
  - `void onResourceReady(...)`
  - `boolean onResourceReady(...)`
  - `void onStart(...)`

- **interface `RequestListener`**  (`RequestListener.java`, ~14 lines)

- **class `RequestOptions`**  (`RequestOptions.java`, ~229 lines)
  - `RequestOptions bitmapTransform(...)`
  - `RequestOptions centerCropTransform(...)`
  - `RequestOptions centerInsideTransform(...)`
  - `RequestOptions circleCropTransform(...)`
  - `RequestOptions decodeTypeOf(...)`
  - `RequestOptions diskCacheStrategyOf(...)`
  - `RequestOptions downsampleOf(...)`
  - `RequestOptions encodeFormatOf(...)`
  - `RequestOptions encodeQualityOf(...)`
  - `RequestOptions errorOf(...)`
  - `RequestOptions errorOf(...)`
  - `RequestOptions fitCenterTransform(...)`
  - `RequestOptions formatOf(...)`
  - `RequestOptions frameOf(...)`
  - `RequestOptions noAnimation(...)`

### `com.bumptech.glide.signature`  (4 class files in this folder)

- **class `ApplicationVersionSignature`**  (`ApplicationVersionSignature.java`, ~60 lines)
  - `Key obtain(...)`

- **class `EmptySignature`**  (`EmptySignature.java`, ~27 lines)
  - `EmptySignature obtain(...)`
  - `String toString(...)`
  - `void updateDiskCacheKey(...)`

- **class `MediaStoreSignature`**  (`MediaStoreSignature.java`, ~46 lines)
  - `boolean equals(...)`
  - `int hashCode(...)`
  - `void updateDiskCacheKey(...)`

- **class `ObjectKey`**  (`ObjectKey.java`, ~38 lines)
  - `boolean equals(...)`
  - `int hashCode(...)`
  - `String toString(...)`
  - `void updateDiskCacheKey(...)`

### `com.bumptech.glide.util`  (14 class files in this folder)

- **class `ByteBufferUtil`**  (`ByteBufferUtil.java`, ~269 lines)
  - `int available(...)`
  - `void mark(...)`
  - `boolean markSupported(...)`
  - `int read(...)`
  - `int read(...)`
  - `void reset(...)`
  - `long skip(...)`
  - `ByteBuffer fromFile(...)`
  - `ByteBuffer fromStream(...)`
  - `byte[] toBytes(...)`
  - `void toFile(...)`
  - `InputStream toStream(...)`
  - `void toStream(...)`

- **class `CachedHashCodeArrayMap`**  (`CachedHashCodeArrayMap.java`, ~48 lines)
  - `void clear(...)`
  - `int hashCode(...)`
  - `V put(...)`
  - `void putAll(...)`
  - `V removeAt(...)`
  - `V setValueAt(...)`

- **class `ContentLengthInputStream`**  (`ContentLengthInputStream.java`, ~78 lines)
  - `InputStream obtain(...)`
  - `InputStream obtain(...)`
  - `int available(...)`
  - `int read(...)`
  - `int read(...)`
  - `int read(...)`

- **class `ExceptionCatchingInputStream`**  (`ExceptionCatchingInputStream.java`, ~119 lines)
  - `ExceptionCatchingInputStream obtain(...)`
  - `int available(...)`
  - `void close(...)`
  - `IOException getException(...)`
  - `void mark(...)`
  - `boolean markSupported(...)`
  - `int read(...)`
  - `int read(...)`
  - `int read(...)`
  - `void release(...)`
  - `void reset(...)`
  - `long skip(...)`

- **class `Executors`**  (`Executors.java`, ~58 lines)
  - `void execute(...)`
  - `void execute(...)`
  - `Executor directExecutor(...)`
  - `Executor mainThreadExecutor(...)`
  - `void shutdownAndAwaitTermination(...)`

- **class `FixedPreloadSizeProvider`**  (`FixedPreloadSizeProvider.java`, ~21 lines)
  - `int[] getPreloadSize(...)`

- **class `LogTime`**  (`LogTime.java`, ~27 lines)
  - `double getElapsedMillis(...)`
  - `long getLogTime(...)`

- **class `LruCache`**  (`LruCache.java`, ~112 lines)
  - `void clearMemory(...)`
  - `boolean contains(...)`
  - `Y get(...)`
  - `long getCurrentSize(...)`
  - `long getMaxSize(...)`
  - `Y put(...)`
  - `Y remove(...)`
  - `void setSizeMultiplier(...)`

### `com.facebook`  (0 class files in this folder)

(no top-level classes in this package)

### `com.facebook.binaryresource`  (3 class files in this folder)

- **interface `BinaryResource`**  (`BinaryResource.java`, ~16 lines)

- **class `ByteArrayBinaryResource`**  (`ByteArrayBinaryResource.java`, ~33 lines)
  - `InputStream openStream(...)`
  - `byte[] read(...)`
  - `long size(...)`

- **class `FileBinaryResource`**  (`FileBinaryResource.java`, ~63 lines)
  - `FileBinaryResource create(...)`
  - `FileBinaryResource createOrNull(...)`
  - `boolean equals(...)`
  - `File getFile(...)`
  - `int hashCode(...)`
  - `InputStream openStream(...)`
  - `byte[] read(...)`
  - `long size(...)`

### `com.facebook.cache`  (0 class files in this folder)

(no top-level classes in this package)

## Decompilation methodology

This repo was produced by the following pipeline:

1. **APK download** — raw file fetched via the GitHub raw URL (no repo clone).
2. **apktool d** — decoded `AndroidManifest.xml`, resources (`res/`), `assets/`, native libs (`lib/`), and produced `apktool.yml` metadata.
3. **jadx -d** — produced Java-readable decompiled sources under `jadx_out/sources/`.
4. **Static analysis pass** — parsed manifest + walked `jadx_out/sources/` to enumerate packages, classes, methods, and detect known third-party libraries.
5. **README auto-generation** — produced this file with the static analysis results.

### Reproducing

```bash
# 1) download the APK (raw, no clone)
curl -L -o com.yftech.settings.apk \
  'https://raw.githubusercontent.com/ammisaidkaidi/yftech-apks/main/com.yftech.settings.apk'

# 2) decode resources + manifest
apktool d -f -o apktool_out com.yftech.settings.apk

# 3) decompile to Java-readable sources
jadx -d jadx_out --no-res com.yftech.settings.apk
```

> Note: `--no-res` is passed to jadx because apktool already decoded resources.

## Directory layout

``
GAC1_com.yftech.settings.apk/
├── README.md                  <- this file
├── com.yftech.settings.apk                 <- original APK binary
├── apktool_out/               <- apktool output (resources, manifest, smali)
└── jadx_out/                  <- jadx output (Java-readable sources)
```

### apktool_out/
```
├── AndroidManifest.xml
├── apktool.yml
├── lib/
│   ├── arm64-v8a/
│   ├── armeabi-v7a/
│   ├── x86/
│   └── x86_64/
├── original/
│   ├── AndroidManifest.xml
│   └── META-INF/
├── res/
│   ├── anim/
│   ├── color/
│   ├── drawable/
│   ├── drawable-hdpi/
│   ├── drawable-ldrtl-hdpi/
│   ├── drawable-ldrtl-mdpi/
│   ├── drawable-ldrtl-xhdpi/
│   ├── drawable-ldrtl-xxhdpi/
│   ├── drawable-ldrtl-xxxhdpi/
│   ├── drawable-mdpi/
│   ├── drawable-watch/
│   ├── drawable-xhdpi/
│   ├── drawable-xxhdpi/
│   ├── drawable-xxxhdpi/
│   ├── layout/
│   ├── layout-ar/
│   ├── layout-es/
│   ├── layout-ru/
│   ├── layout-watch/
│   └── mipmap-anydpi/
│   └── ... (103 more entries)
├── smali/
│   ├── android/
│   ├── androidx/
│   ├── bolts/
│   ├── com/
│   ├── javax/
│   ├── kotlin/
│   └── org/
└── unknown/
    └── META-INF/
```

### jadx_out/
```
├── resources/
└── sources/
    ├── android/
    ├── androidx/
    ├── bolts/
    ├── com/
    ├── javax/
    ├── kotlin/
    └── org/
```

## Disclaimer

This repository contains decompiled (reverse-engineered) Java source code and resources derived from a binary APK. Decompilation was performed for research, interoperability, and educational purposes.

- The decompiled code is **not** the original source — variable names, comments, generics, and some control flow may have been lost or simplified during compilation/decompilation.
- All trademarks, copyrights, and IP belong to their respective owners (YF Tech / 御驾 (YF) Automotive).
- The author of this repo does not host the original APK on this repo's remote — only the decompiled artifacts. The original APK is publicly listed at the source repository cited above.
- This repository is for **analysis only**. Do not use it to redistribute or rebuild the original application.