.class public Lcom/picvision/seaweedweather/views/RealAdapter;
.super Landroid/widget/BaseAdapter;
.source "RealAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private weather:[Lcom/picvision/seaweedweather/model/Weather;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/picvision/seaweedweather/model/Weather;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "weather"    # [Lcom/picvision/seaweedweather/model/Weather;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    iget-object v10, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v10, v10, p1

    if-nez v10, :cond_0

    .line 50
    iget-object v10, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030007

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 51
    .local v6, "v":Landroid/view/View;
    const v10, 0x7f090022

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 52
    .local v5, "text":Landroid/widget/TextView;
    const-string v10, "\u60a8\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u57ce\u5e02\u4fe1\u606f,\u8bf7\u5728\"\u57ce\u5e02\u7ba1\u7406\"\u91cc\u8fdb\u884c\u8bbe\u7f6e\u3002"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v7, v6

    .line 76
    .end local v5    # "text":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    .local v7, "v":Landroid/view/View;
    :goto_0
    return-object v7

    .line 56
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    iget-object v10, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030006

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 57
    .restart local v6    # "v":Landroid/view/View;
    const v10, 0x7f09001d

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, "city":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather;->getCityName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    const v10, 0x7f09001c

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 61
    .local v1, "day2":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/picvision/seaweedweather/model/Weather;->getRealPicId()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    iget-object v13, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 62
    .local v4, "resID":I
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 63
    iget-object v10, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->context:Landroid/content/Context;

    const-string v11, "resID"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "resID"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    const v10, 0x7f09001e

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, "publishTime":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/picvision/seaweedweather/model/Weather;->getRealTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v10, -0x1

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    const v10, 0x7f09001f

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 68
    .local v8, "weatherInfo":Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/picvision/seaweedweather/model/Weather;->getRealText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/picvision/seaweedweather/model/Weather;->getRealTemperature()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    const v10, 0x7f090020

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 71
    .local v9, "windInfo":Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/picvision/seaweedweather/model/Weather;->getRealDirection()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/picvision/seaweedweather/model/Weather;->getRealForce()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    const v10, 0x7f090021

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "humidityInfo":Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u6e7f\u5ea6"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/picvision/seaweedweather/model/Weather;->getRealHumidity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u7d2b\u5916\u7ebf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/picvision/seaweedweather/views/RealAdapter;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/picvision/seaweedweather/model/Weather;->getExplanations()[Lcom/picvision/seaweedweather/model/Weather$Explanation;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/picvision/seaweedweather/model/Weather$Explanation;->getLevel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v7, v6

    .line 76
    .end local v6    # "v":Landroid/view/View;
    .restart local v7    # "v":Landroid/view/View;
    goto/16 :goto_0
.end method
