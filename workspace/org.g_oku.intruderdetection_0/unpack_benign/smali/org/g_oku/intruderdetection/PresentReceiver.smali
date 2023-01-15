.class public Lorg/g_oku/intruderdetection/PresentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PresentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 11
    invoke-static {p1}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->isDetect(Landroid/content/Context;)Z

    move-result v0

    .line 18
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 20
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/g_oku/intruderdetection/WatchService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
