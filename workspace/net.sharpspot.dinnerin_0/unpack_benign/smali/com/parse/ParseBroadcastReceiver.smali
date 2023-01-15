.class public Lcom/parse/ParseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ParseBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string v0, "com.parse.ParseBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 20
    return-void
.end method
