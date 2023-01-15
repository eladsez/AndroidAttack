.class public Lcom/picvision/seaweedweather/views/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # [Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iget-object v9, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03000e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 53
    .local v8, "v":Landroid/view/View;
    const v9, 0x7f09003c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, "day":Landroid/widget/ImageView;
    const v9, 0x7f09003d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 56
    .local v5, "tv11":Landroid/widget/TextView;
    const v9, 0x7f09003f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 57
    .local v6, "tv2":Landroid/widget/TextView;
    const v9, 0x7f090040

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 58
    .local v7, "tv22":Landroid/widget/TextView;
    const v9, 0x7f090039

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 59
    .local v4, "tv":Landroid/widget/TextView;
    const v9, 0x7f09003e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .local v1, "img_night":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v9, v9, p1

    if-nez v9, :cond_3

    .line 62
    if-nez p1, :cond_1

    .line 63
    const-string v9, "\u4eca\u5929"

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    :cond_0
    :goto_0
    const/high16 v9, 0x41c80000    # 25.0f

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    :goto_1
    return-object v8

    .line 65
    :cond_1
    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    .line 66
    const-string v9, "\u660e\u5929"

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 68
    :cond_2
    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    .line 69
    const-string v9, "\u540e\u5929"

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v9, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getDayPicId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 77
    iget-object v9, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getDayPicId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    iget-object v12, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, "res":I
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u767d\u5929 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getDayText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getDayTemperature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getDayDirection()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getDayForce()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    const v9, 0x7f09003a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const v9, 0x7f09003b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .end local v3    # "res":I
    :cond_4
    iget-object v9, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v9, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getNightPicId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    iget-object v12, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, "night":I
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u591c\u95f4 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getNightText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getNightTemperature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getNightDirection()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/picvision/seaweedweather/views/ImageAdapter;->info:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->getNightForce()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    if-nez p1, :cond_6

    .line 104
    const-string v9, "\u4eca\u5929"

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    :cond_5
    :goto_2
    const/high16 v9, 0x41c80000    # 25.0f

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 106
    :cond_6
    const/4 v9, 0x1

    if-ne p1, v9, :cond_7

    .line 107
    const-string v9, "\u660e\u5929"

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 109
    :cond_7
    const/4 v9, 0x2

    if-ne p1, v9, :cond_5

    .line 110
    const-string v9, "\u540e\u5929"

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public notifyDataSetChanged(I)V
    .locals 0
    .param p1, "cityid"    # I

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method
