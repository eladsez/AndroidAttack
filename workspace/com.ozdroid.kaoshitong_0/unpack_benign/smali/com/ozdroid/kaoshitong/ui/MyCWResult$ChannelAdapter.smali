.class Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyCWResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/ui/MyCWResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/ui/MyCWResult;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/ui/MyCWResult;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;->this$0:Lcom/ozdroid/kaoshitong/ui/MyCWResult;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;->this$0:Lcom/ozdroid/kaoshitong/ui/MyCWResult;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/ui/MyCWResult;->access$0(Lcom/ozdroid/kaoshitong/ui/MyCWResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;->this$0:Lcom/ozdroid/kaoshitong/ui/MyCWResult;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/ui/MyCWResult;->access$0(Lcom/ozdroid/kaoshitong/ui/MyCWResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    if-nez p2, :cond_1

    .line 107
    new-instance v0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;-><init>(Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;)V

    .line 108
    .local v0, "holder":Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;->this$0:Lcom/ozdroid/kaoshitong/ui/MyCWResult;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/ui/MyCWResult;->access$1(Lcom/ozdroid/kaoshitong/ui/MyCWResult;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 109
    const v2, 0x7f08001f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    .line 118
    .local v1, "item":Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;
    if-eqz v1, :cond_0

    .line 119
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->isRight()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    :cond_0
    return-object p2

    .line 113
    .end local v0    # "holder":Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;
    .end local v1    # "item":Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;
    .restart local p0    # "this":Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ozdroid/kaoshitong/ui/MyCWResult$ChannelAdapter$ViewHolder;
    goto :goto_0
.end method
