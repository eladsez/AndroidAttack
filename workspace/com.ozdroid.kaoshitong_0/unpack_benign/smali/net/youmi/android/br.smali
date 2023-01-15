.class Lnet/youmi/android/br;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/m;


# instance fields
.field a:I

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Lnet/youmi/android/s;

.field e:Z

.field f:Lnet/youmi/android/at;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/s;Lnet/youmi/android/at;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/br;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/br;->e:Z

    iput-object p3, p0, Lnet/youmi/android/br;->f:Lnet/youmi/android/at;

    invoke-virtual {p0, p1, p2, p4}, Lnet/youmi/android/br;->a(Landroid/content/Context;Lnet/youmi/android/s;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/br;->removeAllViews()V

    iput-object v0, p0, Lnet/youmi/android/br;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/youmi/android/br;->b:Landroid/widget/TextView;

    return-void
.end method

.method public a(Landroid/content/Context;Lnet/youmi/android/s;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, -0x2

    const/4 v4, 0x0

    iput-object p2, p0, Lnet/youmi/android/br;->d:Lnet/youmi/android/s;

    iput p3, p0, Lnet/youmi/android/br;->a:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/br;->c:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/br;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/youmi/android/br;->b:Landroid/widget/TextView;

    invoke-interface {p2}, Lnet/youmi/android/s;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnet/youmi/android/br;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/youmi/android/br;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v2, p0, Lnet/youmi/android/br;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setId(I)V

    invoke-interface {p2}, Lnet/youmi/android/s;->b()I

    move-result v2

    invoke-static {v2}, Lnet/youmi/android/o;->b(I)I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v3, v2, 0x3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lnet/youmi/android/br;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lnet/youmi/android/br;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lnet/youmi/android/br;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/br;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/br;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/br;->startAnimation(Landroid/view/animation/Animation;)V
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
    iget-object v1, p0, Lnet/youmi/android/br;->d:Lnet/youmi/android/s;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/br;->d:Lnet/youmi/android/s;

    invoke-interface {v1}, Lnet/youmi/android/s;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lnet/youmi/android/br;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/youmi/android/bw;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/youmi/android/br;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_2
    :goto_2
    :try_start_2
    const-string v0, "\u6709\u7c73\u5e7f\u544a\u503e\u529b\u6253\u9020\u9876\u5c16\u7684\u79fb\u52a8\u5e7f\u544a\u5e73\u53f0\uff01-- www.youmi.net"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p1}, Lnet/youmi/android/y;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    if-lez v2, :cond_3

    move-object v0, v1

    :cond_3
    :goto_3
    :try_start_4
    iget-object v1, p0, Lnet/youmi/android/br;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/br;->a:I

    return v0
.end method

.method public b(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/br;->e:Z

    invoke-virtual {p0, v0}, Lnet/youmi/android/br;->setVisibility(I)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/br;->startAnimation(Landroid/view/animation/Animation;)V
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

    iput-boolean v0, p0, Lnet/youmi/android/br;->e:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/br;->startAnimation(Landroid/view/animation/Animation;)V
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
    iget-boolean v0, p0, Lnet/youmi/android/br;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/br;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/br;->f:Lnet/youmi/android/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/br;->f:Lnet/youmi/android/at;

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
