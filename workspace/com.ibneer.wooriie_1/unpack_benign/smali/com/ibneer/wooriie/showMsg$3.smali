.class Lcom/ibneer/wooriie/showMsg$3;
.super Ljava/util/TimerTask;
.source "showMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibneer/wooriie/showMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibneer/wooriie/showMsg;


# direct methods
.method constructor <init>(Lcom/ibneer/wooriie/showMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ibneer/wooriie/showMsg$3;->this$0:Lcom/ibneer/wooriie/showMsg;

    .line 75
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 78
    invoke-static {}, Lcom/ibneer/wooriie/PushWakeLock;->releaseCpuLock()V

    .line 79
    return-void
.end method
