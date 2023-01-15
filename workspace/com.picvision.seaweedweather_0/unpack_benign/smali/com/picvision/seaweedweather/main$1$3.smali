.class Lcom/picvision/seaweedweather/main$1$3;
.super Ljava/lang/Thread;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/picvision/seaweedweather/main$1;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$1$3;->this$1:Lcom/picvision/seaweedweather/main$1;

    .line 400
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 403
    iget-object v4, p0, Lcom/picvision/seaweedweather/main$1$3;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v4}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lcom/picvision/seaweedweather/main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 404
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "imsi":Ljava/lang/String;
    const-string v4, "IMSI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "XXXXXXXXXXXXXXXXXXX"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://211.95.79.112/softwareupdatecheck.jsp?imsi="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&software=SeaweedWeatherV1.0.0_FREE_AD1.5_AllSizes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/picvision/seaweedweather/utils/Util;->makeSureUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "updateinfor":Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 410
    .local v1, "message":Landroid/os/Message;
    const/4 v4, 0x7

    iput v4, v1, Landroid/os/Message;->what:I

    .line 411
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    iget-object v4, p0, Lcom/picvision/seaweedweather/main$1$3;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v4}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v4

    invoke-static {v4}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method
