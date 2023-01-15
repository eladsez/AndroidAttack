.class Lorg/hermit/android/utils/Ticker$ClientData$1;
.super Ljava/lang/Object;
.source "Ticker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/utils/Ticker$ClientData;-><init>(ILandroid/os/Handler;Lorg/hermit/android/utils/Ticker$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/hermit/android/utils/Ticker$ClientData;


# direct methods
.method constructor <init>(Lorg/hermit/android/utils/Ticker$ClientData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/utils/Ticker$ClientData$1;->this$1:Lorg/hermit/android/utils/Ticker$ClientData;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker$ClientData$1;->this$1:Lorg/hermit/android/utils/Ticker$ClientData;

    iget-object v0, v0, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    iget-object v1, p0, Lorg/hermit/android/utils/Ticker$ClientData$1;->this$1:Lorg/hermit/android/utils/Ticker$ClientData;

    iget-object v1, v1, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    invoke-static {v1}, Lorg/hermit/android/utils/Ticker$Listener;->access$0(Lorg/hermit/android/utils/Ticker$Listener;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/hermit/android/utils/Ticker$ClientData$1;->this$1:Lorg/hermit/android/utils/Ticker$ClientData;

    iget-object v3, v3, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    invoke-static {v3}, Lorg/hermit/android/utils/Ticker$Listener;->access$1(Lorg/hermit/android/utils/Ticker$Listener;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/hermit/android/utils/Ticker$Listener;->tick(JI)V

    .line 389
    return-void
.end method
