.class Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;
.super Ljava/lang/Object;
.source "ShunXu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 243
    .local v0, "index":I
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    iget-object v1, v1, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    iget v1, v1, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v2

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/ShunXu;->access$1(Lcom/ozdroid/kaoshitong/ShunXu;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 244
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu;->access$2(Lcom/ozdroid/kaoshitong/ShunXu;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    iget v2, v1, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    .line 246
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu;->access$3(Lcom/ozdroid/kaoshitong/ShunXu;)V

    .line 247
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu;->access$4(Lcom/ozdroid/kaoshitong/ShunXu;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    iget-object v1, v1, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->open()V

    .line 250
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v2

    iget v2, v2, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    invoke-virtual {v1, v2}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->add(I)V

    .line 251
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v3

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "---->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->close()V

    goto :goto_0
.end method
