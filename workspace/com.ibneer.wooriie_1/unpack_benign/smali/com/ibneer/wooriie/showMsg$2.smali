.class Lcom/ibneer/wooriie/showMsg$2;
.super Ljava/lang/Object;
.source "showMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibneer/wooriie/showMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibneer/wooriie/showMsg;


# direct methods
.method constructor <init>(Lcom/ibneer/wooriie/showMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ibneer/wooriie/showMsg$2;->this$0:Lcom/ibneer/wooriie/showMsg;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 52
    iget-object v5, p0, Lcom/ibneer/wooriie/showMsg$2;->this$0:Lcom/ibneer/wooriie/showMsg;

    invoke-virtual {v5}, Lcom/ibneer/wooriie/showMsg;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, "bun":Landroid/os/Bundle;
    const-string v5, "url"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "url":Ljava/lang/String;
    const-string v5, "pushtime"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 56
    .local v3, "pushtime":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v1, "i":Landroid/content/Intent;
    iget-object v5, p0, Lcom/ibneer/wooriie/showMsg$2;->this$0:Lcom/ibneer/wooriie/showMsg;

    invoke-virtual {v5}, Lcom/ibneer/wooriie/showMsg;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ibneer/wooriie/showMsg$2;->this$0:Lcom/ibneer/wooriie/showMsg;

    invoke-virtual {v7}, Lcom/ibneer/wooriie/showMsg;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".MainActivity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v5, "url"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v5, p0, Lcom/ibneer/wooriie/showMsg$2;->this$0:Lcom/ibneer/wooriie/showMsg;

    invoke-virtual {v5, v1}, Lcom/ibneer/wooriie/showMsg;->startActivity(Landroid/content/Intent;)V

    .line 63
    iget-object v5, p0, Lcom/ibneer/wooriie/showMsg$2;->this$0:Lcom/ibneer/wooriie/showMsg;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Lcom/ibneer/wooriie/showMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 64
    .local v2, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 65
    invoke-static {}, Lcom/ibneer/wooriie/PushWakeLock;->releaseCpuLock()V

    .line 66
    iget-object v5, p0, Lcom/ibneer/wooriie/showMsg$2;->this$0:Lcom/ibneer/wooriie/showMsg;

    invoke-virtual {v5}, Lcom/ibneer/wooriie/showMsg;->finish()V

    .line 67
    return-void
.end method
