.class public Lcom/ozdroid/kaoshitong/JiaQiang;
.super Lcom/ozdroid/kaoshitong/Base;
.source "JiaQiang.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;
    }
.end annotation


# instance fields
.field private isShowAnswer:Z

.field private mAnswerAdapter:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

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
    .line 23
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Base;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/JiaQiang;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->isShowAnswer:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ozdroid/kaoshitong/JiaQiang;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/ozdroid/kaoshitong/JiaQiang;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ozdroid/kaoshitong/JiaQiang;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->switchTest()V

    return-void
.end method

.method static synthetic access$4(Lcom/ozdroid/kaoshitong/JiaQiang;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->showBtn()V

    return-void
.end method

.method private empty()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mainContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mEmpty:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    return-void
.end method

.method private showBtn()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 318
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    :goto_0
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    :goto_1
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private showRember()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    const-string v1, "\u662f\u5426\u7ee7\u7eed\u4e0a\u4e00\u6b21\u7684\u7ec3\u4e60?"

    new-instance v2, Lcom/ozdroid/kaoshitong/JiaQiang$1;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/JiaQiang$1;-><init>(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    .line 155
    const/4 v3, 0x1

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    .line 156
    return-void
.end method

.method private switchTest()V
    .locals 5

    .prologue
    .line 220
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    iget v2, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 221
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTestText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

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

    .line 222
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->notifyDataSetChanged()V

    .line 223
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->bitmap:Landroid/graphics/Bitmap;

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->setImage()V

    .line 228
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

    .line 163
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnNext:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 164
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    sub-int/2addr v1, v4

    if-eq v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    .line 167
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->switchTest()V

    .line 168
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->showBtn()V

    .line 213
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onClick(Landroid/view/View;)V

    .line 214
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnPrev:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 171
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    .line 174
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->switchTest()V

    .line 175
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->showBtn()V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnSwithText:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mSwithTestDlg:Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;

    new-instance v1, Lcom/ozdroid/kaoshitong/JiaQiang$2;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/JiaQiang$2;-><init>(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    .line 186
    iget v2, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    .line 179
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->Create(Lcom/ozdroid/kaoshitong/ui/SwithTestListener;III)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnRightAnswer:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 188
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->isShowAnswer:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->isShowAnswer:Z

    .line 189
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->isShowAnswer:Z

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnRightAnswer:Landroid/widget/Button;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 194
    :goto_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    move v0, v4

    .line 188
    goto :goto_1

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnRightAnswer:Landroid/widget/Button;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnRemove:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 196
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->open()V

    .line 197
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    iget v2, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->remove(I)V

    .line 198
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    iget v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->close()V

    .line 201
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->empty()V

    .line 210
    :goto_3
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->showBtn()V

    goto/16 :goto_0

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    .line 205
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_8

    .line 206
    iget v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    .line 208
    :cond_8
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->switchTest()V

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

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mainContent:Landroid/view/View;

    .line 49
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mEmpty:Landroid/view/View;

    .line 51
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->open()V

    .line 52
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    .line 53
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->close()V

    .line 54
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    if-nez v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->empty()V

    .line 97
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    .line 61
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 62
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTestText:Landroid/widget/TextView;

    .line 63
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    iget v3, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 64
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTestText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

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

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mAnswerListView:Landroid/widget/ListView;

    .line 67
    new-instance v1, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;-><init>(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    .line 68
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mAnswerListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/JiaQiang$AnswerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnNext:Landroid/widget/Button;

    .line 71
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnPrev:Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnSwithText:Landroid/widget/Button;

    .line 77
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnSwithText:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnRightAnswer:Landroid/widget/Button;

    .line 80
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnRightAnswer:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnRemove:Landroid/widget/Button;

    .line 83
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mBtnRemove:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/JiaQiang;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTestImageView:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->setImage()V

    .line 88
    new-instance v1, Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    .line 90
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getJiaQiangLastIndex()I

    move-result v0

    .line 91
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->maxIndex:I

    sub-int/2addr v1, v6

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->showRember()V

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
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/JiaQiang;->showBtn()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 101
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 102
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    .line 111
    :goto_0
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onDestroy()V

    .line 112
    return-void

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    goto :goto_0

    .line 109
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

    .line 116
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 117
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->mTextIndexArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    .line 126
    :goto_0
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onPause()V

    .line 127
    return-void

    .line 121
    :cond_0
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 131
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 133
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onResume()V

    .line 134
    return-void
.end method
