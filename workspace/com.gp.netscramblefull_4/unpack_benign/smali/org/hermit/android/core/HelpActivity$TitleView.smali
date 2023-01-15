.class final Lorg/hermit/android/core/HelpActivity$TitleView;
.super Landroid/widget/LinearLayout;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TitleView"
.end annotation


# instance fields
.field private bodyView:Landroid/view/View;

.field private bodyVis:Z

.field private expandView:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 7
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "body"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 273
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 332
    iput-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    .line 333
    iput-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->textView:Landroid/widget/TextView;

    .line 334
    iput-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyView:Landroid/view/View;

    .line 335
    iput-boolean v5, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyVis:Z

    .line 274
    invoke-virtual {p0, v5}, Lorg/hermit/android/core/HelpActivity$TitleView;->setOrientation(I)V

    .line 277
    iput-object p4, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyView:Landroid/view/View;

    .line 281
    invoke-static {}, Lorg/hermit/android/core/HelpActivity;->access$0()[I

    move-result-object v2

    invoke-static {}, Lorg/hermit/android/core/HelpActivity;->access$0()[I

    move-result-object v3

    array-length v3, v3

    rem-int v3, p2, v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/hermit/android/core/HelpActivity$TitleView;->setBackgroundColor(I)V

    .line 288
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    .line 289
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    const/16 v3, 0x26

    mul-int/lit8 v4, p2, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 291
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v1, v2

    .line 292
    .local v1, "s":I
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    div-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 293
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 294
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 295
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lorg/hermit/android/core/HelpActivity$TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->textView:Landroid/widget/TextView;

    .line 299
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->textView:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->textView:Landroid/widget/TextView;

    const/16 v3, 0x1c

    mul-int/lit8 v4, p2, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 301
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->textView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 302
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lorg/hermit/android/core/HelpActivity$TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-direct {p0, v5}, Lorg/hermit/android/core/HelpActivity$TitleView;->setExpanded(Z)V

    .line 307
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/hermit/android/core/HelpActivity$TitleView;->setClickable(Z)V

    .line 308
    invoke-virtual {p0, p0}, Lorg/hermit/android/core/HelpActivity$TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ILjava/lang/CharSequence;Landroid/view/View;Lorg/hermit/android/core/HelpActivity$TitleView;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hermit/android/core/HelpActivity$TitleView;-><init>(Landroid/app/Activity;ILjava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1(Lorg/hermit/android/core/HelpActivity$TitleView;)Z
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lorg/hermit/android/core/HelpActivity$TitleView;->isExpanded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lorg/hermit/android/core/HelpActivity$TitleView;Z)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lorg/hermit/android/core/HelpActivity$TitleView;->setExpanded(Z)V

    return-void
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyVis:Z

    return v0
.end method

.method private setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyVis:Z

    .line 321
    iget-object v0, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->expandView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyVis:Z

    if-eqz v1, :cond_0

    const-string v1, "\u2013"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyView:Landroid/view/View;

    iget-boolean v1, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyVis:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    return-void

    .line 321
    :cond_0
    const-string v1, "+"

    goto :goto_0

    .line 322
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    iget-boolean v0, p0, Lorg/hermit/android/core/HelpActivity$TitleView;->bodyVis:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/hermit/android/core/HelpActivity$TitleView;->setExpanded(Z)V

    .line 314
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
