.class public Lcn/com/picvision/util/ThreadDownload;
.super Ljava/lang/Thread;
.source "ThreadDownload.java"


# static fields
.field public static final CANCEL:I = 0x4

.field public static final CANCELING:I = 0x8

.field public static final COMPLETE:I = 0x5

.field public static final DOWNING:I = 0x2

.field public static final FINISH:I = 0x7

.field public static final PAUSE:I = 0x3

.field public static final READY:I = 0x0

.field public static final START:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final TIMEOUT:I = 0x6

.field public static final UNCOMPELE:I = 0x9


# instance fields
.field private currentLength:J

.field private downInfos:[Lcn/com/picvision/model/DownInfo;

.field private fileLength:J

.field private handleInfo:Lcn/com/picvision/model/HandleInfo;

.field private handler:Landroid/os/Handler;

.field private isComplete:Z

.field private manager:Lcn/com/picvision/util/ThreadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcn/com/picvision/util/AsynDownLoad;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/ThreadDownload;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcn/com/picvision/model/HandleInfo;[Lcn/com/picvision/model/DownInfo;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "handleInfo"    # Lcn/com/picvision/model/HandleInfo;
    .param p3, "downInfos"    # [Lcn/com/picvision/model/DownInfo;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/ThreadDownload;->isComplete:Z

    .line 33
    iput-object v1, p0, Lcn/com/picvision/util/ThreadDownload;->manager:Lcn/com/picvision/util/ThreadManager;

    .line 34
    iput-object v1, p0, Lcn/com/picvision/util/ThreadDownload;->handler:Landroid/os/Handler;

    .line 35
    iput-object v1, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    .line 36
    iput-object v1, p0, Lcn/com/picvision/util/ThreadDownload;->downInfos:[Lcn/com/picvision/model/DownInfo;

    .line 40
    iput-object p1, p0, Lcn/com/picvision/util/ThreadDownload;->handler:Landroid/os/Handler;

    .line 41
    iput-object p2, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    .line 42
    iput-object p3, p0, Lcn/com/picvision/util/ThreadDownload;->downInfos:[Lcn/com/picvision/model/DownInfo;

    .line 43
    return-void
.end method

.method private final appendTotal(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 104
    iget-wide v0, p0, Lcn/com/picvision/util/ThreadDownload;->fileLength:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/com/picvision/util/ThreadDownload;->fileLength:J

    .line 105
    return-void
.end method

.method private final sendMessage(ILjava/lang/String;[B)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "bytes"    # [B

    .prologue
    .line 131
    iget-object v2, p0, Lcn/com/picvision/util/ThreadDownload;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 132
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 133
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    invoke-virtual {v2}, Lcn/com/picvision/model/HandleInfo;->getType()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 134
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    invoke-virtual {v2}, Lcn/com/picvision/model/HandleInfo;->getCurrentkey()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcn/com/picvision/util/ThreadDownload;->currentLength:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    iget-object v2, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    invoke-virtual {v2}, Lcn/com/picvision/model/HandleInfo;->getTotalKey()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcn/com/picvision/util/ThreadDownload;->fileLength:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 138
    iget-object v2, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    invoke-virtual {v2}, Lcn/com/picvision/model/HandleInfo;->getCompleteKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcn/com/picvision/util/ThreadDownload;->isComplete:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    if-eqz p2, :cond_0

    .line 140
    iget-object v2, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    invoke-virtual {v2}, Lcn/com/picvision/model/HandleInfo;->getDataKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    if-eqz p3, :cond_1

    .line 143
    iget-object v2, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    invoke-virtual {v2}, Lcn/com/picvision/model/HandleInfo;->getByteKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 145
    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 146
    iget-object v2, p0, Lcn/com/picvision/util/ThreadDownload;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    sget-object v2, Lcn/com/picvision/util/ThreadDownload;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/com/picvision/util/ThreadDownload;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/com/picvision/util/ThreadDownload;->handleInfo:Lcn/com/picvision/model/HandleInfo;

    invoke-virtual {v4}, Lcn/com/picvision/model/HandleInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized appendCurrent(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcn/com/picvision/util/ThreadDownload;->currentLength:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/com/picvision/util/ThreadDownload;->currentLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCurrentLength()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcn/com/picvision/util/ThreadDownload;->currentLength:J

    return-wide v0
.end method

.method public final getTotalLength()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcn/com/picvision/util/ThreadDownload;->fileLength:J

    return-wide v0
.end method

.method public final isComplete()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcn/com/picvision/util/ThreadDownload;->isComplete:Z

    return v0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 48
    const/4 v12, 0x0

    .line 49
    .local v12, "complete":I
    const-wide/16 v14, 0x0

    .line 50
    .local v14, "current":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/util/ThreadDownload;->downInfos:[Lcn/com/picvision/model/DownInfo;

    move-object v5, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    .line 51
    .local v19, "threadLength":I
    new-instance v5, Lcn/com/picvision/util/ThreadManager;

    move-object v0, v5

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcn/com/picvision/util/ThreadManager;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/picvision/util/ThreadDownload;->manager:Lcn/com/picvision/util/ThreadManager;

    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, "thread":Lcn/com/picvision/util/DownLoadThread;
    const/16 v18, 0x0

    .line 54
    .local v18, "info":Lcn/com/picvision/model/DownInfo;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/util/ThreadDownload;->manager:Lcn/com/picvision/util/ThreadManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcn/com/picvision/util/ThreadManager;->execute()V

    .line 68
    const/4 v13, 0x0

    .line 69
    .local v13, "completeNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/util/ThreadDownload;->manager:Lcn/com/picvision/util/ThreadManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcn/com/picvision/util/ThreadManager;->getThreads()Ljava/util/ArrayList;

    move-result-object v20

    .line 70
    .local v20, "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/picvision/util/DownLoadThread;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 71
    .local v21, "threadsSize":I
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 79
    const/16 v5, 0x32

    if-le v12, v5, :cond_5

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/util/ThreadDownload;->manager:Lcn/com/picvision/util/ThreadManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcn/com/picvision/util/ThreadManager;->shutdownNow()V

    .line 88
    :goto_2
    move v0, v13

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/com/picvision/util/ThreadDownload;->isComplete:Z

    .line 92
    const/4 v5, 0x7

    const-string v6, "\u7ed3\u675f\u4e0b\u8f7d\uff01"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcn/com/picvision/util/ThreadDownload;->sendMessage(ILjava/lang/String;[B)V

    .line 96
    :cond_0
    sget-object v5, Lcn/com/picvision/util/ThreadDownload;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/com/picvision/util/ThreadDownload;->isComplete:Z

    move v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 55
    .end local v13    # "completeNum":I
    .end local v20    # "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/picvision/util/DownLoadThread;>;"
    .end local v21    # "threadsSize":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/util/ThreadDownload;->downInfos:[Lcn/com/picvision/model/DownInfo;

    move-object v5, v0

    aget-object v18, v5, v17

    .line 56
    new-instance v4, Lcn/com/picvision/util/DownLoadThread;

    .end local v4    # "thread":Lcn/com/picvision/util/DownLoadThread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/util/ThreadDownload;->manager:Lcn/com/picvision/util/ThreadManager;

    move-object v5, v0

    invoke-virtual/range {v18 .. v18}, Lcn/com/picvision/model/DownInfo;->isEncrypt()Z

    move-result v6

    invoke-virtual/range {v18 .. v18}, Lcn/com/picvision/model/DownInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcn/com/picvision/model/DownInfo;->getReqUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcn/com/picvision/model/DownInfo;->getSaveDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcn/com/picvision/model/DownInfo;->getParams()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcn/com/picvision/model/DownInfo;->getMethod()I

    move-result v11

    invoke-direct/range {v4 .. v11}, Lcn/com/picvision/util/DownLoadThread;-><init>(Lcn/com/picvision/util/ThreadManager;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/HashMap;I)V

    .line 57
    .restart local v4    # "thread":Lcn/com/picvision/util/DownLoadThread;
    invoke-virtual {v4}, Lcn/com/picvision/util/DownLoadThread;->getResponse()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/util/ThreadDownload;->manager:Lcn/com/picvision/util/ThreadManager;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcn/com/picvision/util/ThreadManager;->addThread(Lcn/com/picvision/util/DownLoadThread;)V

    .line 59
    invoke-virtual {v4}, Lcn/com/picvision/util/DownLoadThread;->getWholeLength()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcn/com/picvision/util/ThreadDownload;->appendTotal(J)V

    .line 54
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 61
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 72
    .restart local v13    # "completeNum":I
    .restart local v20    # "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/picvision/util/DownLoadThread;>;"
    .restart local v21    # "threadsSize":I
    :cond_3
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcn/com/picvision/util/DownLoadThread;

    .line 73
    .local v16, "downThread":Lcn/com/picvision/util/DownLoadThread;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcn/com/picvision/util/DownLoadThread;->getComplete()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    add-int/lit8 v13, v13, 0x1

    .line 71
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 84
    .end local v16    # "downThread":Lcn/com/picvision/util/DownLoadThread;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/util/ThreadDownload;->manager:Lcn/com/picvision/util/ThreadManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcn/com/picvision/util/ThreadManager;->shutdown()V

    goto/16 :goto_2
.end method
