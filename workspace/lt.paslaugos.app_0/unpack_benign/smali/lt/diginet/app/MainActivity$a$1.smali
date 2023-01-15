.class Llt/diginet/app/MainActivity$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llt/diginet/app/MainActivity$a;->toggleShareDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Llt/diginet/app/MainActivity$a;


# direct methods
.method constructor <init>(Llt/diginet/app/MainActivity$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity$a$1;->b:Llt/diginet/app/MainActivity$a;

    iput-object p2, p0, Llt/diginet/app/MainActivity$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Llt/diginet/app/MainActivity$a$1;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llt/diginet/app/MainActivity$a$1;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Llt/diginet/app/MainActivity$a$1;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Llt/diginet/app/MainActivity$a$1;->b:Llt/diginet/app/MainActivity$a;

    iget-object v2, v2, Llt/diginet/app/MainActivity$a;->b:Llt/diginet/app/MainActivity;

    iget-object v2, v2, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Llt/diginet/app/MainActivity$a$1;->b:Llt/diginet/app/MainActivity$a;

    iget-object v1, v1, Llt/diginet/app/MainActivity$a;->b:Llt/diginet/app/MainActivity;

    const-string v2, "Share window"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Llt/diginet/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
