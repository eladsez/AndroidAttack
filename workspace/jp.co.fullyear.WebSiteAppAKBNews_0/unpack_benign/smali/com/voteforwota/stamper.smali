.class public Lcom/voteforwota/stamper;
.super Landroid/app/Service;
.source "stamper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 34
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 41
    const v6, 0x493e0

    .line 42
    .local v6, "delay":I
    const v7, 0x493e0

    .line 43
    .local v7, "period":I
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 44
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/voteforwota/stamper$1;

    invoke-direct {v1, p0}, Lcom/voteforwota/stamper$1;-><init>(Lcom/voteforwota/stamper;)V

    .line 111
    int-to-long v2, v6

    int-to-long v4, v7

    .line 44
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 116
    return-void
.end method
