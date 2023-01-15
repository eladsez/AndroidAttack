.class Lcom/ibneer/wooriie/GCMHttpConnect$1;
.super Landroid/os/Handler;
.source "GCMHttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibneer/wooriie/GCMHttpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibneer/wooriie/GCMHttpConnect;


# direct methods
.method constructor <init>(Lcom/ibneer/wooriie/GCMHttpConnect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ibneer/wooriie/GCMHttpConnect$1;->this$0:Lcom/ibneer/wooriie/GCMHttpConnect;

    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ibneer/wooriie/GCMHttpConnect$1;->this$0:Lcom/ibneer/wooriie/GCMHttpConnect;

    invoke-static {v0}, Lcom/ibneer/wooriie/GCMHttpConnect;->access$0(Lcom/ibneer/wooriie/GCMHttpConnect;)Lcom/ibneer/wooriie/GCMHttpConnect$Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/ibneer/wooriie/GCMHttpConnect$1;->this$0:Lcom/ibneer/wooriie/GCMHttpConnect;

    invoke-static {v0}, Lcom/ibneer/wooriie/GCMHttpConnect;->access$0(Lcom/ibneer/wooriie/GCMHttpConnect;)Lcom/ibneer/wooriie/GCMHttpConnect$Request;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibneer/wooriie/GCMHttpConnect$Request;->OnComplete()V

    .line 39
    :cond_0
    return-void
.end method
