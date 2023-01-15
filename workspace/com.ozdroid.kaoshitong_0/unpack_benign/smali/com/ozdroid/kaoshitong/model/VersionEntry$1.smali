.class Lcom/ozdroid/kaoshitong/model/VersionEntry$1;
.super Ljava/lang/Object;
.source "VersionEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/model/VersionEntry;->getDataList(Lcom/ozdroid/kaoshitong/model/IGetDataListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/model/VersionEntry;Landroid/content/Context;Lcom/ozdroid/kaoshitong/model/IGetDataListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    iput-object p2, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 47
    :try_start_0
    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    invoke-static {v9}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$1;

    iget-object v11, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    invoke-direct {v10, p0, v11}, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$1;-><init>(Lcom/ozdroid/kaoshitong/model/VersionEntry$1;Lcom/ozdroid/kaoshitong/model/IGetDataListener;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f05000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/ozdroid/kaoshitong/helper/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "json":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v5, "jsonObj":Lorg/json/JSONObject;
    const-string v9, "channel"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 61
    .local v7, "results":Lorg/json/JSONArray;
    if-nez v7, :cond_0

    .line 62
    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    invoke-static {v9}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$2;

    iget-object v11, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    invoke-direct {v10, p0, v11}, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$2;-><init>(Lcom/ozdroid/kaoshitong/model/VersionEntry$1;Lcom/ozdroid/kaoshitong/model/IGetDataListener;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 78
    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    invoke-static {v9}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->access$1(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 79
    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    invoke-static {v9}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$3;

    iget-object v11, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    invoke-direct {v10, p0, v11}, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$3;-><init>(Lcom/ozdroid/kaoshitong/model/VersionEntry$1;Lcom/ozdroid/kaoshitong/model/IGetDataListener;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .end local v3    # "i":I
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v7    # "results":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 71
    .restart local v3    # "i":I
    .restart local v4    # "json":Ljava/lang/String;
    .restart local v5    # "jsonObj":Lorg/json/JSONObject;
    .restart local v7    # "results":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 72
    .local v8, "sta":Lorg/json/JSONObject;
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "name":Ljava/lang/String;
    const-string v9, "detail"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "detail":Ljava/lang/String;
    const-string v9, "dburl"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "dburl":Ljava/lang/String;
    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    invoke-static {v9}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->access$1(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    invoke-direct {v10, v6, v1, v0}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "dburl":Ljava/lang/String;
    .end local v1    # "detail":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "sta":Lorg/json/JSONObject;
    :cond_2
    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    invoke-static {v9}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$4;

    iget-object v11, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    invoke-direct {v10, p0, v11}, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$4;-><init>(Lcom/ozdroid/kaoshitong/model/VersionEntry$1;Lcom/ozdroid/kaoshitong/model/IGetDataListener;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 93
    .end local v3    # "i":I
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v7    # "results":Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "--->"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v9, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->this$0:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    invoke-static {v9}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->access$0(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$5;

    iget-object v11, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    invoke-direct {v10, p0, v11}, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$5;-><init>(Lcom/ozdroid/kaoshitong/model/VersionEntry$1;Lcom/ozdroid/kaoshitong/model/IGetDataListener;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
