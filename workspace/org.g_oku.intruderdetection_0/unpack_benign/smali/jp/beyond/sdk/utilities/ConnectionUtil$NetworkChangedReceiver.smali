.class public Ljp/beyond/sdk/utilities/ConnectionUtil$NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/utilities/ConnectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/utilities/ConnectionUtil;


# direct methods
.method public constructor <init>(Ljp/beyond/sdk/utilities/ConnectionUtil;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Ljp/beyond/sdk/utilities/ConnectionUtil$NetworkChangedReceiver;->this$0:Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    iget-object v0, p0, Ljp/beyond/sdk/utilities/ConnectionUtil$NetworkChangedReceiver;->this$0:Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-virtual {v0, p1}, Ljp/beyond/sdk/utilities/ConnectionUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "Network Available Do operations"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_0
    return-void
.end method
