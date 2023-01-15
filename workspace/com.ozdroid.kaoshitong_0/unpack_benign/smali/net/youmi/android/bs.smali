.class Lnet/youmi/android/bs;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/m;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Lnet/youmi/android/s;

.field e:Lnet/youmi/android/at;

.field f:I

.field g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/s;Lnet/youmi/android/at;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/bs;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/bs;->g:Z

    iput-object p3, p0, Lnet/youmi/android/bs;->e:Lnet/youmi/android/at;

    invoke-virtual {p0, p1, p2, p4}, Lnet/youmi/android/bs;->a(Landroid/content/Context;Lnet/youmi/android/s;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/bs;->removeAllViews()V

    iput-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lnet/youmi/android/bs;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public a(Landroid/content/Context;Lnet/youmi/android/s;I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, -0x2

    iput-object p2, p0, Lnet/youmi/android/bs;->d:Lnet/youmi/android/s;

    iput p3, p0, Lnet/youmi/android/bs;->f:I

    invoke-interface {p2}, Lnet/youmi/android/s;->b()I

    move-result v0

    invoke-static {v0}, Lnet/youmi/android/o;->b(I)I

    move-result v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/youmi/android/bs;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/youmi/android/bs;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-interface {p2}, Lnet/youmi/android/s;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    iget-object v5, p0, Lnet/youmi/android/bs;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setId(I)V

    iget-object v5, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v5, p0, Lnet/youmi/android/bs;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setId(I)V

    iget-object v4, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lnet/youmi/android/bs;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lnet/youmi/android/bs;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/bs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lnet/youmi/android/bs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/bs;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lnet/youmi/android/bs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/bs;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/y;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x30

    :try_start_0
    iget-object v1, p0, Lnet/youmi/android/bs;->d:Lnet/youmi/android/s;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/bs;->d:Lnet/youmi/android/s;

    invoke-interface {v1}, Lnet/youmi/android/s;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lnet/youmi/android/y;->b()Lnet/youmi/android/ad;

    move-result-object v1

    sget-object v2, Lnet/youmi/android/ad;->c:Lnet/youmi/android/ad;

    if-eq v1, v2, :cond_2

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lnet/youmi/android/bs;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lnet/youmi/android/y;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lnet/youmi/android/bs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/youmi/android/bw;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/youmi/android/bs;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_3
    :goto_3
    :try_start_4
    const-string v0, "\u6709\u7c73\u5e7f\u544a\u503e\u529b\u6253\u9020\u9876\u5c16\u7684\u79fb\u52a8\u5e7f\u544a\u5e73\u53f0\uff01-- www.youmi.net"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {p1}, Lnet/youmi/android/y;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    if-lez v2, :cond_4

    move-object v0, v1

    :cond_4
    :goto_4
    :try_start_6
    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    const/4 v0, 0x1

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/bs;->f:I

    return v0
.end method

.method public b(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/bs;->g:Z

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->setVisibility(I)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/bs;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/bs;->g:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/bs;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationEnd()V

    :try_start_0
    iget-boolean v0, p0, Lnet/youmi/android/bs;->g:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/bs;->e:Lnet/youmi/android/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bs;->e:Lnet/youmi/android/at;

    invoke-virtual {v0}, Lnet/youmi/android/at;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
