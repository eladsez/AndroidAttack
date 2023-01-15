.class Lcom/ozdroid/kaoshitong/model/VersionEntry$1$4;
.super Ljava/lang/Object;
.source "VersionEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/model/VersionEntry$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ozdroid/kaoshitong/model/VersionEntry$1;

.field private final synthetic val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/model/VersionEntry$1;Lcom/ozdroid/kaoshitong/model/IGetDataListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$4;->this$1:Lcom/ozdroid/kaoshitong/model/VersionEntry$1;

    iput-object p2, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$4;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$4;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ozdroid/kaoshitong/model/IGetDataListener;->getDataList(Z)V

    .line 90
    return-void
.end method
