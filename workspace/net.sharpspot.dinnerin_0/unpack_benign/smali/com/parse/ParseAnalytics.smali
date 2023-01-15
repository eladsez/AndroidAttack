.class public Lcom/parse/ParseAnalytics;
.super Ljava/lang/Object;
.source "ParseAnalytics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseAnalytics"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackAppOpened(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.parse.Data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "parseData":Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/ParseAnalytics;->trackAppOpened(Ljava/lang/String;)V

    .line 34
    .end local v0    # "parseData":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static trackAppOpened(Ljava/lang/String;)V
    .locals 7
    .param p0, "pushData"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v4, "client_app_opened"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v0, "command":Lcom/parse/ParseCommand;
    const-string v4, "at"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/parse/Parse;->dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 49
    if-eqz p0, :cond_0

    .line 51
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "payload":Lorg/json/JSONObject;
    const-string v4, "push_hash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "pushHash":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 54
    const-string v4, "push_hash"

    invoke-virtual {v0, v4, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "payload":Lorg/json/JSONObject;
    .end local v3    # "pushHash":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/parse/ParseCommandCache;->runEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)Lcom/parse/Task;

    .line 62
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "com.parse.ParseAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to parse push data: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
