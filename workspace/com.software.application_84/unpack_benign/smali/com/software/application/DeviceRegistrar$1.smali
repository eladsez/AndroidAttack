.class Lcom/software/application/DeviceRegistrar$1;
.super Ljava/lang/Object;
.source "DeviceRegistrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/software/application/DeviceRegistrar;->registerToServer(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/software/application/DeviceRegistrar$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/software/application/DeviceRegistrar$1;->val$registrationID:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 31
    new-instance v3, Landroid/content/Intent;

    const-string v4, "UPDATE_UI"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v3, "updateUIIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/software/application/DeviceRegistrar$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/software/application/DeviceRegistrar$1;->val$registrationID:Ljava/lang/String;

    iget-object v6, p0, Lcom/software/application/DeviceRegistrar$1;->val$context:Landroid/content/Context;

    const v7, 0x7f070012

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/software/application/DeviceRegistrar;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 34
    .local v2, "res":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 35
    const-string v4, "Status"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    :goto_0
    iget-object v4, p0, Lcom/software/application/DeviceRegistrar$1;->val$context:Landroid/content/Context;

    const-string v5, "PREFS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    .local v1, "preferences":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/software/application/DeviceRegistrar$1;->val$context:Landroid/content/Context;

    const-string v5, "deviceRegistrationID"

    iget-object v6, p0, Lcom/software/application/DeviceRegistrar$1;->val$registrationID:Ljava/lang/String;

    invoke-static {v4, v5, v6, v1}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 43
    iget-object v4, p0, Lcom/software/application/DeviceRegistrar$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "res":Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 36
    .restart local v2    # "res":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x190

    if-ne v4, v5, :cond_1

    .line 37
    const-string v4, "Status"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v2    # "res":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Status"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    iget-object v4, p0, Lcom/software/application/DeviceRegistrar$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "res":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    const-string v4, "Status"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
