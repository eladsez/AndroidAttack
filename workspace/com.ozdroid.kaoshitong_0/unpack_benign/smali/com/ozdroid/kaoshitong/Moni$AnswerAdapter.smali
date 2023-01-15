.class Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;
.super Landroid/widget/BaseAdapter;
.source "Moni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/Moni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Moni;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;)Lcom/ozdroid/kaoshitong/Moni;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v0, v0, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getSelect()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v0, v0, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getSelect()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 336
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f020036

    .line 343
    if-nez p2, :cond_1

    .line 344
    new-instance v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;-><init>(Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;)V

    .line 345
    .local v0, "holder":Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 346
    const v2, 0x7f08001e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    .line 347
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 353
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    .local v1, "item":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 356
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni;->access$0(Lcom/ozdroid/kaoshitong/Moni;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 360
    add-int/lit8 v3, p1, 0x1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni;->access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget v4, v4, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getAnswer()I

    move-result v2

    if-ne v3, v2, :cond_2

    .line 361
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 389
    .end local p0    # "this":Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;
    :cond_0
    :goto_1
    return-object p2

    .line 350
    .end local v0    # "holder":Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;
    .end local v1    # "item":Ljava/lang/String;
    .restart local p0    # "this":Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;
    goto :goto_0

    .line 363
    .restart local v1    # "item":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni;->access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget v3, v3, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->isChoiceed()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/Moni;->access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget v4, v4, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;
    check-cast p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getChoice()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 364
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020045

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 366
    :cond_3
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 371
    .restart local p0    # "this":Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;
    :cond_4
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni;->access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget v3, v3, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->isChoiceed()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v3, p1, 0x1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni;->access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget v4, v4, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getChoice()I

    move-result v2

    if-ne v3, v2, :cond_5

    .line 372
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020037

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 377
    :goto_2
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 378
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    new-instance v3, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$1;

    invoke-direct {v3, p0}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$1;-><init>(Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 374
    :cond_5
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method
