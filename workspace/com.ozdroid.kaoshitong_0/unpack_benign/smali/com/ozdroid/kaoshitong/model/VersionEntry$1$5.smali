.class Lcom/ozdroid/kaoshitong/model/VersionEntry$1$5;
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
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$5;->this$1:Lcom/ozdroid/kaoshitong/model/VersionEntry$1;

    iput-object p2, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$5;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/VersionEntry$1$5;->val$listener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    invoke-interface {v0}, Lcom/ozdroid/kaoshitong/model/IGetDataListener;->errorUpdate()V

    .line 99
    return-void
.end method
