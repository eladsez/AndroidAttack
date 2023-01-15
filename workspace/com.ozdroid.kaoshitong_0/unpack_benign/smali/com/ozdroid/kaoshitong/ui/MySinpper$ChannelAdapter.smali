.class Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter;
.super Landroid/widget/BaseAdapter;
.source "MySinpper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/ui/MySinpper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/ui/MySinpper;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/ui/MySinpper;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter;->this$0:Lcom/ozdroid/kaoshitong/ui/MySinpper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter;->this$0:Lcom/ozdroid/kaoshitong/ui/MySinpper;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/ui/MySinpper;->access$0(Lcom/ozdroid/kaoshitong/ui/MySinpper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter;->this$0:Lcom/ozdroid/kaoshitong/ui/MySinpper;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/ui/MySinpper;->access$0(Lcom/ozdroid/kaoshitong/ui/MySinpper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    if-nez p2, :cond_1

    .line 105
    new-instance v0, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;-><init>(Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter;)V

    .line 106
    .local v0, "holder":Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter;->this$0:Lcom/ozdroid/kaoshitong/ui/MySinpper;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/ui/MySinpper;->access$1(Lcom/ozdroid/kaoshitong/ui/MySinpper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 107
    const v2, 0x7f08001e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;

    .line 116
    .local v1, "item":Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;
    if-eqz v1, :cond_0

    .line 117
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-object p2

    .line 111
    .end local v0    # "holder":Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;
    .end local v1    # "item":Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ozdroid/kaoshitong/ui/MySinpper$ChannelAdapter$ViewHolder;
    goto :goto_0
.end method
