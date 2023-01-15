.class Lcom/gp/netscramblefull/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/netscramblefull/Timer;


# direct methods
.method constructor <init>(Lcom/gp/netscramblefull/Timer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 163
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v2}, Lcom/gp/netscramblefull/Timer;->access$0(Lcom/gp/netscramblefull/Timer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 167
    .local v0, "now":J
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v2}, Lcom/gp/netscramblefull/Timer;->access$1(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v5}, Lcom/gp/netscramblefull/Timer;->access$2(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v5

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/gp/netscramblefull/Timer;->access$3(Lcom/gp/netscramblefull/Timer;J)V

    .line 168
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v2, v0, v1}, Lcom/gp/netscramblefull/Timer;->access$4(Lcom/gp/netscramblefull/Timer;J)V

    .line 170
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    iget-object v3, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v3}, Lcom/gp/netscramblefull/Timer;->access$5(Lcom/gp/netscramblefull/Timer;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v5}, Lcom/gp/netscramblefull/Timer;->access$6(Lcom/gp/netscramblefull/Timer;I)V

    iget-object v3, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v3}, Lcom/gp/netscramblefull/Timer;->access$1(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/gp/netscramblefull/Timer;->step(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v2}, Lcom/gp/netscramblefull/Timer;->access$7(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v5}, Lcom/gp/netscramblefull/Timer;->access$8(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/gp/netscramblefull/Timer;->access$9(Lcom/gp/netscramblefull/Timer;J)V

    .line 175
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v2}, Lcom/gp/netscramblefull/Timer;->access$7(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v2}, Lcom/gp/netscramblefull/Timer;->access$7(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v5}, Lcom/gp/netscramblefull/Timer;->access$8(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/gp/netscramblefull/Timer;->access$9(Lcom/gp/netscramblefull/Timer;J)V

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    iget-object v3, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v3}, Lcom/gp/netscramblefull/Timer;->access$10(Lcom/gp/netscramblefull/Timer;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-static {v4}, Lcom/gp/netscramblefull/Timer;->access$7(Lcom/gp/netscramblefull/Timer;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/gp/netscramblefull/Timer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 183
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 179
    .restart local v0    # "now":J
    :cond_2
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/gp/netscramblefull/Timer;->access$11(Lcom/gp/netscramblefull/Timer;Z)V

    .line 180
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer$1;->this$0:Lcom/gp/netscramblefull/Timer;

    invoke-virtual {v2}, Lcom/gp/netscramblefull/Timer;->done()V

    goto :goto_0
.end method
