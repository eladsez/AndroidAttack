.class Lcom/ozdroid/kaoshitong/ShunXu$1;
.super Ljava/lang/Object;
.source "ShunXu.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/ShunXu;->showRember()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/ShunXu;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/ShunXu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ShunXu$1;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick(Z)V
    .locals 2
    .param p1, "checkbox"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu$1;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    .line 113
    return-void
.end method

.method public OnSubmitClick(Z)V
    .locals 2
    .param p1, "checkbox"    # Z

    .prologue
    .line 117
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$1;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getShunXuLastIndex()I

    move-result v0

    .line 118
    .local v0, "index":I
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$1;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    iput v0, v1, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    .line 119
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$1;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu;->access$3(Lcom/ozdroid/kaoshitong/ShunXu;)V

    .line 120
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$1;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu;->access$4(Lcom/ozdroid/kaoshitong/ShunXu;)V

    .line 121
    return-void
.end method
