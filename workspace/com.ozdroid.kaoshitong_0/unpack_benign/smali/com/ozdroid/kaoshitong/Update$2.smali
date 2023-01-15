.class Lcom/ozdroid/kaoshitong/Update$2;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/model/IDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Update;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Update;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/Update$2;)Lcom/ozdroid/kaoshitong/Update;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    return-object v0
.end method


# virtual methods
.method public endUpdate()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$4(Lcom/ozdroid/kaoshitong/Update;)V

    .line 250
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$2(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->notifyDataSetChanged()V

    .line 253
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$3(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    move-result-object v0

    const-string v1, "\u6210\u529f\u52a0\u8f7d\u6570\u636e."

    new-instance v2, Lcom/ozdroid/kaoshitong/Update$2$1;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/Update$2$1;-><init>(Lcom/ozdroid/kaoshitong/Update$2;)V

    .line 269
    const/4 v3, 0x0

    .line 253
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    .line 270
    return-void
.end method

.method public errorUpdate()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$2(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->notifyDataSetChanged()V

    .line 275
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$3(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u6570\u636e\u5931\u8d25."

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    .line 276
    return-void
.end method

.method public startUpdate()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$2(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->notifyDataSetChanged()V

    .line 245
    return-void
.end method

.method public stopUpdate()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$2(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->notifyDataSetChanged()V

    .line 281
    return-void
.end method

.method public updateProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$2(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->notifyDataSetChanged()V

    .line 240
    return-void
.end method
