.class Lcom/ozdroid/kaoshitong/Home$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Home;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Home;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Home;->access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Home;->access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    if-nez p2, :cond_1

    .line 135
    new-instance v0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;-><init>(Lcom/ozdroid/kaoshitong/Home$MenuAdapter;)V

    .line 136
    .local v0, "holder":Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    const v2, 0x7f080020

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 138
    const v2, 0x7f080003

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 139
    const v2, 0x7f080021

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;->subTitle:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ozdroid/kaoshitong/Home$MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    .line 148
    .local v1, "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    if-eqz v1, :cond_0

    .line 149
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->getIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 150
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;->subTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    return-object p2

    .line 143
    .end local v0    # "holder":Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;
    .end local v1    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ozdroid/kaoshitong/Home$MenuAdapter$ViewHolder;
    goto :goto_0
.end method
