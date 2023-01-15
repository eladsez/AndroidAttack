.class Lcom/parse/PushService$3;
.super Lcom/parse/os/ParseAsyncTask;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->readInBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/os/ParseAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;

.field private final synthetic val$finalService:Lcom/parse/PushService;

.field private final synthetic val$forceReconnect:Z


# direct methods
.method constructor <init>(Lcom/parse/PushService;ZLcom/parse/PushService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    iput-boolean p2, p0, Lcom/parse/PushService$3;->val$forceReconnect:Z

    iput-object p3, p0, Lcom/parse/PushService$3;->val$finalService:Lcom/parse/PushService;

    .line 394
    invoke-direct {p0}, Lcom/parse/os/ParseAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parse/PushService$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-boolean v3, p0, Lcom/parse/PushService$3;->val$forceReconnect:Z

    if-eqz v3, :cond_1

    .line 399
    invoke-static {}, Lcom/parse/PushService;->access$2()I

    move-result v3

    if-lez v3, :cond_0

    .line 401
    :try_start_0
    const-string v3, "com.parse.PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sleeping for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/parse/PushService;->access$2()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/parse/PushService;->access$2()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Lcom/parse/PushService;->sleep(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    invoke-static {v3}, Lcom/parse/PushService;->access$3(Lcom/parse/PushService;)V

    .line 412
    :cond_1
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    invoke-static {v3}, Lcom/parse/PushService;->access$4(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v3

    sget-object v4, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v3, v4, :cond_2

    move-object v1, v2

    .line 445
    :goto_0
    return-object v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "com.parse.PushService"

    const-string v4, "Push backoff sleep interrupted"

    invoke-static {v3, v4, v0}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 405
    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    sget-object v3, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    invoke-static {}, Lcom/parse/PushService;->access$5()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/parse/PushService;->access$6()I

    move-result v5

    iget-boolean v6, p0, Lcom/parse/PushService$3;->val$forceReconnect:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/parse/PushConnection;->connect(Ljava/lang/String;IZ)V

    .line 419
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    invoke-static {v3}, Lcom/parse/PushService;->access$4(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v3

    sget-object v4, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v3, v4, :cond_3

    move-object v1, v2

    .line 420
    goto :goto_0

    .line 423
    :cond_3
    iget-boolean v3, p0, Lcom/parse/PushService$3;->val$forceReconnect:Z

    if-eqz v3, :cond_4

    .line 424
    iget-object v3, p0, Lcom/parse/PushService$3;->val$finalService:Lcom/parse/PushService;

    invoke-static {v3}, Lcom/parse/PushService;->access$7(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v2

    .line 425
    goto :goto_0

    .line 429
    :cond_4
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    invoke-static {v3}, Lcom/parse/PushService;->access$4(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v3

    sget-object v4, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v3, v4, :cond_5

    move-object v1, v2

    .line 430
    goto :goto_0

    .line 435
    :cond_5
    :try_start_1
    const-string v3, "com.parse.PushService"

    const-string v4, "waiting for a push"

    invoke-static {v3, v4}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v2

    .line 437
    goto :goto_0

    .line 439
    :cond_6
    sget-object v3, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    invoke-virtual {v3}, Lcom/parse/PushConnection;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "line":Ljava/lang/String;
    invoke-static {}, Lcom/parse/PushService;->resetDelay()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 442
    .end local v1    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 444
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "com.parse.PushService"

    const-string v4, "Network disconnect; will reconnect to the push service shortly."

    invoke-static {v3, v4, v0}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 445
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parse/PushService$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 451
    const-string v3, "com.parse.PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Post execute: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    invoke-static {v3}, Lcom/parse/PushService;->access$4(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v3

    sget-object v4, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v3, v4, :cond_0

    .line 453
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    sget-object v4, Lcom/parse/PushService$ServiceState;->STOPPED:Lcom/parse/PushService$ServiceState;

    invoke-static {v3, v4}, Lcom/parse/PushService;->access$8(Lcom/parse/PushService;Lcom/parse/PushService$ServiceState;)V

    .line 476
    :goto_0
    return-void

    .line 456
    :cond_0
    if-nez p1, :cond_1

    .line 457
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/parse/PushService;->access$9(Lcom/parse/PushService;Z)V

    goto :goto_0

    .line 462
    :cond_1
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 465
    .local v2, "tokener":Lorg/json/JSONTokener;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .local v1, "message":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/PushService$3;->val$finalService:Lcom/parse/PushService;

    invoke-static {v3, v1}, Lcom/parse/ParsePushRouter;->routePush(Lcom/parse/PushService;Lorg/json/JSONObject;)V

    .line 475
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    invoke-static {v3, v6}, Lcom/parse/PushService;->access$9(Lcom/parse/PushService;Z)V

    goto :goto_0

    .line 466
    .end local v1    # "message":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "com.parse.PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bad json: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    iget-object v3, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    invoke-static {v3, v6}, Lcom/parse/PushService;->access$9(Lcom/parse/PushService;Z)V

    goto :goto_0
.end method
