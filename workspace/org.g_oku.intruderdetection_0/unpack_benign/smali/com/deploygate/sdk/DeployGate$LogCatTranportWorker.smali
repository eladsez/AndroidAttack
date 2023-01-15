.class Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;
.super Ljava/lang/Object;
.source "DeployGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deploygate/sdk/DeployGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogCatTranportWorker"
.end annotation


# instance fields
.field private mIsOneShot:Z

.field private final mPackageName:Ljava/lang/String;

.field private mProcess:Ljava/lang/Process;

.field private final mService:Lcom/deploygate/service/IDeployGateSdkService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/deploygate/service/IDeployGateSdkService;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/deploygate/service/IDeployGateSdkService;
    .param p3, "isOneshot"    # Z

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mPackageName:Ljava/lang/String;

    .line 790
    iput-object p2, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mService:Lcom/deploygate/service/IDeployGateSdkService;

    .line 791
    iput-boolean p3, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mIsOneShot:Z

    .line 792
    return-void
.end method

.method private send(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 862
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "log"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 864
    :try_start_0
    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mService:Lcom/deploygate/service/IDeployGateSdkService;

    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mPackageName:Ljava/lang/String;

    const-string v4, "sendLogcat"

    invoke-interface {v2, v3, v4, v0}, Lcom/deploygate/service/IDeployGateSdkService;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 865
    :catch_0
    move-exception v1

    .line 866
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 796
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mProcess:Ljava/lang/Process;

    .line 797
    const/4 v6, 0x0

    .line 798
    .local v6, "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 801
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 802
    .local v3, "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v8, "logcat"

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 803
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 805
    .end local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v0, 0x1f4

    .line 806
    .local v0, "MAX_LINES":I
    :try_start_1
    iget-boolean v8, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mIsOneShot:Z

    if-eqz v8, :cond_0

    .line 807
    const-string v8, "-d"

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 808
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x8

    if-lt v8, v9, :cond_0

    .line 809
    const-string v8, "-t"

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_0
    const-string v8, "-v"

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 814
    const-string v8, "threadtime"

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 815
    const-string v8, "*:V"

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 818
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 817
    invoke-virtual {v9, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    iput-object v8, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mProcess:Ljava/lang/Process;

    .line 819
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 820
    iget-object v9, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mProcess:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 819
    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 822
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    const-string v8, "DeployGate"

    const-string v9, "Start retrieving logcat"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 838
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 839
    invoke-direct {p0, v7}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->send(Ljava/util/ArrayList;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 844
    :cond_2
    if-eqz v2, :cond_3

    .line 846
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 851
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->stop()V

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 853
    .end local v0    # "MAX_LINES":I
    .end local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 825
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "MAX_LINES":I
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget-boolean v8, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mIsOneShot:Z

    if-eqz v8, :cond_6

    .line 827
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v0, :cond_1

    .line 828
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 841
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 842
    .end local v0    # "MAX_LINES":I
    .end local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "e":Ljava/io/IOException;
    .restart local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    :try_start_5
    const-string v8, "DeployGate"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Logcat stopped: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 844
    if-eqz v1, :cond_5

    .line 846
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 851
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->stop()V

    goto :goto_2

    .line 830
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "MAX_LINES":I
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v8

    if-nez v8, :cond_1

    .line 831
    invoke-direct {p0, v7}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->send(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 832
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 843
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 844
    .end local v0    # "MAX_LINES":I
    .end local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    if-eqz v1, :cond_7

    .line 846
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 851
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->stop()V

    .line 852
    throw v8

    .line 844
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "MAX_LINES":I
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    if-eqz v2, :cond_9

    .line 846
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 851
    :cond_9
    :goto_7
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->stop()V

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 834
    .end local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 847
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    goto :goto_7

    .end local v0    # "MAX_LINES":I
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2
    move-exception v8

    goto :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_6

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "MAX_LINES":I
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4
    move-exception v8

    goto :goto_1

    .line 843
    .end local v0    # "MAX_LINES":I
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v8

    goto :goto_5

    .end local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "MAX_LINES":I
    .restart local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_5

    .line 841
    .end local v0    # "MAX_LINES":I
    .end local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_5
    move-exception v4

    goto :goto_3

    .end local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "MAX_LINES":I
    .restart local v3    # "commandLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_6
    move-exception v4

    move-object v6, v7

    .end local v7    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "logcatBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 858
    :cond_0
    return-void
.end method
