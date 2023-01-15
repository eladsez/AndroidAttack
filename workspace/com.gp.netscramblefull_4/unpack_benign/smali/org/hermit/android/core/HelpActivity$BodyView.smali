.class final Lorg/hermit/android/core/HelpActivity$BodyView;
.super Landroid/widget/LinearLayout;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BodyView"
.end annotation


# direct methods
.method private constructor <init>(Landroid/app/Activity;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 354
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 355
    invoke-virtual {p0, v2}, Lorg/hermit/android/core/HelpActivity$BodyView;->setOrientation(I)V

    .line 360
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "bt":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 362
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 363
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 364
    const v2, -0x3f3f01

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    mul-int/lit8 v2, p2, 0x20

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 366
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 368
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0, v1}, Lorg/hermit/android/core/HelpActivity$BodyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ILjava/lang/CharSequence;Lorg/hermit/android/core/HelpActivity$BodyView;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0, p1, p2, p3}, Lorg/hermit/android/core/HelpActivity$BodyView;-><init>(Landroid/app/Activity;ILjava/lang/CharSequence;)V

    return-void
.end method
