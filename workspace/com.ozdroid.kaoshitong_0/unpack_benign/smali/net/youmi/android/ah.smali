.class Lnet/youmi/android/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/AdView;


# direct methods
.method constructor <init>(Lnet/youmi/android/AdView;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_0
    iget-object v4, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    iget-boolean v4, v4, Lnet/youmi/android/AdView;->c:Z

    if-nez v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    iget-object v4, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    iget-boolean v4, v4, Lnet/youmi/android/AdView;->d:Z

    if-eqz v4, :cond_3

    const-string v4, "running."

    invoke-static {v4}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    invoke-virtual {v4}, Lnet/youmi/android/AdView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    iget-object v5, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    invoke-virtual {v5}, Lnet/youmi/android/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    invoke-static {v5, v6}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;Lnet/youmi/android/AdView;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/AdView;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    rem-int/lit8 v4, v0, 0x32

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_2
    :try_start_2
    const-string v4, "\u8fd0\u884c\u4e2d..."

    invoke-static {v4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sleep:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    invoke-virtual {v5}, Lnet/youmi/android/AdView;->a()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    iget-wide v5, v5, Lnet/youmi/android/AdView;->a:J

    invoke-static {v4, v5, v6}, Lnet/youmi/android/ak;->a(Ljava/lang/String;J)V

    iget-object v4, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    invoke-virtual {v4}, Lnet/youmi/android/AdView;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    :try_start_4
    iget-object v4, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    const-wide/16 v5, 0x7530

    invoke-static {v4, v5, v6}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/AdView;J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const-string v4, "pause"

    invoke-static {v4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/AdView;

    invoke-static {v4, v5}, Lnet/youmi/android/AdManager;->a(J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/AdView;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    move-object v9, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_3
    move-exception v4

    goto :goto_2
.end method
