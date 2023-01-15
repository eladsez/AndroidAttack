.class Ljp/beyond/sdk/Bead$NetworkStatusReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/Bead$NetworkStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/beyond/sdk/Bead$NetworkStatusReceiver;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/Bead$NetworkStatusReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/Bead$NetworkStatusReceiver$1;->this$1:Ljp/beyond/sdk/Bead$NetworkStatusReceiver;

    .line 1968
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1972
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1973
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "jp.beyond.MESSAGE_EXTRA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1974
    .local v1, "message":Ljava/lang/String;
    const-string v2, "Bead receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    return-void
.end method
