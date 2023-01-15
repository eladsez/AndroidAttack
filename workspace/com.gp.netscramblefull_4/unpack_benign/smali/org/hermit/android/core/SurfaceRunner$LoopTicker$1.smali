.class Lorg/hermit/android/core/SurfaceRunner$LoopTicker$1;
.super Landroid/os/Handler;
.source "SurfaceRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/hermit/android/core/SurfaceRunner$LoopTicker;


# direct methods
.method constructor <init>(Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker$1;->this$1:Lorg/hermit/android/core/SurfaceRunner$LoopTicker;

    .line 1093
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x6

    .line 1096
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1098
    :pswitch_1
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker$1;->this$1:Lorg/hermit/android/core/SurfaceRunner$LoopTicker;

    invoke-static {v0}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->access$2(Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v0

    invoke-static {v0}, Lorg/hermit/android/core/SurfaceRunner;->access$0(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 1099
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker$1;->this$1:Lorg/hermit/android/core/SurfaceRunner$LoopTicker;

    invoke-static {v0}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->access$0(Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker$1;->this$1:Lorg/hermit/android/core/SurfaceRunner$LoopTicker;

    invoke-static {v0}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->access$0(Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)Landroid/os/Handler;

    move-result-object v0

    .line 1101
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker$1;->this$1:Lorg/hermit/android/core/SurfaceRunner$LoopTicker;

    invoke-static {v1}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->access$2(Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v1

    invoke-static {v1}, Lorg/hermit/android/core/SurfaceRunner;->access$1(Lorg/hermit/android/core/SurfaceRunner;)J

    move-result-wide v1

    .line 1100
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1104
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1096
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
