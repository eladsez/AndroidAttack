.class Lcom/ad_stir/webview/MraidWebView$2$1;
.super Ljava/lang/Object;
.source "MraidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/MraidWebView$2;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/webview/MraidWebView$2;

.field final synthetic val$mraidurl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ad_stir/webview/MraidWebView$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iput-object p2, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->val$mraidurl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 255
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->val$mraidurl:Ljava/lang/String;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "mraidjson":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    .local v5, "json":Lorg/json/JSONObject;
    const-string v10, "function"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "command":Ljava/lang/String;
    const-string v10, "parameters"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 260
    .local v6, "jsonarray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v8, v10, [Ljava/lang/String;

    .line 261
    .local v8, "parameters":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 262
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v4

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :cond_0
    const-string v10, "init"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 267
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v10}, Lcom/ad_stir/webview/MraidWebView;->access$600(Lcom/ad_stir/webview/MraidWebView;)V

    .line 299
    .end local v1    # "command":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "jsonarray":Lorg/json/JSONArray;
    .end local v8    # "parameters":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 268
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "jsonarray":Lorg/json/JSONArray;
    .restart local v8    # "parameters":[Ljava/lang/String;
    :cond_2
    const-string v10, "useMraid"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 269
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v10}, Lcom/ad_stir/webview/MraidWebView;->access$700(Lcom/ad_stir/webview/MraidWebView;)V

    goto :goto_1

    .line 294
    .end local v1    # "command":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "jsonarray":Lorg/json/JSONArray;
    .end local v8    # "parameters":[Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 270
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "jsonarray":Lorg/json/JSONArray;
    .restart local v8    # "parameters":[Ljava/lang/String;
    :cond_3
    const-string v10, "resize"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 271
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 272
    .local v9, "w":I
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 273
    .local v3, "h":I
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v10, v9, v3}, Lcom/ad_stir/webview/MraidWebView;->access$800(Lcom/ad_stir/webview/MraidWebView;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 296
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "h":I
    .end local v4    # "i":I
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "jsonarray":Lorg/json/JSONArray;
    .end local v8    # "parameters":[Ljava/lang/String;
    .end local v9    # "w":I
    :catch_1
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 274
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "jsonarray":Lorg/json/JSONArray;
    .restart local v8    # "parameters":[Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v10, "openModalThisWebView"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 275
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 276
    .restart local v9    # "w":I
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 277
    .restart local v3    # "h":I
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v10, v9, v3}, Lcom/ad_stir/webview/MraidWebView;->access$900(Lcom/ad_stir/webview/MraidWebView;II)V

    goto :goto_1

    .line 278
    .end local v3    # "h":I
    .end local v9    # "w":I
    :cond_5
    const-string v10, "openModalNewWebView"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 279
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 280
    .restart local v9    # "w":I
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 281
    .restart local v3    # "h":I
    const-string v10, "1"

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 282
    .local v0, "b":Z
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-static {v10, v9, v3, v0, v11}, Lcom/ad_stir/webview/MraidWebView;->access$1000(Lcom/ad_stir/webview/MraidWebView;IIZLjava/lang/String;)V

    goto :goto_1

    .line 283
    .end local v0    # "b":Z
    .end local v3    # "h":I
    .end local v9    # "w":I
    :cond_6
    const-string v10, "openBrowser"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 284
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v10, v11}, Lcom/ad_stir/webview/MraidWebView;->access$500(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    :cond_7
    const-string v10, "openVideo"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 286
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v10, v11}, Lcom/ad_stir/webview/MraidWebView;->access$1100(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    :cond_8
    const-string v10, "closeWebView"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 288
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v10}, Lcom/ad_stir/webview/MraidWebView;->closeWebView()V

    goto/16 :goto_1

    .line 289
    :cond_9
    const-string v10, "reload"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 290
    iget-object v10, p0, Lcom/ad_stir/webview/MraidWebView$2$1;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v10, v10, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Lcom/ad_stir/webview/MraidWebView;->reload(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1
.end method
