.class Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShunXu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/ShunXu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/ShunXu;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/ShunXu;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)Lcom/ozdroid/kaoshitong/ShunXu;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    iget-object v0, v0, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

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
    .line 197
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    iget-object v0, v0, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

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
    .line 202
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 209
    if-nez p2, :cond_1

    .line 210
    new-instance v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;-><init>(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)V

    .line 211
    .local v0, "holder":Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 212
    const v2, 0x7f08001e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    .line 213
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, "item":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 222
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/ShunXu;->access$0(Lcom/ozdroid/kaoshitong/ShunXu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    iget-object v3, v3, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 226
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 238
    :goto_1
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 239
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    new-instance v3, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;

    invoke-direct {v3, p0}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$1;-><init>(Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_0
    return-object p2

    .line 216
    .end local v0    # "holder":Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;
    goto :goto_0

    .line 228
    .restart local v1    # "item":Ljava/lang/String;
    :cond_2
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 231
    :cond_3
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    iget-object v3, v3, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 232
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020033

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 234
    :cond_4
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter$ViewHolder;->title:Landroid/widget/Button;

    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method
