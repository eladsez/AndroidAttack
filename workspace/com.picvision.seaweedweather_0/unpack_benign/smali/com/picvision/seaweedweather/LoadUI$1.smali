.class Lcom/picvision/seaweedweather/LoadUI$1;
.super Ljava/lang/Object;
.source "LoadUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/LoadUI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/LoadUI;

.field private final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/LoadUI;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/LoadUI$1;->this$0:Lcom/picvision/seaweedweather/LoadUI;

    iput-object p2, p0, Lcom/picvision/seaweedweather/LoadUI$1;->val$msg:Landroid/os/Message;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-class v5, Lcom/picvision/seaweedweather/main;

    .line 38
    iget-object v1, p0, Lcom/picvision/seaweedweather/LoadUI$1;->val$msg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 60
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/picvision/seaweedweather/LoadUI$1;->this$0:Lcom/picvision/seaweedweather/LoadUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/picvision/seaweedweather/LoadUI$1;->this$0:Lcom/picvision/seaweedweather/LoadUI;

    const-class v4, Lcom/picvision/seaweedweather/main;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/picvision/seaweedweather/LoadUI;->startActivity(Landroid/content/Intent;)V

    .line 65
    iget-object v1, p0, Lcom/picvision/seaweedweather/LoadUI$1;->this$0:Lcom/picvision/seaweedweather/LoadUI;

    invoke-virtual {v1}, Lcom/picvision/seaweedweather/LoadUI;->finish()V

    .line 68
    :goto_1
    return-void

    .line 41
    :sswitch_0
    const-wide/16 v1, 0x7d0

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    :goto_2
    iget-object v1, p0, Lcom/picvision/seaweedweather/LoadUI$1;->this$0:Lcom/picvision/seaweedweather/LoadUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/picvision/seaweedweather/LoadUI$1;->this$0:Lcom/picvision/seaweedweather/LoadUI;

    const-class v4, Lcom/picvision/seaweedweather/main;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/picvision/seaweedweather/LoadUI;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object v1, p0, Lcom/picvision/seaweedweather/LoadUI$1;->this$0:Lcom/picvision/seaweedweather/LoadUI;

    invoke-virtual {v1}, Lcom/picvision/seaweedweather/LoadUI;->finish()V

    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 50
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :sswitch_1
    const-wide/16 v1, 0x7d0

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :goto_3
    iget-object v1, p0, Lcom/picvision/seaweedweather/LoadUI$1;->this$0:Lcom/picvision/seaweedweather/LoadUI;

    invoke-virtual {v1}, Lcom/picvision/seaweedweather/LoadUI;->finish()V

    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 61
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 62
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method
