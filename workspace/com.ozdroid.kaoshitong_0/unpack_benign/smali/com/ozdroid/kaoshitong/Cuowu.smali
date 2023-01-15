.class public Lcom/ozdroid/kaoshitong/Cuowu;
.super Lcom/ozdroid/kaoshitong/Base;
.source "Cuowu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;
    }
.end annotation


# instance fields
.field private isShowAnswer:Z

.field private mAnswerAdapter:Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;

.field private mAnswerListView:Landroid/widget/ListView;

.field private mBtnNext:Landroid/widget/Button;

.field private mBtnPrev:Landroid/widget/Button;

.field private mBtnRemove:Landroid/widget/Button;

.field private mBtnRightAnswer:Landroid/widget/Button;

.field private mBtnSwithText:Landroid/widget/Button;

.field private mEmpty:Landroid/view/View;

.field private mSwithTestDlg:Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

.field private mTestText:Landroid/widget/TextView;

.field private mTextIndexArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mainContent:Landroid/view/View;

.field private maxIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Base;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/Cuowu;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->isShowAnswer:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ozdroid/kaoshitong/Cuowu;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/ozdroid/kaoshitong/Cuowu;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ozdroid/kaoshitong/Cuowu;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->switchTest()V

    return-void
.end method

.method static synthetic access$4(Lcom/ozdroid/kaoshitong/Cuowu;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->showBtn()V

    return-void
.end method

.method private empty()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mainContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mEmpty:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    return-void
.end method

.method private showBtn()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 317
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    :goto_0
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    :goto_1
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private showRember()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    const-string v1, "\u662f\u5426\u7ee7\u7eed\u4e0a\u4e00\u6b21\u7684\u7ec3\u4e60?"

    new-instance v2, Lcom/ozdroid/kaoshitong/Cuowu$1;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/Cuowu$1;-><init>(Lcom/ozdroid/kaoshitong/Cuowu;)V

    .line 154
    const/4 v3, 0x1

    .line 139
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    .line 155
    return-void
.end method

.method private switchTest()V
    .locals 5

    .prologue
    .line 218
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    iget v2, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 219
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTestText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getQuestion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\u002E"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->notifyDataSetChanged()V

    .line 221
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->bitmap:Landroid/graphics/Bitmap;

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->setImage()V

    .line 226
    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f030002

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 162
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnNext:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 163
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    sub-int/2addr v1, v4

    if-eq v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    .line 166
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->switchTest()V

    .line 167
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->showBtn()V

    .line 211
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onClick(Landroid/view/View;)V

    .line 212
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnPrev:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 170
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    .line 173
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->switchTest()V

    .line 174
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->showBtn()V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnSwithText:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mSwithTestDlg:Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

    new-instance v1, Lcom/ozdroid/kaoshitong/Cuowu$2;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/Cuowu$2;-><init>(Lcom/ozdroid/kaoshitong/Cuowu;)V

    .line 184
    iget v2, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    .line 177
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->Create(Lcom/ozdroid/kaoshitong/ui/SwithTestListener;III)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnRightAnswer:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 186
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->isShowAnswer:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->isShowAnswer:Z

    .line 187
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->isShowAnswer:Z

    if-eqz v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnRightAnswer:Landroid/widget/Button;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 192
    :goto_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    move v0, v4

    .line 186
    goto :goto_1

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnRightAnswer:Landroid/widget/Button;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnRemove:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->open()V

    .line 195
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    iget v2, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->remove(I)V

    .line 196
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    iget v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 197
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->close()V

    .line 199
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->empty()V

    .line 208
    :goto_3
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->showBtn()V

    goto/16 :goto_0

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    .line 203
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_8

    .line 204
    iget v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    .line 206
    :cond_8
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->switchTest()V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 46
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mainContent:Landroid/view/View;

    .line 49
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mEmpty:Landroid/view/View;

    .line 51
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->open()V

    .line 52
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    .line 53
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->close()V

    .line 54
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    if-nez v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->empty()V

    .line 96
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    .line 61
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 62
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTestText:Landroid/widget/TextView;

    .line 63
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    iget v3, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 64
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTestText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getQuestion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u002E"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mAnswerListView:Landroid/widget/ListView;

    .line 67
    new-instance v1, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;-><init>(Lcom/ozdroid/kaoshitong/Cuowu;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;

    .line 68
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mAnswerListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/Cuowu$AnswerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnNext:Landroid/widget/Button;

    .line 71
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnPrev:Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnSwithText:Landroid/widget/Button;

    .line 77
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnSwithText:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnRightAnswer:Landroid/widget/Button;

    .line 80
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnRightAnswer:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnRemove:Landroid/widget/Button;

    .line 83
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mBtnRemove:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Cuowu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTestImageView:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->setImage()V

    .line 88
    new-instance v1, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mSwithTestDlg:Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

    .line 90
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getCuoWuLastIndex()I

    move-result v0

    .line 91
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->maxIndex:I

    sub-int/2addr v1, v6

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->showRember()V

    .line 93
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Cuowu;->showBtn()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 100
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 101
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    .line 110
    :goto_0
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onDestroy()V

    .line 111
    return-void

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 115
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 116
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    .line 125
    :goto_0
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onPause()V

    .line 126
    return-void

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 130
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 132
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onResume()V

    .line 133
    return-void
.end method
