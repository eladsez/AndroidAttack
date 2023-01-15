.class public Ljp/beyond/sdk/layout/BeadExitDefaultLayout;
.super Ljp/beyond/sdk/layout/BeadLayout;
.source "BeadExitDefaultLayout.java"


# static fields
.field private static final TEXT_LAYOUT_WIDTH:I = 0x12c

.field private static final TEXT_PADDING:I = 0xa

.field private static final TEXT_SIZE:F = 16.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadLayout;-><init>()V

    .line 29
    return-void
.end method

.method private createQuitButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 87
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 92
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 96
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1, v3}, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;->createQuitButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 103
    .restart local v1    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1, v3}, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;->createCancelButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-object v0
.end method

.method private static createQuitTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "view":Landroid/widget/TextView;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 68
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    sget-object v2, Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;->QuitText:Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;

    invoke-static {v2}, Ljp/beyond/sdk/layout/BeadDialogStrings;->getString(Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    const/16 v2, 0xa

    invoke-static {p0, v2}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 74
    .local v0, "padding":I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    return-object v1
.end method


# virtual methods
.method createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "icon_Text"    # Ljava/lang/String;
    .param p5, "icon_title"    # Ljava/lang/String;
    .param p6, "isApp"    # Z
    .param p7, "btnText"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;->createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 37
    .local v0, "mainLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 38
    const/4 v2, -0x1

    .line 39
    const/4 v3, -0x2

    .line 40
    const/high16 v4, 0x3f800000    # 1.0f

    .line 37
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 41
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x12c

    invoke-static {p1, v2}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 42
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45
    invoke-static {p1}, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;->createQuitTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;->createQuitButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    return-object v0
.end method

.method createBannerAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "icon_Text"    # Ljava/lang/String;
    .param p5, "icon_title"    # Ljava/lang/String;
    .param p6, "isApp"    # Z
    .param p7, "btnText"    # Ljava/lang/String;
    .param p8, "bannerID"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImageScaleHeight(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method
