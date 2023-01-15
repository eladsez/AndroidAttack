.class Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$1;
.super Ljava/lang/Object;
.source "Moni.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
    .local v0, "index":I
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;)Lcom/ozdroid/kaoshitong/Moni;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Moni;->access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;)Lcom/ozdroid/kaoshitong/Moni;

    move-result-object v2

    iget v2, v2, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->setChoice(I)V

    .line 383
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;)Lcom/ozdroid/kaoshitong/Moni;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Moni;->access$2(Lcom/ozdroid/kaoshitong/Moni;)Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->notifyDataSetChanged()V

    .line 384
    return-void
.end method
