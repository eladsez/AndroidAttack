.class Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;
.super Ljava/lang/Object;
.source "JiaQiang.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 288
    .local v0, "index":I
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;)Lcom/ozdroid/kaoshitong/JiaQiang;

    move-result-object v1

    iget-object v1, v1, Lcom/ozdroid/kaoshitong/JiaQiang;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;)Lcom/ozdroid/kaoshitong/JiaQiang;

    move-result-object v1

    iget v1, v1, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;)Lcom/ozdroid/kaoshitong/JiaQiang;

    move-result-object v2

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/JiaQiang;->access$1(Lcom/ozdroid/kaoshitong/JiaQiang;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    .line 289
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;)Lcom/ozdroid/kaoshitong/JiaQiang;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->access$2(Lcom/ozdroid/kaoshitong/JiaQiang;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;)Lcom/ozdroid/kaoshitong/JiaQiang;

    move-result-object v1

    iget v2, v1, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    .line 291
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;)Lcom/ozdroid/kaoshitong/JiaQiang;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->access$3(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    .line 292
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->access$0(Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;)Lcom/ozdroid/kaoshitong/JiaQiang;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->access$4(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    .line 294
    :cond_0
    return-void
.end method
