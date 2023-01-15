.class public Lcom/ozdroid/kaoshitong/SuiJi;
.super Lcom/ozdroid/kaoshitong/Base;
.source "SuiJi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;
    }
.end annotation


# instance fields
.field private isShowAnswer:Z

.field private mAnswerAdapter:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

.field private mAnswerListView:Landroid/widget/ListView;

.field private mBtnJiaQiang:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mBtnRightAnswer:Landroid/widget/Button;

.field private mBtnSwithText:Landroid/widget/Button;

.field private mSinpper:Lcom/ozdroid/kaoshitong/ui/MySinpper;

.field private mTestText:Landroid/widget/TextView;

.field private maxIndex:I

.field private minIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Base;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/SuiJi;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->isShowAnswer:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ozdroid/kaoshitong/SuiJi;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->minIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/ozdroid/kaoshitong/SuiJi;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->maxIndex:I

    return v0
.end method

.method static synthetic access$3(Lcom/ozdroid/kaoshitong/SuiJi;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/SuiJi;->switchTest()V

    return-void
.end method

.method static synthetic access$4(Lcom/ozdroid/kaoshitong/SuiJi;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/ozdroid/kaoshitong/SuiJi;->minIndex:I

    return-void
.end method

.method static synthetic access$5(Lcom/ozdroid/kaoshitong/SuiJi;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/ozdroid/kaoshitong/SuiJi;->maxIndex:I

    return-void
.end method

.method private switchTest()V
    .locals 2

    .prologue
    .line 159
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 160
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mTestText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->bitmap:Landroid/graphics/Bitmap;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/SuiJi;->setImage()V

    .line 167
    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f03000e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnNext:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 111
    iget v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->minIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/SuiJi;->maxIndex:I

    invoke-static {v0, v1}, Lcom/ozdroid/kaoshitong/helper/Utils;->getRandom(II)I

    move-result v0

    iput v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentIndex:I

    .line 112
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/SuiJi;->switchTest()V

    .line 152
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onClick(Landroid/view/View;)V

    .line 153
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnSwithText:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 114
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->open()V

    .line 115
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mSinpper:Lcom/ozdroid/kaoshitong/ui/MySinpper;

    const-string v1, "\u9009\u62e9\u968f\u673a\u7ec3\u4e60\u7684\u5355\u5143"

    new-instance v2, Lcom/ozdroid/kaoshitong/SuiJi$1;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/SuiJi$1;-><init>(Lcom/ozdroid/kaoshitong/SuiJi;)V

    .line 135
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getAll()Ljava/util/List;

    move-result-object v3

    .line 115
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/MySinpper;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/SinpperListener;Ljava/util/List;)V

    .line 136
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->close()V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnRightAnswer:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 138
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->isShowAnswer:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->isShowAnswer:Z

    .line 139
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->isShowAnswer:Z

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnRightAnswer:Landroid/widget/Button;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 144
    :goto_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 138
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnRightAnswer:Landroid/widget/Button;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnJiaQiang:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 146
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->open()V

    .line 147
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->add(I)V

    .line 148
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->close()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 48
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/SuiJi;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "min"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->minIndex:I

    .line 50
    const-string v2, "max"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->maxIndex:I

    .line 52
    iget v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->minIndex:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->maxIndex:I

    if-nez v2, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/SuiJi;->finish()V

    .line 56
    :cond_1
    iget v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->minIndex:I

    iget v3, p0, Lcom/ozdroid/kaoshitong/SuiJi;->maxIndex:I

    invoke-static {v2, v3}, Lcom/ozdroid/kaoshitong/helper/Utils;->getRandom(II)I

    move-result v2

    iput v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentIndex:I

    .line 58
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mTestText:Landroid/widget/TextView;

    .line 59
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v2

    iget v3, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentIndex:I

    invoke-virtual {v2, v3}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 60
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mTestText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/SuiJi;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mAnswerListView:Landroid/widget/ListView;

    .line 63
    new-instance v2, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;-><init>(Lcom/ozdroid/kaoshitong/SuiJi;)V

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    .line 64
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mAnswerListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/SuiJi$AnswerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    const v2, 0x7f080012

    invoke-virtual {p0, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnNext:Landroid/widget/Button;

    .line 67
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v2, 0x7f080011

    invoke-virtual {p0, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 70
    .local v1, "mBtnPrev":Landroid/widget/Button;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    const v2, 0x7f08000e

    invoke-virtual {p0, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnSwithText:Landroid/widget/Button;

    .line 73
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnSwithText:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v2, 0x7f08000f

    invoke-virtual {p0, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnRightAnswer:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnRightAnswer:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v2, 0x7f080036

    invoke-virtual {p0, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnJiaQiang:Landroid/widget/Button;

    .line 79
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mBtnJiaQiang:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mTestImageView:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/SuiJi;->setImage()V

    .line 84
    new-instance v2, Lcom/ozdroid/kaoshitong/ui/MySinpper;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/ui/MySinpper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi;->mSinpper:Lcom/ozdroid/kaoshitong/ui/MySinpper;

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 90
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 95
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 96
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onPause()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 102
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onResume()V

    .line 103
    return-void
.end method
