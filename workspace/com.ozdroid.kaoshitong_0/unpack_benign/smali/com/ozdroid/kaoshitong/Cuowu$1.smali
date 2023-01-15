.class Lcom/ozdroid/kaoshitong/Cuowu$1;
.super Ljava/lang/Object;
.source "Cuowu.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Cuowu;->showRember()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Cuowu;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Cuowu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Cuowu$1;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick(Z)V
    .locals 2
    .param p1, "checkbox"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu$1;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    .line 144
    return-void
.end method

.method public OnSubmitClick(Z)V
    .locals 2
    .param p1, "checkbox"    # Z

    .prologue
    .line 148
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu$1;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getCuoWuLastIndex()I

    move-result v0

    .line 149
    .local v0, "index":I
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu$1;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    iput v0, v1, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    .line 150
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu$1;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Cuowu;->access$3(Lcom/ozdroid/kaoshitong/Cuowu;)V

    .line 151
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu$1;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Cuowu;->access$4(Lcom/ozdroid/kaoshitong/Cuowu;)V

    .line 152
    return-void
.end method
