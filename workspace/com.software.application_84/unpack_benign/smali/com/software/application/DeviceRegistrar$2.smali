.class Lcom/software/application/DeviceRegistrar$2;
.super Ljava/lang/Object;
.source "DeviceRegistrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/software/application/DeviceRegistrar;->unregisterToServer(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$registrationID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/software/application/DeviceRegistrar$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/software/application/DeviceRegistrar$2;->val$registrationID:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 55
    new-instance v2, Landroid/content/Intent;

    const-string v3, "UPDATE_UI"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "updateUIIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/software/application/DeviceRegistrar$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/software/application/DeviceRegistrar$2;->val$registrationID:Ljava/lang/String;

    iget-object v5, p0, Lcom/software/application/DeviceRegistrar$2;->val$context:Landroid/content/Context;

    const v6, 0x7f070013

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/software/application/DeviceRegistrar;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 58
    .local v1, "res":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 59
    const-string v3, "Status"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/software/application/DeviceRegistrar$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    .end local v1    # "res":Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 60
    .restart local v1    # "res":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x190

    if-ne v3, v4, :cond_1

    .line 61
    const-string v3, "Status"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v1    # "res":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Status"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    iget-object v3, p0, Lcom/software/application/DeviceRegistrar$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "res":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    const-string v3, "Status"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
