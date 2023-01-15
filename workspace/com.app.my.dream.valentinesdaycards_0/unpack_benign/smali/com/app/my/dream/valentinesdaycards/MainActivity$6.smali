.class Lcom/app/my/dream/valentinesdaycards/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/my/dream/valentinesdaycards/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;


# direct methods
.method constructor <init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/my/dream/valentinesdaycards/MainActivity;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$6;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 314
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "https://play.google.com/store/apps/developer?id=Nitin+Kothari"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$6;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-virtual {v2, v1}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "https://play.google.com/store/apps/developer?id=Nitin+Kothari"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method
