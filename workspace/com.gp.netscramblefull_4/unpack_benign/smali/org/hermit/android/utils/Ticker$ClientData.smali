.class final Lorg/hermit/android/utils/Ticker$ClientData;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/utils/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientData"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final interval:I

.field final listener:Lorg/hermit/android/utils/Ticker$Listener;

.field poster:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ILandroid/os/Handler;Lorg/hermit/android/utils/Ticker$Listener;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "l"    # Lorg/hermit/android/utils/Ticker$Listener;

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData;->poster:Ljava/lang/Runnable;

    .line 380
    iput p1, p0, Lorg/hermit/android/utils/Ticker$ClientData;->interval:I

    .line 381
    iput-object p2, p0, Lorg/hermit/android/utils/Ticker$ClientData;->handler:Landroid/os/Handler;

    .line 382
    iput-object p3, p0, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    .line 384
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Lorg/hermit/android/utils/Ticker$ClientData$1;

    invoke-direct {v0, p0}, Lorg/hermit/android/utils/Ticker$ClientData$1;-><init>(Lorg/hermit/android/utils/Ticker$ClientData;)V

    iput-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData;->poster:Ljava/lang/Runnable;

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method tick(JI)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "daySecs"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    invoke-static {v0, p1, p2}, Lorg/hermit/android/utils/Ticker$Listener;->access$2(Lorg/hermit/android/utils/Ticker$Listener;J)V

    .line 397
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    invoke-static {v0, p3}, Lorg/hermit/android/utils/Ticker$Listener;->access$3(Lorg/hermit/android/utils/Ticker$Listener;I)V

    .line 398
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/hermit/android/utils/Ticker$ClientData;->poster:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
