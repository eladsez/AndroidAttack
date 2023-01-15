.class Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$2;
.super Ljava/lang/Object;
.source "VersionItemEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;

.field private final synthetic val$listener:Lcom/ozdroid/kaoshitong/model/IDownloadListener;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;Lcom/ozdroid/kaoshitong/model/IDownloadListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$2;->this$1:Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1;

    iput-object p2, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$2;->val$listener:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionItemEntry$1$2;->val$listener:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    invoke-interface {v0}, Lcom/ozdroid/kaoshitong/model/IDownloadListener;->endUpdate()V

    .line 111
    return-void
.end method
