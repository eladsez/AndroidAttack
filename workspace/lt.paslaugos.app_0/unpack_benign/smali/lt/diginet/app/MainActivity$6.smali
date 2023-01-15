.class Llt/diginet/app/MainActivity$6;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llt/diginet/app/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llt/diginet/app/MainActivity;


# direct methods
.method constructor <init>(Llt/diginet/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-static {v1, p2}, Llt/diginet/app/MainActivity;->a(Llt/diginet/app/MainActivity;Landroid/webkit/GeolocationPermissions$Callback;)Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-static {v1, p1}, Llt/diginet/app/MainActivity;->a(Llt/diginet/app/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    iget-object v2, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-static {v1, v2, v0}, Llt/diginet/app/MainActivity;->a(Llt/diginet/app/MainActivity;Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object p1, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    const/16 p2, 0x586

    invoke-static {p1, v0, p2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    iget-object v0, v0, Llt/diginet/app/MainActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-virtual {p1}, Llt/diginet/app/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-static {p3}, Llt/diginet/app/MainActivity;->b(Llt/diginet/app/MainActivity;)Landroid/webkit/ValueCallback;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-static {p3}, Llt/diginet/app/MainActivity;->b(Llt/diginet/app/MainActivity;)Landroid/webkit/ValueCallback;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p3, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-static {p3, p2}, Llt/diginet/app/MainActivity;->a(Llt/diginet/app/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    const-string p2, "android.permission.CAMERA"

    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p2, p3, v0}, [Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-static {p3, p1, p2}, Llt/diginet/app/MainActivity;->a(Llt/diginet/app/MainActivity;Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    const/16 p3, 0x521

    invoke-static {p1, p2, p3}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Llt/diginet/app/MainActivity$6;->a:Llt/diginet/app/MainActivity;

    invoke-static {p1}, Llt/diginet/app/MainActivity;->c(Llt/diginet/app/MainActivity;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
