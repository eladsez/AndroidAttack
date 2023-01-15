.class Lcom/ozdroid/kaoshitong/Update$VersionAdapter;
.super Landroid/widget/BaseAdapter;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VersionAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Update;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Update;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)Lcom/ozdroid/kaoshitong/Update;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->this$0:Lcom/ozdroid/kaoshitong/Update;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->getInstance()Lcom/ozdroid/kaoshitong/model/VersionEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->getLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 113
    invoke-static {}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->getInstance()Lcom/ozdroid/kaoshitong/model/VersionEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->getLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 118
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f020060

    const/4 v4, 0x0

    .line 125
    if-nez p2, :cond_0

    .line 126
    new-instance v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;-><init>(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)V

    .line 127
    .local v0, "holder":Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000a

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 128
    const v2, 0x7f080020

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 129
    const v2, 0x7f080023

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 130
    const v2, 0x7f080025

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    .line 131
    const v2, 0x7f080024

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    .line 132
    const v2, 0x7f080026

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 133
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    .line 141
    .local v1, "item":Lcom/ozdroid/kaoshitong/model/VersionItemEntry;
    if-eqz v1, :cond_6

    .line 144
    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5c0f\u8f66"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :goto_1
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->getDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getDataType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    const v3, 0x7f02004e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 170
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :goto_2
    return-object p2

    .line 136
    .end local v0    # "holder":Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;
    .end local v1    # "item":Lcom/ozdroid/kaoshitong/model/VersionItemEntry;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;
    goto :goto_0

    .line 146
    .restart local v1    # "item":Lcom/ozdroid/kaoshitong/model/VersionItemEntry;
    :cond_1
    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8d27\u8f66"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f020050

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5ba2\u8f66"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6469\u6258\u8f66"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 153
    :cond_4
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 174
    :cond_5
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    const v3, 0x7f020039

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 175
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    const-string v3, "\u9009\u62e9"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_6
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 180
    iget-object v2, v0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->update:Landroid/widget/Button;

    new-instance v3, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$1;

    invoke-direct {v3, p0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$1;-><init>(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
