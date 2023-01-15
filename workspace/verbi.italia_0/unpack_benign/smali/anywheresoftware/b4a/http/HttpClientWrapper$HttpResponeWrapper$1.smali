.class Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->GetAsynchronously(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/io/OutputStream;ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

.field private final synthetic val$CloseOutput:Z

.field private final synthetic val$EventName:Ljava/lang/String;

.field private final synthetic val$Output:Ljava/io/OutputStream;

.field private final synthetic val$TaskId:I

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Ljava/io/OutputStream;ZLanywheresoftware/b4a/BA;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$Output:Ljava/io/OutputStream;

    iput-boolean p3, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$CloseOutput:Z

    iput-object p4, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput p5, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$TaskId:I

    iput-object p6, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$EventName:Ljava/lang/String;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v14, "_streamfinish"

    .line 584
    const/4 v7, 0x0

    .line 586
    .local v7, "abortConnection":Z
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-static {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$2(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$Output:Ljava/io/OutputStream;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 587
    iget-boolean v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$CloseOutput:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$Output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 589
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-static {v1}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$2(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-static {v2}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$3(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-result-object v2

    iget v3, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$TaskId:I

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$EventName:Ljava/lang/String;

    sget-object v6, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    const-string v5, "_streamfinish"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 591
    const/4 v5, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    iget v10, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$TaskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    .line 589
    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    if-eqz v7, :cond_2

    :try_start_1
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-static {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$2(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/http/conn/ConnectionReleaseTrigger;

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-static {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$2(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;
    check-cast p0, Lorg/apache/http/conn/ConnectionReleaseTrigger;

    invoke-interface {p0}, Lorg/apache/http/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 616
    :goto_1
    return-void

    .line 593
    .restart local p0    # "this":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 594
    .local v8, "e":Ljava/io/IOException;
    const/4 v7, 0x1

    .line 595
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v8}, Lanywheresoftware/b4a/BA;->setLastException(Ljava/lang/Exception;)V

    .line 596
    iget-boolean v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$CloseOutput:Z

    if-eqz v0, :cond_1

    .line 598
    :try_start_2
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$Output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 602
    :cond_1
    :goto_2
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-static {v1}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$2(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-static {v2}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$3(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lanywheresoftware/b4a/http/HttpClientWrapper;

    move-result-object v2

    iget v3, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$TaskId:I

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$EventName:Ljava/lang/String;

    sget-object v6, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v5, "_streamfinish"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 603
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 604
    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v6, v12

    iget v5, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->val$TaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v11

    move v5, v11

    .line 602
    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 610
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;->this$1:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;

    invoke-static {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->access$2(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 613
    .end local p0    # "this":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 614
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v0, "B4A"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 599
    .restart local p0    # "this":Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;
    :catch_2
    move-exception v0

    goto :goto_2
.end method
