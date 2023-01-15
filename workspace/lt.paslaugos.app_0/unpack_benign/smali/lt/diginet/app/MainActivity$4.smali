.class Llt/diginet/app/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/n$b;


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

    iput-object p1, p0, Llt/diginet/app/MainActivity$4;->a:Llt/diginet/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Llt/diginet/app/MainActivity$4;->a:Llt/diginet/app/MainActivity;

    iget-object v0, v0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llt/diginet/app/MainActivity$4;->a:Llt/diginet/app/MainActivity;

    iget-object v0, v0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Llt/diginet/app/MainActivity$4;->a:Llt/diginet/app/MainActivity;

    const v2, 0x7f0d001e

    invoke-virtual {v1, v2}, Llt/diginet/app/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llt/diginet/app/MainActivity$4;->a:Llt/diginet/app/MainActivity;

    iget-object v0, v0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :goto_0
    return-void
.end method
