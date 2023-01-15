.class public Lcom/picvision/seaweedweather/views/RecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;
    }
.end annotation


# static fields
.field private static picurl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private img:[Landroid/widget/ImageView;

.field private inflater:Landroid/view/LayoutInflater;

.field private j:I

.field private k:I

.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;"
        }
    .end annotation
.end field

.field private nowPosition:I

.field private parent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->picurl:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/picvision/seaweedweather/model/Recommend;>;"
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    .line 48
    iput v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->k:I

    .line 49
    iput v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->nowPosition:I

    .line 54
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->lists:Ljava/util/ArrayList;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 57
    sget-object v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->picurl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->picurl:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/picvision/seaweedweather/views/RecommendAdapter;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->nowPosition:I

    return v0
.end method

.method static synthetic access$2(Lcom/picvision/seaweedweather/views/RecommendAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->lists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->lists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 77
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/picvision/seaweedweather/views/RecommendAdapter;->nowPosition:I

    .line 78
    const-string v17, "test"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "getview("

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p2, :cond_0

    .line 80
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/views/RecommendAdapter;->convertView:Landroid/view/View;

    .line 81
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/views/RecommendAdapter;->parent:Landroid/view/ViewGroup;

    move-object/from16 v5, p2

    .line 169
    .end local p2    # "convertView":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .local v5, "convertView":Landroid/view/View;
    :goto_0
    return-object v5

    .line 84
    .end local v5    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->lists:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Lcom/picvision/seaweedweather/model/Recommend;

    invoke-virtual/range {p2 .. p2}, Lcom/picvision/seaweedweather/model/Recommend;->getRName()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030008

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    .restart local p2    # "convertView":Landroid/view/View;
    const v17, 0x7f090024

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 87
    .local v12, "r1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->lists:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "parent":Landroid/view/ViewGroup;
    check-cast p3, Lcom/picvision/seaweedweather/model/Recommend;

    invoke-virtual/range {p3 .. p3}, Lcom/picvision/seaweedweather/model/Recommend;->getRName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v17, 0x7f090025

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 89
    .local v13, "r2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->lists:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/picvision/seaweedweather/model/Recommend;

    invoke-virtual/range {p3 .. p3}, Lcom/picvision/seaweedweather/model/Recommend;->getRName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v17, 0x7f090026

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 91
    .local v14, "r3":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->lists:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/picvision/seaweedweather/model/Recommend;

    invoke-virtual/range {p3 .. p3}, Lcom/picvision/seaweedweather/model/Recommend;->getRName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v17, -0x777778

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const v17, -0x777778

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    const v17, -0x777778

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    if-nez p1, :cond_1

    .line 97
    const/16 v17, -0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->lists:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/picvision/seaweedweather/model/Recommend;

    invoke-virtual/range {p3 .. p3}, Lcom/picvision/seaweedweather/model/Recommend;->getPics()Ljava/util/List;

    move-result-object v8

    .line 101
    .local v8, "next":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend$RPic;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/picvision/seaweedweather/views/RecommendAdapter;->k:I

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->k:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    .line 103
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->k:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 159
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    .line 162
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 163
    const/16 v17, -0x1

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    :cond_2
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 167
    const/16 v17, -0x1

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    move-object/from16 v5, p2

    .line 169
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v5    # "convertView":Landroid/view/View;
    goto/16 :goto_0

    .line 104
    .end local v5    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v17, v0

    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/picvision/seaweedweather/model/Recommend$RPic;

    invoke-virtual/range {p3 .. p3}, Lcom/picvision/seaweedweather/model/Recommend$RPic;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 105
    .local v16, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v17, v0

    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/picvision/seaweedweather/model/Recommend$RPic;

    invoke-virtual/range {p3 .. p3}, Lcom/picvision/seaweedweather/model/Recommend$RPic;->getText()Ljava/lang/String;

    move-result-object v15

    .line 106
    .local v15, "text":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "sdcard/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "http://211.95.79.112/"

    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "imgurl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v18, v0

    const v19, 0x7f090028

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    aput-object p3, v17, v18

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x407e000000000000L    # 480.0

    div-double v10, v17, v19

    .line 109
    .local v10, "per":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v10

    invoke-static {v0, v1, v2}, Lcom/picvision/seaweedweather/utils/Util;->setwHeight(Landroid/content/Context;D)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4074000000000000L    # 320.0

    div-double v19, v19, v21

    invoke-static/range {v18 .. v20}, Lcom/picvision/seaweedweather/utils/Util;->setwWidth(Landroid/content/Context;D)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 115
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object v1, v9

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    invoke-static {v6, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 120
    .local v4, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    .end local v4    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    sget-object v18, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    new-instance v18, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;-><init>(Lcom/picvision/seaweedweather/views/RecommendAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    goto/16 :goto_1

    .line 124
    :cond_6
    sget-object v17, Lcom/picvision/seaweedweather/views/RecommendAdapter;->picurl:Ljava/util/List;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 125
    const-string v17, "test"

    const-string v18, "download()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v17, Lcom/picvision/seaweedweather/views/RecommendAdapter;->picurl:Ljava/util/List;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v17, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;-><init>(Lcom/picvision/seaweedweather/views/RecommendAdapter;Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;)V

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->img:[Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;->j:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method
