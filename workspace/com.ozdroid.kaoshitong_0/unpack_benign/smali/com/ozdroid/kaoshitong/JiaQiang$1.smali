.class Lcom/ozdroid/kaoshitong/JiaQiang$1;
.super Ljava/lang/Object;
.source "JiaQiang.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/JiaQiang;->showRember()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/JiaQiang;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/JiaQiang;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$1;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick(Z)V
    .locals 2
    .param p1, "checkbox"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang$1;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    .line 145
    return-void
.end method

.method public OnSubmitClick(Z)V
    .locals 2
    .param p1, "checkbox"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$1;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getJiaQiangLastIndex()I

    move-result v0

    .line 150
    .local v0, "index":I
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$1;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    iput v0, v1, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    .line 151
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$1;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->access$3(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    .line 152
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$1;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->access$4(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    .line 153
    return-void
.end method
