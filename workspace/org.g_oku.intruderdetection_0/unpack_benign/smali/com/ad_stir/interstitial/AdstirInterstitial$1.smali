.class Lcom/ad_stir/interstitial/AdstirInterstitial$1;
.super Ljava/lang/Object;
.source "AdstirInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/interstitial/AdstirInterstitial;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitial;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    iput-object p2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 63
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v6, "url":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/ad_stir/common/Http;->ADSTIR_INTER()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v8, "?app_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    invoke-static {v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$000(Lcom/ad_stir/interstitial/AdstirInterstitial;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v8, "&ad_spot_no="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    invoke-static {v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$100(Lcom/ad_stir/interstitial/AdstirInterstitial;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v8, "&ver="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x4e20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/ad_stir/common/Http;->getHttp(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "res":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 74
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "json":Lorg/json/JSONObject;
    const-string v8, "full"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    const-string v8, "full"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    .local v1, "full":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "media"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$202(Lcom/ad_stir/interstitial/AdstirInterstitial;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "spot"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$302(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I

    .line 80
    .end local v1    # "full":Lorg/json/JSONObject;
    :cond_0
    const-string v8, "webview"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    const-string v8, "webview"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 82
    .local v7, "webview":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "media"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$402(Lcom/ad_stir/interstitial/AdstirInterstitial;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "spot"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$502(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I

    .line 84
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "width"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$602(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I

    .line 85
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "height"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$702(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I

    .line 87
    .end local v7    # "webview":Lorg/json/JSONObject;
    :cond_1
    const-string v8, "icon"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 88
    const-string v8, "icon"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 89
    .local v2, "icon":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "media"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$802(Lcom/ad_stir/interstitial/AdstirInterstitial;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "spot"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$902(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I

    .line 92
    .end local v2    # "icon":Lorg/json/JSONObject;
    :cond_2
    const-string v8, "show"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 93
    const-string v8, "show"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 94
    .local v5, "show":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "limit"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$1002(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I

    .line 95
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    const-string v9, "rate"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/ad_stir/interstitial/AdstirInterstitial;->access$1102(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I

    .line 98
    .end local v5    # "show":Lorg/json/JSONObject;
    :cond_3
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->val$handler:Landroid/os/Handler;

    new-instance v9, Lcom/ad_stir/interstitial/AdstirInterstitial$1$1;

    invoke-direct {v9, p0}, Lcom/ad_stir/interstitial/AdstirInterstitial$1$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitial$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "res":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 104
    .restart local v4    # "res":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->val$handler:Landroid/os/Handler;

    new-instance v9, Lcom/ad_stir/interstitial/AdstirInterstitial$1$2;

    invoke-direct {v9, p0}, Lcom/ad_stir/interstitial/AdstirInterstitial$1$2;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitial$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v4    # "res":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    .line 113
    iget-object v8, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->val$handler:Landroid/os/Handler;

    new-instance v9, Lcom/ad_stir/interstitial/AdstirInterstitial$1$3;

    invoke-direct {v9, p0}, Lcom/ad_stir/interstitial/AdstirInterstitial$1$3;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitial$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
