.class Lcn/com/picvision/util/NetworkListener$1;
.super Ljava/lang/Object;
.source "NetworkListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/util/NetworkListener;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/picvision/util/NetworkListener;


# direct methods
.method constructor <init>(Lcn/com/picvision/util/NetworkListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    :goto_0
    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    iget-boolean v1, v1, Lcn/com/picvision/util/NetworkListener;->isListener:Z

    if-nez v1, :cond_0

    .line 58
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    invoke-static {v1}, Lcn/com/picvision/util/NetworkListener;->access$0(Lcn/com/picvision/util/NetworkListener;)Lcn/com/picvision/util/NetworkService;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcn/com/picvision/util/NetworkService;->getActiveNetInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    .local v0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 46
    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    invoke-static {v1}, Lcn/com/picvision/util/NetworkListener;->access$1(Lcn/com/picvision/util/NetworkListener;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 47
    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    invoke-static {v1}, Lcn/com/picvision/util/NetworkListener;->access$2(Lcn/com/picvision/util/NetworkListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    :cond_1
    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    invoke-static {v1, v3}, Lcn/com/picvision/util/NetworkListener;->access$3(Lcn/com/picvision/util/NetworkListener;I)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    invoke-static {v1}, Lcn/com/picvision/util/NetworkListener;->access$1(Lcn/com/picvision/util/NetworkListener;)I

    move-result v1

    if-nez v1, :cond_3

    .line 52
    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    invoke-static {v1}, Lcn/com/picvision/util/NetworkListener;->access$2(Lcn/com/picvision/util/NetworkListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    :cond_3
    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener$1;->this$0:Lcn/com/picvision/util/NetworkListener;

    invoke-static {v1, v2}, Lcn/com/picvision/util/NetworkListener;->access$3(Lcn/com/picvision/util/NetworkListener;I)V

    goto :goto_0
.end method
