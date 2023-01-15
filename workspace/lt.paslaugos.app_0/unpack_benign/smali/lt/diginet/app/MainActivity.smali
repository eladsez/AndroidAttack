.class public Llt/diginet/app/MainActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llt/diginet/app/MainActivity$a;,
        Llt/diginet/app/MainActivity$b;
    }
.end annotation


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Landroid/support/v4/widget/n;

.field public c:Landroid/widget/ProgressBar;

.field private d:Ljava/lang/String;

.field private e:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/webkit/CookieManager;

.field private g:Ljava/lang/String;

.field private h:Landroid/webkit/GeolocationPermissions$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Llt/diginet/app/MainActivity;)Landroid/webkit/CookieManager;
    .locals 0

    iget-object p0, p0, Llt/diginet/app/MainActivity;->f:Landroid/webkit/CookieManager;

    return-object p0
.end method

.method static synthetic a(Llt/diginet/app/MainActivity;Landroid/webkit/GeolocationPermissions$Callback;)Landroid/webkit/GeolocationPermissions$Callback;
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity;->h:Landroid/webkit/GeolocationPermissions$Callback;

    return-object p1
.end method

.method static synthetic a(Llt/diginet/app/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity;->e:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic a(Llt/diginet/app/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Llt/diginet/app/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0}, Llt/diginet/app/MainActivity;->b()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llt/diginet/app/MainActivity;->d:Ljava/lang/String;

    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHOOSER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const-string v1, "Photo upload"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Llt/diginet/app/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    invoke-static {p1, v3}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Llt/diginet/app/MainActivity;Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Llt/diginet/app/MainActivity;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Llt/diginet/app/MainActivity;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Llt/diginet/app/MainActivity;->e:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private b()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {p0, v1}, Llt/diginet/app/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_photo_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Llt/diginet/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Llt/diginet/app/MainActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Llt/diginet/app/MainActivity;->e:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object p2, p0, Llt/diginet/app/MainActivity;->d:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p2, p0, Llt/diginet/app/MainActivity;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/net/Uri;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    iget-object p2, p0, Llt/diginet/app/MainActivity;->e:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_3

    iget-object p2, p0, Llt/diginet/app/MainActivity;->e:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Llt/diginet/app/MainActivity;->e:Landroid/webkit/ValueCallback;

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "HardwareIds"
        }
    .end annotation

    iget-object v0, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "HardwareIds",
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001b

    invoke-virtual {p0, p1}, Llt/diginet/app/MainActivity;->setContentView(I)V

    const-string p1, "lt.diginet.app"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llt/diginet/app/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const v1, 0x7f090063

    invoke-virtual {p0, v1}, Llt/diginet/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/n;

    iput-object v1, p0, Llt/diginet/app/MainActivity;->b:Landroid/support/v4/widget/n;

    const v1, 0x7f090062

    invoke-virtual {p0, v1}, Llt/diginet/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Llt/diginet/app/MainActivity;->c:Landroid/widget/ProgressBar;

    const v1, 0x7f090064

    invoke-virtual {p0, v1}, Llt/diginet/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Llt/diginet/app/MainActivity$b;

    invoke-direct {v1, p0}, Llt/diginet/app/MainActivity$b;-><init>(Llt/diginet/app/MainActivity;)V

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Llt/diginet/app/MainActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Llt/diginet/app/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "APP-X-OS"

    const-string v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "APP-X-VERSION"

    const-string v3, "3.7.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "APP-X-DEVICE-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Llt/diginet/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "link"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v3, "link"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    const v2, 0x7f0d001e

    invoke-virtual {p0, v2}, Llt/diginet/app/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v2, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Llt/diginet/app/a/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "about:blank"

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "No Internet connection"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Application requires internet connection. \nMake sure Wi-Fi or cellular data is turned on then try again"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Ok"

    new-instance v2, Llt/diginet/app/MainActivity$1;

    invoke-direct {v2, p0}, Llt/diginet/app/MainActivity$1;-><init>(Llt/diginet/app/MainActivity;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_2
    const-string v2, "app_token"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v2, Llt/diginet/app/a/a;

    invoke-direct {v2}, Llt/diginet/app/a/a;-><init>()V

    iget-object v5, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5, v0, p1}, Llt/diginet/app/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    iput-object p1, p0, Llt/diginet/app/MainActivity;->f:Landroid/webkit/CookieManager;

    iget-object p1, p0, Llt/diginet/app/MainActivity;->f:Landroid/webkit/CookieManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Llt/diginet/app/MainActivity$2;

    invoke-direct {v1, p0}, Llt/diginet/app/MainActivity$2;-><init>(Llt/diginet/app/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Llt/diginet/app/MainActivity$3;

    invoke-direct {v1, p0}, Llt/diginet/app/MainActivity$3;-><init>(Llt/diginet/app/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->b:Landroid/support/v4/widget/n;

    new-instance v1, Llt/diginet/app/MainActivity$4;

    invoke-direct {v1, p0}, Llt/diginet/app/MainActivity$4;-><init>(Llt/diginet/app/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Llt/diginet/app/MainActivity$5;

    invoke-direct {v1, p0}, Llt/diginet/app/MainActivity$5;-><init>(Llt/diginet/app/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Llt/diginet/app/MainActivity$6;

    invoke-direct {v1, p0}, Llt/diginet/app/MainActivity$6;-><init>(Llt/diginet/app/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Llt/diginet/app/MainActivity$a;

    invoke-direct {v1, p0, p0}, Llt/diginet/app/MainActivity$a;-><init>(Llt/diginet/app/MainActivity;Landroid/content/Context;)V

    const-string v2, "AndroidApplication"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    const/16 v2, 0x82

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->requestFocus(I)Z

    iget-object p1, p0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x521

    if-ne p1, v1, :cond_1

    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, v0

    if-nez p1, :cond_0

    invoke-direct {p0}, Llt/diginet/app/MainActivity;->a()V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "image/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Llt/diginet/app/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x586

    if-ne p1, v1, :cond_2

    array-length p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    iget-object p1, p0, Llt/diginet/app/MainActivity;->h:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object p3, p0, Llt/diginet/app/MainActivity;->g:Ljava/lang/String;

    invoke-interface {p1, p3, p2, p2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
