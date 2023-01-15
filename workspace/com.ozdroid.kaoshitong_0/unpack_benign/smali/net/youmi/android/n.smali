.class Lnet/youmi/android/n;
.super Landroid/widget/ImageView;

# interfaces
.implements Lnet/youmi/android/l;
.implements Lnet/youmi/android/m;


# instance fields
.field a:Lnet/youmi/android/s;

.field b:Lnet/youmi/android/i;

.field c:Landroid/os/Handler;

.field d:Landroid/graphics/Paint;

.field e:Z

.field f:Z

.field g:Lnet/youmi/android/at;

.field h:Landroid/graphics/Bitmap;

.field private i:I

.field private j:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/s;Lnet/youmi/android/at;Landroid/os/Handler;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/n;->i:I

    new-instance v0, Lnet/youmi/android/i;

    invoke-direct {v0}, Lnet/youmi/android/i;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/n;->d:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lnet/youmi/android/n;->e:Z

    iput-boolean v2, p0, Lnet/youmi/android/n;->f:Z

    iput-object p4, p0, Lnet/youmi/android/n;->c:Landroid/os/Handler;

    iput-object p3, p0, Lnet/youmi/android/n;->g:Lnet/youmi/android/at;

    invoke-virtual {p0, p1, p2, p5}, Lnet/youmi/android/n;->a(Landroid/content/Context;Lnet/youmi/android/s;I)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-virtual {p0}, Lnet/youmi/android/n;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/content/Context;Lnet/youmi/android/s;I)V
    .locals 0

    iput-object p2, p0, Lnet/youmi/android/n;->a:Lnet/youmi/android/s;

    iput p3, p0, Lnet/youmi/android/n;->i:I

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/n;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/y;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/i;

    invoke-direct {v0}, Lnet/youmi/android/i;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lnet/youmi/android/y;->b()Lnet/youmi/android/ad;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/ad;->d:Lnet/youmi/android/ad;

    if-eq v0, v1, :cond_2

    const-string v0, "ad type is no gif"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    invoke-virtual {v0}, Lnet/youmi/android/i;->g()V

    invoke-virtual {p1}, Lnet/youmi/android/y;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lnet/youmi/android/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/youmi/android/bw;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x140

    :try_start_0
    iget-object v2, p0, Lnet/youmi/android/n;->a:Lnet/youmi/android/s;

    invoke-interface {v2}, Lnet/youmi/android/s;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_1
    const/16 v2, 0x30

    :try_start_1
    iget-object v3, p0, Lnet/youmi/android/n;->a:Lnet/youmi/android/s;

    invoke-interface {v3}, Lnet/youmi/android/s;->b()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :goto_2
    iget-object v3, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    invoke-virtual {v3, v0, v1, v2}, Lnet/youmi/android/i;->a(Ljava/io/InputStream;II)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    invoke-virtual {v0}, Lnet/youmi/android/i;->a()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/n;->i:I

    return v0
.end method

.method public b(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/n;->f:Z

    invoke-virtual {p0, v0}, Lnet/youmi/android/n;->setVisibility(I)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/n;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/n;->e:Z

    invoke-virtual {p0}, Lnet/youmi/android/n;->e()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    const-string v0, "stop gif"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/ab;

    invoke-virtual {v0}, Lnet/youmi/android/ab;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public c(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/n;->f:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/n;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/n;->e:Z

    invoke-virtual {p0}, Lnet/youmi/android/n;->c()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/n;->e:Z

    invoke-virtual {p0}, Lnet/youmi/android/n;->c()V

    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    iget-object v0, v0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    invoke-virtual {p0}, Lnet/youmi/android/n;->c()V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Lnet/youmi/android/ab;

    invoke-direct {v0}, Lnet/youmi/android/ab;-><init>()V

    iget-object v1, p0, Lnet/youmi/android/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lnet/youmi/android/ab;->a(Lnet/youmi/android/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method f()J
    .locals 4

    const-wide/16 v2, -0x1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/n;->a:Lnet/youmi/android/s;

    invoke-interface {v0}, Lnet/youmi/android/s;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AdView had been destroyed"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lnet/youmi/android/n;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-wide v0, v2

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v0, "gif running"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    invoke-virtual {v0}, Lnet/youmi/android/i;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    invoke-virtual {v0}, Lnet/youmi/android/i;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lnet/youmi/android/n;->h:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lnet/youmi/android/n;->c:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/al;

    invoke-direct {v1, p0}, Lnet/youmi/android/al;-><init>(Lnet/youmi/android/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    iget-object v0, p0, Lnet/youmi/android/n;->b:Lnet/youmi/android/i;

    invoke-virtual {v0}, Lnet/youmi/android/i;->d()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-wide v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lnet/youmi/android/n;->d()V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    :try_start_0
    iget-boolean v0, p0, Lnet/youmi/android/n;->f:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/n;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/n;->g:Lnet/youmi/android/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/n;->g:Lnet/youmi/android/at;

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

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    :try_start_0
    const-string v0, "GifAdContainer onDetachedFromWindow "

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/youmi/android/n;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lnet/youmi/android/n;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/youmi/android/n;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnet/youmi/android/n;->c()V

    goto :goto_0
.end method
