.class Lnet/youmi/android/at;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lnet/youmi/android/m;


# instance fields
.field a:Lnet/youmi/android/s;

.field b:Lnet/youmi/android/bs;

.field c:Lnet/youmi/android/br;

.field d:Lnet/youmi/android/cb;

.field e:Lnet/youmi/android/n;

.field f:I

.field g:Landroid/os/Handler;

.field private h:I

.field private i:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/s;Landroid/os/Handler;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lnet/youmi/android/at;->f:I

    iput v0, p0, Lnet/youmi/android/at;->h:I

    iput v0, p0, Lnet/youmi/android/at;->i:I

    iput-object p3, p0, Lnet/youmi/android/at;->g:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p4}, Lnet/youmi/android/at;->a(Landroid/content/Context;Lnet/youmi/android/s;I)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/at;I)V
    .locals 0

    iput p1, p0, Lnet/youmi/android/at;->i:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/youmi/android/at;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/at;->b:Lnet/youmi/android/bs;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/bs;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/at;->d:Lnet/youmi/android/cb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/cb;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    iget-object v0, p0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/br;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/n;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Lnet/youmi/android/s;I)V
    .locals 7

    iput-object p2, p0, Lnet/youmi/android/at;->a:Lnet/youmi/android/s;

    iput p3, p0, Lnet/youmi/android/at;->f:I

    invoke-interface {p2}, Lnet/youmi/android/s;->b()I

    move-result v0

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :try_start_0
    new-instance v0, Lnet/youmi/android/bs;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p0, v1}, Lnet/youmi/android/bs;-><init>(Landroid/content/Context;Lnet/youmi/android/s;Lnet/youmi/android/at;I)V

    iput-object v0, p0, Lnet/youmi/android/at;->b:Lnet/youmi/android/bs;

    iget-object v0, p0, Lnet/youmi/android/at;->b:Lnet/youmi/android/bs;

    invoke-virtual {p0, v0, v6}, Lnet/youmi/android/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    new-instance v0, Lnet/youmi/android/cb;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p0, v1}, Lnet/youmi/android/cb;-><init>(Landroid/content/Context;Lnet/youmi/android/s;Lnet/youmi/android/at;I)V

    iput-object v0, p0, Lnet/youmi/android/at;->d:Lnet/youmi/android/cb;

    iget-object v0, p0, Lnet/youmi/android/at;->d:Lnet/youmi/android/cb;

    invoke-virtual {p0, v0, v6}, Lnet/youmi/android/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    new-instance v0, Lnet/youmi/android/br;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Lnet/youmi/android/br;-><init>(Landroid/content/Context;Lnet/youmi/android/s;Lnet/youmi/android/at;I)V

    iput-object v0, p0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    iget-object v0, p0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    invoke-virtual {p0, v0, v6}, Lnet/youmi/android/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    new-instance v0, Lnet/youmi/android/n;

    iget-object v4, p0, Lnet/youmi/android/at;->g:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/n;-><init>(Landroid/content/Context;Lnet/youmi/android/s;Lnet/youmi/android/at;Landroid/os/Handler;I)V

    iput-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    invoke-virtual {p0, v0, v6}, Lnet/youmi/android/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    invoke-virtual {p0}, Lnet/youmi/android/at;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    iget v0, p0, Lnet/youmi/android/at;->h:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    invoke-virtual {v0, p1}, Lnet/youmi/android/n;->a(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/youmi/android/at;->b:Lnet/youmi/android/bs;

    invoke-virtual {v0, p1}, Lnet/youmi/android/bs;->a(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/at;->d:Lnet/youmi/android/cb;

    invoke-virtual {v0, p1}, Lnet/youmi/android/cb;->a(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    invoke-virtual {v0, p1}, Lnet/youmi/android/br;->a(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lnet/youmi/android/y;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lnet/youmi/android/y;->b()Lnet/youmi/android/ad;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/ad;->d:Lnet/youmi/android/ad;

    if-ne v0, v1, :cond_2

    const-string v0, "gif ad"

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    if-nez v0, :cond_0

    const-string v0, "Gif Ad View is Null"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    invoke-virtual {v0, p1}, Lnet/youmi/android/n;->a(Lnet/youmi/android/y;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/at;->i:I

    iget-object v0, p0, Lnet/youmi/android/at;->g:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/h;

    invoke-direct {v1, p0}, Lnet/youmi/android/h;-><init>(Lnet/youmi/android/at;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnet/youmi/android/y;->b()Lnet/youmi/android/ad;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/ad;->c:Lnet/youmi/android/ad;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lnet/youmi/android/at;->b:Lnet/youmi/android/bs;

    if-nez v0, :cond_3

    const-string v0, "Icon Ad View is Null!"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/at;->g:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/d;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/d;-><init>(Lnet/youmi/android/at;Lnet/youmi/android/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lnet/youmi/android/y;->b()Lnet/youmi/android/ad;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/ad;->b:Lnet/youmi/android/ad;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lnet/youmi/android/at;->d:Lnet/youmi/android/cb;

    if-nez v0, :cond_5

    const-string v0, "Image Ad View is Null!"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/youmi/android/at;->g:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/e;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/e;-><init>(Lnet/youmi/android/at;Lnet/youmi/android/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v3

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lnet/youmi/android/y;->b()Lnet/youmi/android/ad;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/ad;->a:Lnet/youmi/android/ad;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    if-nez v0, :cond_7

    const-string v0, "Text Ad View is Null!"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lnet/youmi/android/at;->g:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/b;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/b;-><init>(Lnet/youmi/android/at;Lnet/youmi/android/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v3

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/at;->f:I

    return v0
.end method

.method public b(Landroid/view/animation/Animation;)V
    .locals 2

    iget v0, p0, Lnet/youmi/android/at;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/at;->setVisibility(I)V

    :try_start_0
    iget v0, p0, Lnet/youmi/android/at;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget v0, p0, Lnet/youmi/android/at;->i:I

    iput v0, p0, Lnet/youmi/android/at;->h:I

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    invoke-virtual {v0, p1}, Lnet/youmi/android/n;->b(Landroid/view/animation/Animation;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lnet/youmi/android/at;->b:Lnet/youmi/android/bs;

    invoke-virtual {v0, p1}, Lnet/youmi/android/bs;->b(Landroid/view/animation/Animation;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/at;->d:Lnet/youmi/android/cb;

    invoke-virtual {v0, p1}, Lnet/youmi/android/cb;->b(Landroid/view/animation/Animation;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    invoke-virtual {v0, p1}, Lnet/youmi/android/br;->b(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method c()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/at;->setVisibility(I)V

    return-void
.end method

.method public c(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lnet/youmi/android/at;->h:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lnet/youmi/android/at;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iput v1, p0, Lnet/youmi/android/at;->h:I

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    invoke-virtual {v0, p1}, Lnet/youmi/android/n;->c(Landroid/view/animation/Animation;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lnet/youmi/android/at;->b:Lnet/youmi/android/bs;

    invoke-virtual {v0, p1}, Lnet/youmi/android/bs;->c(Landroid/view/animation/Animation;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/at;->d:Lnet/youmi/android/cb;

    invoke-virtual {v0, p1}, Lnet/youmi/android/cb;->c(Landroid/view/animation/Animation;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    invoke-virtual {v0, p1}, Lnet/youmi/android/br;->c(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public d()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/at;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/at;->b:Lnet/youmi/android/bs;

    invoke-virtual {v0}, Lnet/youmi/android/bs;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    invoke-virtual {v0}, Lnet/youmi/android/br;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    iget-object v0, p0, Lnet/youmi/android/at;->d:Lnet/youmi/android/cb;

    invoke-virtual {v0}, Lnet/youmi/android/cb;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/n;

    invoke-virtual {v0}, Lnet/youmi/android/n;->g()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method
