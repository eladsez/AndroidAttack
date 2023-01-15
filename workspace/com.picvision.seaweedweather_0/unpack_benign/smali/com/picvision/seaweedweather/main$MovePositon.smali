.class Lcom/picvision/seaweedweather/main$MovePositon;
.super Ljava/lang/Thread;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovePositon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;)V
    .locals 0

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$MovePositon;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1203
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1204
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1205
    iget-object v2, p0, Lcom/picvision/seaweedweather/main$MovePositon;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v2}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1207
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Lcom/picvision/seaweedweather/main$MovePositon;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1208
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
