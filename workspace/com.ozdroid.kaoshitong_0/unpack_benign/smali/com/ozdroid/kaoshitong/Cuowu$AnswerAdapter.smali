.class Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;
.super Landroid/widget/BaseAdapter;
.source "Cuowu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/Cuowu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Cuowu;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Cuowu;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/Cuowu;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    iget-object v0, v0, Lcom/ozdroid/kaoshitong/Cuowu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

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
    .line 240
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    iget-object v0, v0, Lcom/ozdroid/kaoshitong/Cuowu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

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
    .line 245
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 252
    if-nez p2, :cond_1

    .line 253
    new-instance v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;-><init>(Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;)V

    .line 254
    .local v0, "holder":Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 255
    const v2, 0x7f08001e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    .line 256
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 262
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    .local v1, "item":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 265
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Cuowu;->access$0(Lcom/ozdroid/kaoshitong/Cuowu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    iget-object v3, v3, Lcom/ozdroid/kaoshitong/Cuowu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 269
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 281
    :goto_1
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 282
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    new-instance v3, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$1;

    invoke-direct {v3, p0}, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$1;-><init>(Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_0
    return-object p2

    .line 259
    .end local v0    # "holder":Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;
    goto :goto_0

    .line 271
    .restart local v1    # "item":Ljava/lang/String;
    :cond_2
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 274
    :cond_3
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    iget-object v3, v3, Lcom/ozdroid/kaoshitong/Cuowu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 275
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020033

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 277
    :cond_4
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method
