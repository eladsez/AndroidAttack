.class public Lcom/app/my/dream/valentinesdaycards/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field addclick:I

.field i:I

.field im1:Landroid/widget/ImageView;

.field private imageList:[Ljava/lang/String;

.field imageViewOut:Landroid/widget/ImageSwitcher;

.field layout:Landroid/widget/LinearLayout;

.field mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field map:Landroid/graphics/Bitmap;

.field public pos1:I

.field final tg:Landroid/media/ToneGenerator;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->addclick:I

    .line 47
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->tg:Landroid/media/ToneGenerator;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->map:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/my/dream/valentinesdaycards/MainActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->requestNewInterstitial()V

    return-void
.end method

.method static synthetic access$100(Lcom/app/my/dream/valentinesdaycards/MainActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/my/dream/valentinesdaycards/MainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/app/my/dream/valentinesdaycards/MainActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/app/my/dream/valentinesdaycards/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vimages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "realName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vimages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "realName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 181
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getImagesFromAssets()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "vimages"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestNewInterstitial()V
    .locals 3

    .prologue
    .line 265
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v2, "SEE_YOUR_LOGCAT_TO_GET_YOUR_DEVICE_ID"

    .line 266
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 269
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 270
    return-void
.end method

.method private setWallpaper(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 202
    invoke-virtual {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 203
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-direct {p0, p1}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v4

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 205
    .local v1, "bitmap1":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    const-string v3, "Set wallpaper successfully!"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 207
    return-void
.end method

.method private share(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.app.my.dream/vimages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 375
    .local v1, "theUri":Landroid/net/Uri;
    invoke-static {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v2

    .line 376
    invoke-virtual {v2, v1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->addStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v2

    const-string v3, "image/*"

    .line 377
    invoke-virtual {v2, v3}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v2

    .line 378
    invoke-virtual {v2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v0

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 380
    return-void
.end method


# virtual methods
.method public getLocalBitmapuri(Landroid/widget/ImageView;)Landroid/net/Uri;
    .locals 8
    .param p1, "im"    # Landroid/widget/ImageView;

    .prologue
    .line 229
    const/4 v3, 0x0

    .line 231
    .local v3, "ri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->map:Landroid/graphics/Bitmap;

    .line 244
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Share_Image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 247
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 248
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->map:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 249
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 250
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    move-object v4, v3

    .line 260
    :goto_1
    return-object v4

    .line 239
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 255
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 217
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "iView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v5, 0x7f040019

    invoke-virtual {p0, v5}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->setContentView(I)V

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getImagesFromAssets()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    new-instance v5, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v5, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 72
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v6, "ca-app-pub-7361420641719672/4905125683"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v6, Lcom/app/my/dream/valentinesdaycards/MainActivity$1;

    invoke-direct {v6, p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity$1;-><init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 82
    invoke-direct {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->requestNewInterstitial()V

    .line 86
    const v5, 0x7f0c0055

    invoke-virtual {p0, v5}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/AdView;

    .line 87
    .local v3, "mAdView":Lcom/google/android/gms/ads/AdView;
    new-instance v5, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 88
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 94
    const v5, 0x7f0c0053

    invoke-virtual {p0, v5}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->tv:Landroid/widget/TextView;

    .line 95
    const v5, 0x7f0c0056

    invoke-virtual {p0, v5}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->im1:Landroid/widget/ImageView;

    .line 96
    const v5, 0x7f0c0052

    invoke-virtual {p0, v5}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->layout:Landroid/widget/LinearLayout;

    .line 97
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->layout:Landroid/widget/LinearLayout;

    const-string v6, "#ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 98
    const v5, 0x7f0c0054

    invoke-virtual {p0, v5}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageSwitcher;

    iput-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageViewOut:Landroid/widget/ImageSwitcher;

    .line 99
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageViewOut:Landroid/widget/ImageSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 106
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageViewOut:Landroid/widget/ImageSwitcher;

    const/high16 v6, 0x10a0000

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageViewOut:Landroid/widget/ImageSwitcher;

    const v6, 0x10a0001

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iput v8, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->i:I

    :goto_1
    iget v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->i:I

    iget-object v6, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageList:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 112
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageList:[Ljava/lang/String;

    iget v6, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->i:I

    aget-object v5, v5, v6

    invoke-direct {p0, v5}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget v4, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->i:I

    .line 118
    .local v4, "pos":I
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v6, 0x12c

    const/16 v7, 0xfa

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v2, v9, v8, v9, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 122
    new-instance v5, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;

    invoke-direct {v5, p0, v4}, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;-><init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageViewOut:Landroid/widget/ImageSwitcher;

    new-instance v6, Lcom/app/my/dream/valentinesdaycards/MainActivity$3;

    invoke-direct {v6, p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity$3;-><init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageSwitcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    iget-object v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    iget v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->i:I

    goto :goto_1

    .line 65
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "mAdView":Lcom/google/android/gms/ads/AdView;
    .end local v4    # "pos":I
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .restart local v3    # "mAdView":Lcom/google/android/gms/ads/AdView;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 287
    .local v3, "id":I
    const v4, 0x7f0c0068

    if-ne v3, v4, :cond_0

    .line 289
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    const-string v4, "EXIT"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    const-string v4, "Do You Want to Exit Y/N"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    const-string v4, "Yes"

    new-instance v5, Lcom/app/my/dream/valentinesdaycards/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity$4;-><init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    const-string v4, "No"

    new-instance v5, Lcom/app/my/dream/valentinesdaycards/MainActivity$5;

    invoke-direct {v5, p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity$5;-><init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    const-string v4, "More Apps."

    new-instance v5, Lcom/app/my/dream/valentinesdaycards/MainActivity$6;

    invoke-direct {v5, p0}, Lcom/app/my/dream/valentinesdaycards/MainActivity$6;-><init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 327
    .local v1, "ad1":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 331
    .end local v0    # "ad":Landroid/app/AlertDialog$Builder;
    .end local v1    # "ad1":Landroid/app/AlertDialog;
    :cond_0
    const v4, 0x7f0c0066

    if-ne v3, v4, :cond_1

    .line 344
    iget-object v4, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageList:[Ljava/lang/String;

    iget v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->pos1:I

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->share(Ljava/lang/String;)V

    .line 348
    :cond_1
    const v4, 0x7f0c0067

    if-ne v3, v4, :cond_2

    .line 355
    :try_start_0
    iget-object v4, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageList:[Ljava/lang/String;

    iget v5, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->pos1:I

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->setWallpaper(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 360
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
