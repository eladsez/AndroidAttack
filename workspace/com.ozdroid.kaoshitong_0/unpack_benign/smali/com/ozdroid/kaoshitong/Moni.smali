.class public Lcom/ozdroid/kaoshitong/Moni;
.super Lcom/ozdroid/kaoshitong/Base;
.source "Moni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;
    }
.end annotation


# instance fields
.field private fenshu:I

.field private isPassed:Z

.field private isSubmited:Z

.field private mAnswerAdapter:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

.field private mAnswerListView:Landroid/widget/ListView;

.field private mBtnNext:Landroid/widget/Button;

.field private mBtnPrev:Landroid/widget/Button;

.field private mBtnSeeTest:Landroid/widget/Button;

.field private mBtnSeeWrong:Landroid/widget/Button;

.field private mBtnSubmit:Landroid/widget/Button;

.field private mBtnSwithText:Landroid/widget/Button;

.field private mCWResult:Lcom/ozdroid/kaoshitong/ui/MyCWResult;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mImgResult:Landroid/widget/ImageView;

.field private mMoniTestItemEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Lcom/ozdroid/kaoshitong/ui/MyResult;

.field private mTestText:Landroid/widget/TextView;

.field private mTextResult:Landroid/widget/TextView;

.field private mTextRight:Landroid/widget/TextView;

.field private mTextWrong:Landroid/widget/TextView;

.field private maxIndex:I

.field private rightCount:I

.field private wrongCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Base;-><init>()V

    return-void
.end method

.method private TestIdAndChoiceToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "theidList":Ljava/util/List;, "Ljava/util/List<Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v3, "theid":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v2, "thechoice":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v1, "theAnswer":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .end local p0    # "this":Lcom/ozdroid/kaoshitong/Moni;
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 432
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 423
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getTestID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getChoice()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getAnswer()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v0, v4, :cond_1

    .line 427
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/Moni;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/Moni;->isSubmited:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->count()V

    return-void
.end method

.method static synthetic access$11(Lcom/ozdroid/kaoshitong/Moni;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/Moni;->isPassed:Z

    return v0
.end method

.method static synthetic access$12(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mImgResult:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTextResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ozdroid/kaoshitong/Moni;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/ozdroid/kaoshitong/Moni;->fenshu:I

    return v0
.end method

.method static synthetic access$15(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTextRight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/ozdroid/kaoshitong/Moni;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ozdroid/kaoshitong/Moni;->rightCount:I

    return v0
.end method

.method static synthetic access$17(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTextWrong:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/ozdroid/kaoshitong/Moni;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ozdroid/kaoshitong/Moni;->wrongCount:I

    return v0
.end method

.method static synthetic access$19(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->shoNext()V

    return-void
.end method

.method static synthetic access$2(Lcom/ozdroid/kaoshitong/Moni;)Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    return-object v0
.end method

.method static synthetic access$20(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->showPrev()V

    return-void
.end method

.method static synthetic access$3(Lcom/ozdroid/kaoshitong/Moni;I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/ozdroid/kaoshitong/Moni;->maxIndex:I

    return-void
.end method

.method static synthetic access$4(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->getRandom()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/ozdroid/kaoshitong/Moni;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->init()V

    return-void
.end method

.method static synthetic access$7(Lcom/ozdroid/kaoshitong/Moni;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/ozdroid/kaoshitong/Moni;->stringToTest(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->switchTest()V

    return-void
.end method

.method static synthetic access$9(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->showBtn()V

    return-void
.end method

.method private count()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 469
    iput-boolean v3, p0, Lcom/ozdroid/kaoshitong/Moni;->isSubmited:Z

    .line 470
    iput v1, p0, Lcom/ozdroid/kaoshitong/Moni;->fenshu:I

    .line 471
    iput v1, p0, Lcom/ozdroid/kaoshitong/Moni;->rightCount:I

    .line 472
    iput v1, p0, Lcom/ozdroid/kaoshitong/Moni;->wrongCount:I

    .line 473
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    iget v1, p0, Lcom/ozdroid/kaoshitong/Moni;->fenshu:I

    const/16 v2, 0x5a

    if-le v1, v2, :cond_0

    .line 483
    iput-boolean v3, p0, Lcom/ozdroid/kaoshitong/Moni;->isPassed:Z

    .line 485
    :cond_0
    return-void

    .line 473
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    .line 474
    .local v0, "item":Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;
    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->isRight()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 475
    iget v2, p0, Lcom/ozdroid/kaoshitong/Moni;->fenshu:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/ozdroid/kaoshitong/Moni;->fenshu:I

    .line 476
    iget v2, p0, Lcom/ozdroid/kaoshitong/Moni;->rightCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ozdroid/kaoshitong/Moni;->rightCount:I

    goto :goto_0

    .line 478
    :cond_2
    iget v2, p0, Lcom/ozdroid/kaoshitong/Moni;->wrongCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ozdroid/kaoshitong/Moni;->wrongCount:I

    goto :goto_0
.end method

.method private getRandom()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v2, "numIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v4, 0x1

    iget v5, p0, Lcom/ozdroid/kaoshitong/Moni;->maxIndex:I

    invoke-static {v4, v5}, Lcom/ozdroid/kaoshitong/helper/Utils;->getRandom(II)I

    move-result v3

    .line 155
    .local v3, "testIndex":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    .line 158
    .local v0, "item":Lcom/ozdroid/kaoshitong/model/TestItemEntry;
    new-instance v4, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getAnswer()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v0    # "item":Lcom/ozdroid/kaoshitong/model/TestItemEntry;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_0

    .line 162
    return-object v1
.end method

.method private init()V
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTestText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

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

    .line 104
    new-instance v0, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;-><init>(Lcom/ozdroid/kaoshitong/Moni;)V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    .line 105
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mAnswerListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Moni;->setImage()V

    .line 107
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->showBtn()V

    .line 108
    return-void
.end method

.method private shoNext()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 501
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 502
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 503
    return-void
.end method

.method private showBtn()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 401
    iget v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 406
    :goto_0
    iget v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    :goto_1
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private showPrev()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mFlipper:Landroid/widget/ViewFlipper;

    const/high16 v1, 0x7f040000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 492
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 493
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 494
    return-void
.end method

.method private showRember()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    const-string v1, "\u662f\u5426\u7ee7\u7eed\u4e0a\u4e00\u6b21\u7684\u7ec3\u4e60?"

    new-instance v2, Lcom/ozdroid/kaoshitong/Moni$1;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/Moni$1;-><init>(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 191
    const/4 v3, 0x1

    .line 169
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    .line 192
    return-void
.end method

.method private stringToTest(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "idandChoice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;>;"
    const-string v8, "@"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v6, v8, v9

    .line 441
    .local v6, "theid":Ljava/lang/String;
    const-string v8, "@"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v4, v8, v9

    .line 442
    .local v4, "theChoice":Ljava/lang/String;
    const-string v8, "@"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v2, v8, v9

    .line 444
    .local v2, "theAnswer":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 445
    .local v7, "theids":[Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, "theChoices":[Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "theAnswers":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v8, 0x32

    if-lt v0, v8, :cond_0

    .line 462
    return-object v1

    .line 449
    :cond_0
    new-instance v8, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    .line 450
    aget-object v9, v7, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 451
    aget-object v10, v5, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 452
    aget-object v11, v3, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;-><init>(III)V

    .line 449
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v8, "TAG"

    new-instance v9, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    .line 456
    aget-object v10, v7, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 457
    aget-object v11, v5, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 458
    aget-object v12, v3, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;-><init>(III)V

    .line 459
    invoke-virtual {v9}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->toString()Ljava/lang/String;

    move-result-object v9

    .line 455
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private switchTest()V
    .locals 5

    .prologue
    .line 308
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    iget v2, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getTestID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 309
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTestText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

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

    .line 310
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mAnswerAdapter:Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Moni$AnswerAdapter;->notifyDataSetChanged()V

    .line 311
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->bitmap:Landroid/graphics/Bitmap;

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Moni;->setImage()V

    .line 316
    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f03000b

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnNext:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    .line 202
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->switchTest()V

    .line 203
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->showBtn()V

    .line 301
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onClick(Landroid/view/View;)V

    .line 302
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnPrev:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    .line 207
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->switchTest()V

    .line 208
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->showBtn()V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSwithText:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 210
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/Moni;->isSubmited:Z

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mCWResult:Lcom/ozdroid/kaoshitong/ui/MyCWResult;

    const-string v1, "\u4f5c\u7b54\u60c5\u51b5(\u6a59\u5708\u4e3a\u9519\u9898)"

    new-instance v2, Lcom/ozdroid/kaoshitong/Moni$2;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/Moni$2;-><init>(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 226
    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    .line 211
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/MyCWResult;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/SinpperListener;Ljava/util/List;)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mResult:Lcom/ozdroid/kaoshitong/ui/MyResult;

    const-string v1, "\u4f5c\u7b54\u60c5\u51b5(\u6a59\u5708\u4e3a\u672a\u4f5c\u7b54)"

    new-instance v2, Lcom/ozdroid/kaoshitong/Moni$3;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/Moni$3;-><init>(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 243
    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/MyResult;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/SinpperListener;Ljava/util/List;)V

    goto :goto_0

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSubmit:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 246
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/Moni;->isSubmited:Z

    if-eqz v0, :cond_5

    .line 247
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->shoNext()V

    goto :goto_0

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    const-string v1, "\u786e\u8ba4\u63d0\u4ea4\u8bd5\u5377?"

    new-instance v2, Lcom/ozdroid/kaoshitong/Moni$4;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/Moni$4;-><init>(Lcom/ozdroid/kaoshitong/Moni;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    goto :goto_0

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSeeWrong:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mCWResult:Lcom/ozdroid/kaoshitong/ui/MyCWResult;

    const-string v1, "\u4f5c\u7b54\u60c5\u51b5(\u6a59\u5708\u4e3a\u9519\u9898)"

    new-instance v2, Lcom/ozdroid/kaoshitong/Moni$5;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/Moni$5;-><init>(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 289
    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    .line 273
    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/MyCWResult;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/SinpperListener;Ljava/util/List;)V

    goto :goto_0

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSeeTest:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 291
    iput v1, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    .line 292
    iput-boolean v1, p0, Lcom/ozdroid/kaoshitong/Moni;->isSubmited:Z

    .line 293
    iput-boolean v1, p0, Lcom/ozdroid/kaoshitong/Moni;->isPassed:Z

    .line 294
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/ozdroid/kaoshitong/Moni;->maxIndex:I

    .line 295
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->getRandom()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    .line 296
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    iget v2, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getTestID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 297
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->init()V

    .line 298
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->showPrev()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 63
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTestText:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTestImageView:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnNext:Landroid/widget/Button;

    .line 67
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnPrev:Landroid/widget/Button;

    .line 68
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSwithText:Landroid/widget/Button;

    .line 69
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSubmit:Landroid/widget/Button;

    .line 70
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mAnswerListView:Landroid/widget/ListView;

    .line 72
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnPrev:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSwithText:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v0, Lcom/ozdroid/kaoshitong/ui/MyResult;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/ui/MyResult;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mResult:Lcom/ozdroid/kaoshitong/ui/MyResult;

    .line 78
    new-instance v0, Lcom/ozdroid/kaoshitong/ui/MyCWResult;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/ui/MyCWResult;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mCWResult:Lcom/ozdroid/kaoshitong/ui/MyCWResult;

    .line 80
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mFlipper:Landroid/widget/ViewFlipper;

    .line 81
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mImgResult:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTextResult:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTextRight:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mTextWrong:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSeeWrong:Landroid/widget/Button;

    .line 86
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Moni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSeeTest:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSeeWrong:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mBtnSeeTest:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getMoniLastIndex()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/ozdroid/kaoshitong/Moni;->maxIndex:I

    .line 93
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->getRandom()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    .line 94
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    iget v2, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getTestID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 95
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->init()V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Moni;->showRember()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 113
    iget-boolean v0, p0, Lcom/ozdroid/kaoshitong/Moni;->isSubmited:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setMoniLastIndex(Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setTheMoniLastIndex(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iput-object v2, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    iput-object v2, p0, Lcom/ozdroid/kaoshitong/Moni;->bitmap:Landroid/graphics/Bitmap;

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onDestroy()V

    .line 129
    return-void

    .line 117
    :cond_1
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni;->mMoniTestItemEntry:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/ozdroid/kaoshitong/Moni;->TestIdAndChoiceToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setMoniLastIndex(Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setTheMoniLastIndex(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->close()V

    .line 135
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onPause()V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 140
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->open()V

    .line 141
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onResume()V

    .line 142
    return-void
.end method
