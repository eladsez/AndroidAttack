.class public Lcom/ozdroid/kaoshitong/model/VersionItemEntry;
.super Ljava/lang/Object;
.source "VersionItemEntry.java"


# static fields
.field public static final DB_PATH:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.ozdroid.kaoshitong"


# instance fields
.field private dbcode:Ljava/lang/String;

.field private detail:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.ozdroid.kaoshitong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->DB_PATH:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "dbcode"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->name:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->detail:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->dbcode:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/model/VersionItemEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->dbcode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Download(Lcom/ozdroid/kaoshitong/model/IDownloadListener;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Lcom/ozdroid/kaoshitong/model/IDownloadListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;-><init>(Lcom/ozdroid/kaoshitong/model/VersionItemEntry;Landroid/content/Context;Landroid/os/Handler;Lcom/ozdroid/kaoshitong/model/IDownloadListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->detail:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->name:Ljava/lang/String;

    .line 29
    return-void
.end method
