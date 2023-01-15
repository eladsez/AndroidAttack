.class public Lcom/ievyhrdnoniovof/AdBrowser;
.super Landroid/app/Activity;


# static fields
.field private static final synthetic E:I = 0x65

.field public static final H:Ljava/lang/String; = "open_show_forward"

.field public static final M:Ljava/lang/String; = "open_show_refresh"

.field public static final d:Ljava/lang/String; = "open_show_back"

.field public static final g:Ljava/lang/String; = "extra_url"

.field private static final synthetic k:I = 0x67

.field private static final synthetic l:I = 0x64

.field private static final synthetic m:I = 0x66


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/ievyhrdnoniovof/AdAssetController;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vq|}*"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "K"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_3
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_6
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v3, v0

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, 0x41c80000    # 25.0f

    const/4 v9, -0x1

    const/4 v8, -0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdBrowser;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdBrowser;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v12, v9}, Landroid/view/Window;->setFeatureInt(II)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x64

    invoke-virtual {v4, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const-string v6, "zyl}y`k?z{\u007fbvt6`vw"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ievyhrdnoniovof/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x67

    const v7, 0x106000d

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setId(I)V

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "open_show_back"

    invoke-virtual {v2, v4, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    const-string v4, "\u0008\u000f\u001e\u000b\u000b\u0016\u0019I\u0006\u0003\u000c\u0012\u000b\u0014\u0018\t\u001dH\u001a\u0008\r"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ievyhrdnoniovof/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v4, Lcom/ievyhrdnoniovof/AdBrowser$1;

    invoke-direct {v4, p0}, Lcom/ievyhrdnoniovof/AdBrowser$1;-><init>(Lcom/ievyhrdnoniovof/AdBrowser;)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x66

    const v6, 0x106000d

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v6, "open_show_forward"

    const/16 v7, 0x10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    new-instance v5, Lcom/ievyhrdnoniovof/AdBrowser$2;

    invoke-direct {v5, p0}, Lcom/ievyhrdnoniovof/AdBrowser$2;-><init>(Lcom/ievyhrdnoniovof/AdBrowser;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v5, 0x106000d

    const-string v6, "rqduqhc7b}vjukx6`vw"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ievyhrdnoniovof/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v6, "open_show_refresh"

    const/16 v7, 0x10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    new-instance v5, Lcom/ievyhrdnoniovof/AdBrowser$3;

    invoke-direct {v5, p0}, Lcom/ievyhrdnoniovof/AdBrowser$3;-><init>(Lcom/ievyhrdnoniovof/AdBrowser;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v5, 0x106000d

    const-string v6, "\u0008\u000f\u001e\u000b\u000b\u0016\u0019I\t\n\u0005\u0015\u000fH\u001a\u0008\r"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ievyhrdnoniovof/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ievyhrdnoniovof/AdBrowser$4;

    invoke-direct {v3, p0}, Lcom/ievyhrdnoniovof/AdBrowser$4;-><init>(Lcom/ievyhrdnoniovof/AdBrowser;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdBrowser;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/Window;->requestFeature(I)Z

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->startSync()V

    const/16 v3, 0x65

    const-string v4, "extra_url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setId(I)V

    new-instance v2, Lcom/ievyhrdnoniovof/AdBrowser$5;

    invoke-direct {v2, p0}, Lcom/ievyhrdnoniovof/AdBrowser$5;-><init>(Lcom/ievyhrdnoniovof/AdBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdBrowser;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/ievyhrdnoniovof/AdBrowser$6;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdBrowser$6;-><init>(Lcom/ievyhrdnoniovof/AdBrowser;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method
