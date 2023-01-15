.class public Lcom/ozdroid/kaoshitong/ShunXu;
.super Lcom/ozdroid/kaoshitong/Base;
.source "ShunXu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;
    }
.end annotation


# instance fields
.field private isShowAnswer:Z

.field private mAnswerAdapter:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

.field private mAnswerListView:Landroid/widget/ListView;

.field private mBtnJiaQiang:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mBtnPrev:Landroid/widget/Button;

.field private mBtnRightAnswer:Landroid/widget/Button;

.field private mBtnSwithText:Landroid/widget/Button;

.field private mSwithTestDlg:Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

.field private mTestText:Landroid/widget/TextView;

.field private maxIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Base;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/ShunXu;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->isShowAnswer:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ozdroid/kaoshitong/ShunXu;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->maxIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/ozdroid/kaoshitong/ShunXu;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ozdroid/kaoshitong/ShunXu;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->switchTest()V

    return-void
.end method

.method static synthetic access$4(Lcom/ozdroid/kaoshitong/ShunXu;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->showBtn()V

    return-void
.end method

.method private showBtn()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 270
    iget v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->maxIndex:I

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    :goto_0
    iget v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    :goto_1
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private showRember()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    const-string v1, "\u662f\u5426\u7ee7\u7eed\u4e0a\u4e00\u6b21\u7684\u7ec3\u4e60?"

    new-instance v2, Lcom/ozdroid/kaoshitong/ShunXu$1;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/ShunXu$1;-><init>(Lcom/ozdroid/kaoshitong/ShunXu;)V

    .line 123
    const/4 v3, 0x1

    .line 108
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    .line 124
    return-void
.end method

.method private switchTest()V
    .locals 2

    .prologue
    .line 175
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 176
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mTestText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->notifyDataSetChanged()V

    .line 178
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->bitmap:Landroid/graphics/Bitmap;

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->setImage()V

    .line 183
    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f03000e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 131
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnNext:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 132
    iget v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->maxIndex:I

    if-eq v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    .line 135
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->switchTest()V

    .line 136
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->showBtn()V

    .line 168
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onClick(Landroid/view/View;)V

    .line 169
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnPrev:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 139
    iget v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    if-eq v0, v4, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    .line 142
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->switchTest()V

    .line 143
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->showBtn()V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnSwithText:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mSwithTestDlg:Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

    new-instance v1, Lcom/ozdroid/kaoshitong/ShunXu$2;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/ShunXu$2;-><init>(Lcom/ozdroid/kaoshitong/ShunXu;)V

    .line 152
    iget v2, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    iget v3, p0, Lcom/ozdroid/kaoshitong/ShunXu;->maxIndex:I

    .line 146
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->Create(Lcom/ozdroid/kaoshitong/ui/SwithTestListener;III)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnRightAnswer:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 154
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->isShowAnswer:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->isShowAnswer:Z

    .line 155
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->isShowAnswer:Z

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnRightAnswer:Landroid/widget/Button;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 160
    :goto_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    move v0, v4

    .line 154
    goto :goto_1

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnRightAnswer:Landroid/widget/Button;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnJiaQiang:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->open()V

    .line 163
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->add(I)V

    .line 164
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

    .line 165
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->close()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 44
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getCount()I

    move-result v1

    iput v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->maxIndex:I

    .line 46
    iput v3, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    .line 47
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/ShunXu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mTestText:Landroid/widget/TextView;

    .line 48
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    iget v2, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    invoke-virtual {v1, v2}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 49
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mTestText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/ShunXu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mAnswerListView:Landroid/widget/ListView;

    .line 52
    new-instance v1, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;-><init>(Lcom/ozdroid/kaoshitong/ShunXu;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    .line 53
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mAnswerListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/ShunXu$AnswerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/ShunXu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnNext:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/ShunXu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnPrev:Landroid/widget/Button;

    .line 59
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/ShunXu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnSwithText:Landroid/widget/Button;

    .line 62
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnSwithText:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/ShunXu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnRightAnswer:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnRightAnswer:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/ShunXu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnJiaQiang:Landroid/widget/Button;

    .line 68
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mBtnJiaQiang:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/ShunXu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mTestImageView:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->setImage()V

    .line 73
    new-instance v1, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->mSwithTestDlg:Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

    .line 75
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->showBtn()V

    .line 77
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getShunXuLastIndex()I

    move-result v0

    .line 78
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->maxIndex:I

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/ShunXu;->showRember()V

    .line 80
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 86
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 87
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setShunXuLastIndex(I)V

    .line 88
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 94
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setShunXuLastIndex(I)V

    .line 95
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onPause()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 100
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 101
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onResume()V

    .line 102
    return-void
.end method
