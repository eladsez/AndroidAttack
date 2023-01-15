.class Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;
.super Ljava/lang/Object;
.source "SuiJi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    .local v0, "index":I
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v1

    iget-object v1, v1, Lcom/ozdroid/kaoshitong/SuiJi;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_1

    .line 228
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v2

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/SuiJi;->access$1(Lcom/ozdroid/kaoshitong/SuiJi;)I

    move-result v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v3

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/SuiJi;->access$2(Lcom/ozdroid/kaoshitong/SuiJi;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/ozdroid/kaoshitong/helper/Utils;->getRandom(II)I

    move-result v2

    iput v2, v1, Lcom/ozdroid/kaoshitong/SuiJi;->currentIndex:I

    .line 229
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi;->access$3(Lcom/ozdroid/kaoshitong/SuiJi;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v1

    iget-object v1, v1, Lcom/ozdroid/kaoshitong/SuiJi;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_0

    .line 232
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->open()V

    .line 233
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v2

    iget v2, v2, Lcom/ozdroid/kaoshitong/SuiJi;->currentIndex:I

    invoke-virtual {v1, v2}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->add(I)V

    .line 234
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

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

    .line 235
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;)Lcom/ozdroid/kaoshitong/SuiJi;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->close()V

    goto :goto_0
.end method
