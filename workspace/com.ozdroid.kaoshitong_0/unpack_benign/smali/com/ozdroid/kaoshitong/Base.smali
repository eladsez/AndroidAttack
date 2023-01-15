.class public abstract Lcom/ozdroid/kaoshitong/Base;
.super Landroid/app/ActivityGroup;
.source "Base.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adView:Lnet/youmi/android/AdView;

.field private adh:I

.field protected bitmap:Landroid/graphics/Bitmap;

.field protected currentIndex:I

.field protected currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

.field private height:I

.field private mBackBtn:Landroid/widget/Button;

.field protected mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

.field protected mTestImageView:Landroid/widget/ImageView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    const-string v0, "c23d55cdfcfcfe33"

    const-string v1, "04945dbd06e4b5c4"

    const/16 v2, 0x14

    const/4 v3, 0x0

    const-string v4, "1.0"

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method


# virtual methods
.method public abstract getContentView()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->mBackBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Base;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    .local v0, "base":Landroid/view/ViewGroup;
    const v4, 0x7f080004

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 73
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Base;->getContentView()I

    move-result v4

    invoke-static {p0, v4, v1}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Base;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/ozdroid/kaoshitong/Base;->height:I

    .line 76
    new-instance v4, Lnet/youmi/android/AdView;

    const v5, -0x777778

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-direct {v4, p0, v5, v6, v7}, Lnet/youmi/android/AdView;-><init>(Landroid/content/Context;III)V

    iput-object v4, p0, Lcom/ozdroid/kaoshitong/Base;->adView:Lnet/youmi/android/AdView;

    .line 77
    const/4 v4, 0x1

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Base;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/ozdroid/kaoshitong/Base;->adh:I

    .line 78
    iget-object v4, p0, Lcom/ozdroid/kaoshitong/Base;->adView:Lnet/youmi/android/AdView;

    iget v5, p0, Lcom/ozdroid/kaoshitong/Base;->height:I

    iget v6, p0, Lcom/ozdroid/kaoshitong/Base;->adh:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v7, v5, v7, v7}, Lnet/youmi/android/AdView;->setPadding(IIII)V

    .line 79
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 80
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/ozdroid/kaoshitong/Base;->adView:Lnet/youmi/android/AdView;

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Base;->setContentView(Landroid/view/View;)V

    .line 84
    const v4, 0x7f080002

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ozdroid/kaoshitong/Base;->mBackBtn:Landroid/widget/Button;

    .line 85
    iget-object v4, p0, Lcom/ozdroid/kaoshitong/Base;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Base;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 88
    .local v2, "data":Landroid/content/Intent;
    const v4, 0x7f080003

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ozdroid/kaoshitong/Base;->mTitleText:Landroid/widget/TextView;

    .line 89
    const-string v4, "title"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ozdroid/kaoshitong/Base;->setTitle(Ljava/lang/String;)V

    .line 91
    new-instance v4, Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    invoke-direct {v4, p0}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ozdroid/kaoshitong/Base;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->bitmap:Landroid/graphics/Bitmap;

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 146
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 59
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 54
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method protected setImage()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x46

    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getImage()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .local v8, "o":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getImage()[B

    move-result-object v0

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Base;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getImage()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 122
    const/16 v7, 0x46

    .line 123
    .local v7, "REQUIRED_SIZE":I
    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v3, "width_tmp":I
    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 125
    .local v4, "height_tmp":I
    if-le v4, v9, :cond_0

    .line 126
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getImage()[B

    move-result-object v0

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Base;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getImage()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->bitmap:Landroid/graphics/Bitmap;

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->mTestImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Base;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->mTestImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    .end local v3    # "width_tmp":I
    .end local v4    # "height_tmp":I
    .end local v7    # "REQUIRED_SIZE":I
    .end local v8    # "o":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-void

    .line 128
    .restart local v3    # "width_tmp":I
    .restart local v4    # "height_tmp":I
    .restart local v7    # "REQUIRED_SIZE":I
    .restart local v8    # "o":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    .local v5, "matrix":Landroid/graphics/Matrix;
    div-int v0, v9, v3

    int-to-float v0, v0

    div-int v2, v9, v3

    int-to-float v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 130
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getImage()[B

    move-result-object v0

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Base;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->getImage()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 135
    .end local v3    # "width_tmp":I
    .end local v4    # "height_tmp":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "REQUIRED_SIZE":I
    .end local v8    # "o":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Base;->mTestImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
