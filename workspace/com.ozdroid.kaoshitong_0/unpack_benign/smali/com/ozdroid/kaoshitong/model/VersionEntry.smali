.class public Lcom/ozdroid/kaoshitong/model/VersionEntry;
.super Ljava/lang/Object;
.source "VersionEntry.java"


# static fields
.field private static instance:Lcom/ozdroid/kaoshitong/model/VersionEntry;


# instance fields
.field private handler:Landroid/os/Handler;

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/VersionItemEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->handler:Landroid/os/Handler;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ozdroid/kaoshitong/model/VersionEntry;)Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->lists:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/ozdroid/kaoshitong/model/VersionEntry;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->instance:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/ozdroid/kaoshitong/model/VersionEntry;

    invoke-direct {v0}, Lcom/ozdroid/kaoshitong/model/VersionEntry;-><init>()V

    sput-object v0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->instance:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    .line 27
    :cond_0
    sget-object v0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->instance:Lcom/ozdroid/kaoshitong/model/VersionEntry;

    return-object v0
.end method


# virtual methods
.method public getDataList(Lcom/ozdroid/kaoshitong/model/IGetDataListener;Landroid/content/Context;)V
    .locals 2
    .param p1, "listener"    # Lcom/ozdroid/kaoshitong/model/IGetDataListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->lists:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ozdroid/kaoshitong/model/VersionEntry$1;-><init>(Lcom/ozdroid/kaoshitong/model/VersionEntry;Landroid/content/Context;Lcom/ozdroid/kaoshitong/model/IGetDataListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method

.method public getLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/VersionItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->lists:Ljava/util/List;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->lists:Ljava/util/List;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry;->lists:Ljava/util/List;

    return-object v0
.end method
