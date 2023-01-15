.class public Lorg/hermit/android/core/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/core/HelpActivity$BodyView;,
        Lorg/hermit/android/core/HelpActivity$HelpView;,
        Lorg/hermit/android/core/HelpActivity$TitleView;
    }
.end annotation


# static fields
.field private static final FPAR:I = -0x1

.field private static final LEVEL_COLS:[I

.field private static final WCON:I = -0x2


# instance fields
.field private mainView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/hermit/android/core/HelpActivity;->LEVEL_COLS:[I

    .line 50
    return-void

    .line 455
    nop

    :array_0
    .array-data 4
        -0xff7374
        -0x737400
        -0x73ff74
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/core/HelpActivity;->mainView:Landroid/widget/ScrollView;

    .line 50
    return-void
.end method

.method static synthetic access$0()[I
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lorg/hermit/android/core/HelpActivity;->LEVEL_COLS:[I

    return-object v0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 420
    iget-object v0, p0, Lorg/hermit/android/core/HelpActivity;->mainView:Landroid/widget/ScrollView;

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lorg/hermit/android/core/HelpActivity;->restoreViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private restoreViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "inState"    # Landroid/os/Bundle;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    const-string v7, "."

    .line 432
    instance-of v5, p1, Lorg/hermit/android/core/HelpActivity$TitleView;

    if-eqz v5, :cond_0

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "expanded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 434
    .local v1, "exp":Z
    move-object v0, p1

    check-cast v0, Lorg/hermit/android/core/HelpActivity$TitleView;

    move-object v5, v0

    invoke-static {v5, v1}, Lorg/hermit/android/core/HelpActivity$TitleView;->access$2(Lorg/hermit/android/core/HelpActivity$TitleView;Z)V

    .line 437
    .end local v1    # "exp":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 438
    .local v3, "nkids":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 447
    return-void

    .line 439
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 440
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Lorg/hermit/android/core/HelpActivity$HelpView;

    if-eqz v5, :cond_3

    .line 441
    check-cast v4, Lorg/hermit/android/core/HelpActivity$HelpView;

    .end local v4    # "v":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "H"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lorg/hermit/android/core/HelpActivity;->restoreViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 438
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    .restart local v4    # "v":Landroid/view/View;
    :cond_3
    instance-of v5, v4, Lorg/hermit/android/core/HelpActivity$TitleView;

    if-eqz v5, :cond_4

    .line 443
    check-cast v4, Lorg/hermit/android/core/HelpActivity$TitleView;

    .end local v4    # "v":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "T"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lorg/hermit/android/core/HelpActivity;->restoreViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 444
    .restart local v4    # "v":Landroid/view/View;
    :cond_4
    instance-of v5, v4, Lorg/hermit/android/core/HelpActivity$BodyView;

    if-eqz v5, :cond_2

    .line 445
    check-cast v4, Lorg/hermit/android/core/HelpActivity$BodyView;

    .end local v4    # "v":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lorg/hermit/android/core/HelpActivity;->restoreViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 385
    iget-object v0, p0, Lorg/hermit/android/core/HelpActivity;->mainView:Landroid/widget/ScrollView;

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lorg/hermit/android/core/HelpActivity;->saveViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private saveViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    const-string v6, "."

    .line 398
    instance-of v4, p1, Lorg/hermit/android/core/HelpActivity$TitleView;

    if-eqz v4, :cond_0

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "expanded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lorg/hermit/android/core/HelpActivity$TitleView;

    move-object v4, v0

    invoke-static {v4}, Lorg/hermit/android/core/HelpActivity$TitleView;->access$1(Lorg/hermit/android/core/HelpActivity$TitleView;)Z

    move-result v4

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 402
    .local v2, "nkids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 411
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lorg/hermit/android/core/HelpActivity$HelpView;

    if-eqz v4, :cond_3

    .line 405
    check-cast v3, Lorg/hermit/android/core/HelpActivity$HelpView;

    .end local v3    # "v":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "H"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lorg/hermit/android/core/HelpActivity;->saveViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 402
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    instance-of v4, v3, Lorg/hermit/android/core/HelpActivity$TitleView;

    if-eqz v4, :cond_4

    .line 407
    check-cast v3, Lorg/hermit/android/core/HelpActivity$TitleView;

    .end local v3    # "v":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "T"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lorg/hermit/android/core/HelpActivity;->saveViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 408
    .restart local v3    # "v":Landroid/view/View;
    :cond_4
    instance-of v4, v3, Lorg/hermit/android/core/HelpActivity$BodyView;

    if-eqz v4, :cond_2

    .line 409
    check-cast v3, Lorg/hermit/android/core/HelpActivity$BodyView;

    .end local v3    # "v":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lorg/hermit/android/core/HelpActivity;->saveViewState(Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected addHelpFromArrays(II)V
    .locals 6
    .param p1, "titlesId"    # I
    .param p2, "textsId"    # I

    .prologue
    .line 140
    new-instance v0, Lorg/hermit/android/core/HelpActivity$HelpView;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/hermit/android/core/HelpActivity$HelpView;-><init>(Lorg/hermit/android/core/HelpActivity;IIILorg/hermit/android/core/HelpActivity$HelpView;)V

    .line 141
    .local v0, "hv":Lorg/hermit/android/core/HelpActivity$HelpView;
    iget-object v1, p0, Lorg/hermit/android/core/HelpActivity;->mainView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/hermit/android/core/HelpActivity;->mainView:Landroid/widget/ScrollView;

    .line 71
    iget-object v0, p0, Lorg/hermit/android/core/HelpActivity;->mainView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lorg/hermit/android/core/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0, p1}, Lorg/hermit/android/core/HelpActivity;->restoreState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0, p1}, Lorg/hermit/android/core/HelpActivity;->saveState(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method
