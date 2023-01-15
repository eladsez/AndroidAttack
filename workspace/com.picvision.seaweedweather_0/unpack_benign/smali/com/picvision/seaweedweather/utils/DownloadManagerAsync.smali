.class public Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
.super Ljava/lang/Object;
.source "DownloadManagerAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;,
        Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;,
        Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;,
        Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;,
        Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;
    }
.end annotation


# static fields
.field private static final FILE_DOWNLOAD_COMPLETE:I = 0x2

.field private static final FILE_DOWNLOAD_CONNECT:I = 0x0

.field private static final FILE_DOWNLOAD_ERROR:I = -0x1

.field private static final FILE_DOWNLOAD_UPDATE:I = 0x1


# instance fields
.field mHandler:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

.field private mOnDownloadCompleteListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;

.field private mOnDownloadConnectListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;

.field private mOnDownloadErrorListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;

.field private mOnDownloadUpdateListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

    invoke-direct {v0, p0, p0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;-><init>(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)V

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mHandler:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mOnDownloadConnectListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mOnDownloadUpdateListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mOnDownloadCompleteListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mOnDownloadErrorListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;I)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;III)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->sendMessage(III)V

    return-void
.end method

.method static synthetic access$6(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mHandler:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

    invoke-virtual {v1, p1}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mHandler:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

    invoke-virtual {v1, v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method

.method private sendMessage(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mHandler:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mHandler:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

    invoke-virtual {v1, v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mHandler:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

    invoke-virtual {v1, p1, p2}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mHandler:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;

    invoke-virtual {v1, v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method


# virtual methods
.method public download(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;

    invoke-direct {v1, p0, p1}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;-><init>(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;-><init>(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method public setOnDownloadCompleteListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mOnDownloadCompleteListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;

    .line 207
    return-void
.end method

.method public setOnDownloadConnectListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mOnDownloadConnectListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;

    .line 183
    return-void
.end method

.method public setOnDownloadErrorListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mOnDownloadErrorListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;

    .line 216
    return-void
.end method

.method public setOnDownloadUpdateListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->mOnDownloadUpdateListener:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;

    .line 192
    return-void
.end method
