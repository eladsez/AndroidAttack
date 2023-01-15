.class Lnet/youmi/android/k;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/s;


# instance fields
.field a:Landroid/os/Handler;

.field b:Lnet/youmi/android/AdView;

.field c:Landroid/graphics/drawable/BitmapDrawable;

.field d:Ljava/util/Random;

.field e:Ljava/util/ArrayList;

.field f:I

.field g:Ljava/util/ArrayList;

.field h:I

.field i:Z

.field private j:Lnet/youmi/android/at;

.field private k:Lnet/youmi/android/at;

.field private l:Lnet/youmi/android/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/AdView;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/k;->d:Ljava/util/Random;

    iput v2, p0, Lnet/youmi/android/k;->f:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    iput v2, p0, Lnet/youmi/android/k;->h:I

    iput-boolean v2, p0, Lnet/youmi/android/k;->i:Z

    iput-object p3, p0, Lnet/youmi/android/k;->a:Landroid/os/Handler;

    iput-object p2, p0, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {p0, p1}, Lnet/youmi/android/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)Lnet/youmi/android/j;
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lnet/youmi/android/k;->u()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lnet/youmi/android/k;->p()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lnet/youmi/android/k;->s()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lnet/youmi/android/k;->o()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lnet/youmi/android/k;->n()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lnet/youmi/android/k;->l()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lnet/youmi/android/k;->t()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lnet/youmi/android/k;->r()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lnet/youmi/android/k;->q()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lnet/youmi/android/k;->m()Lnet/youmi/android/j;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Lnet/youmi/android/k;)Lnet/youmi/android/m;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/k;->l:Lnet/youmi/android/m;

    return-object v0
.end method

.method private j()V
    .locals 1

    new-instance v0, Lnet/youmi/android/bo;

    invoke-direct {v0, p0}, Lnet/youmi/android/bo;-><init>(Lnet/youmi/android/k;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/k;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()Lnet/youmi/android/j;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xa

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lnet/youmi/android/k;->a(I)Lnet/youmi/android/j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/k;->d:Ljava/util/Random;

    iget-object v1, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/youmi/android/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14d

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private l()Lnet/youmi/android/j;
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/o;->a(Landroid/content/Context;)I

    move-result v7

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Lnet/youmi/android/ax;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    div-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/ax;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Lnet/youmi/android/ax;

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    div-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/ax;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lnet/youmi/android/j;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v9, v1}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14f

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Lnet/youmi/android/j;
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/o;->a(Landroid/content/Context;)I

    move-result v7

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Lnet/youmi/android/ax;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    div-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/ax;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Lnet/youmi/android/ax;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    div-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/ax;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lnet/youmi/android/j;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v9, v1}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x150

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Lnet/youmi/android/j;
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/o;->a(Landroid/content/Context;)I

    move-result v7

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Lnet/youmi/android/ax;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    div-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/ax;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Lnet/youmi/android/ax;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    div-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/ax;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lnet/youmi/android/j;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v9, v1}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x151

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Lnet/youmi/android/j;
    .locals 10

    :try_start_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Lnet/youmi/android/j;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x152

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Lnet/youmi/android/j;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/o;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x320

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x320

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lnet/youmi/android/j;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x153

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Lnet/youmi/android/j;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/o;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    int-to-float v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v0, Lnet/youmi/android/j;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x154

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Lnet/youmi/android/j;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/o;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    neg-int v3, v0

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v0, Lnet/youmi/android/j;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x155

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Lnet/youmi/android/j;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/o;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    neg-int v4, v0

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x320

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x320

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lnet/youmi/android/j;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x156

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()Lnet/youmi/android/j;
    .locals 7

    :try_start_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lnet/youmi/android/j;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x157

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Lnet/youmi/android/j;
    .locals 7

    :try_start_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lnet/youmi/android/j;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lnet/youmi/android/j;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x158

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/youmi/android/k;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/k;->j:Lnet/youmi/android/at;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/at;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/k;->k:Lnet/youmi/android/at;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/at;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x145

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x146

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x147

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->getAdH()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :try_start_0
    new-instance v1, Lnet/youmi/android/at;

    iget-object v2, p0, Lnet/youmi/android/k;->a:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, p1, p0, v2, v3}, Lnet/youmi/android/at;-><init>(Landroid/content/Context;Lnet/youmi/android/s;Landroid/os/Handler;I)V

    iput-object v1, p0, Lnet/youmi/android/k;->j:Lnet/youmi/android/at;

    iget-object v1, p0, Lnet/youmi/android/k;->j:Lnet/youmi/android/at;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v1, Lnet/youmi/android/at;

    iget-object v2, p0, Lnet/youmi/android/k;->a:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-direct {v1, p1, p0, v2, v3}, Lnet/youmi/android/at;-><init>(Landroid/content/Context;Lnet/youmi/android/s;Landroid/os/Handler;I)V

    iput-object v1, p0, Lnet/youmi/android/k;->k:Lnet/youmi/android/at;

    iget-object v1, p0, Lnet/youmi/android/k;->k:Lnet/youmi/android/at;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0}, Lnet/youmi/android/k;->a()V

    :try_start_2
    invoke-virtual {p0}, Lnet/youmi/android/k;->c()I

    move-result v0

    invoke-virtual {p0}, Lnet/youmi/android/k;->b()I

    move-result v1

    invoke-virtual {p0}, Lnet/youmi/android/k;->d()I

    move-result v2

    invoke-virtual {p0}, Lnet/youmi/android/k;->e()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/by;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lnet/youmi/android/k;->c:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lnet/youmi/android/k;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lnet/youmi/android/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    invoke-direct {p0}, Lnet/youmi/android/k;->j()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x142

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x143

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x144

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public a(Lnet/youmi/android/m;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/k;->setVisibility(I)V

    invoke-direct {p0}, Lnet/youmi/android/k;->k()Lnet/youmi/android/j;

    move-result-object v0

    invoke-interface {p1}, Lnet/youmi/android/m;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lnet/youmi/android/k;->k:Lnet/youmi/android/at;

    iget-object v2, v0, Lnet/youmi/android/j;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lnet/youmi/android/at;->c(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, v0, Lnet/youmi/android/j;->b:Landroid/view/animation/Animation;

    invoke-interface {p1, v0}, Lnet/youmi/android/m;->b(Landroid/view/animation/Animation;)V

    iput-object p1, p0, Lnet/youmi/android/k;->l:Lnet/youmi/android/m;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/youmi/android/k;->j:Lnet/youmi/android/at;

    iget-object v2, v0, Lnet/youmi/android/j;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lnet/youmi/android/at;->c(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method a(Lnet/youmi/android/y;)V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/k;->l:Lnet/youmi/android/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/k;->j:Lnet/youmi/android/at;

    iput-object v0, p0, Lnet/youmi/android/k;->l:Lnet/youmi/android/m;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/k;->l:Lnet/youmi/android/m;

    invoke-interface {v0}, Lnet/youmi/android/m;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/youmi/android/k;->k:Lnet/youmi/android/at;

    :goto_0
    invoke-virtual {v0, p1}, Lnet/youmi/android/at;->a(Lnet/youmi/android/y;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/k;->j:Lnet/youmi/android/at;

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getAdH()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getAdW()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getBackgroundTransparent()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getTextColor()I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->c()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/k;->j:Lnet/youmi/android/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/k;->j:Lnet/youmi/android/at;

    invoke-virtual {v0}, Lnet/youmi/android/at;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/k;->k:Lnet/youmi/android/at;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/k;->k:Lnet/youmi/android/at;

    invoke-virtual {v0}, Lnet/youmi/android/at;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14a

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14b

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14c

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method i()Landroid/view/animation/Animation;
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v3, 0x320

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/youmi/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Lnet/youmi/android/k;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/youmi/android/k;->f:I

    iget-object v0, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_2
    iget v1, p0, Lnet/youmi/android/k;->f:I

    rem-int/2addr v1, v0

    iput v1, p0, Lnet/youmi/android/k;->f:I

    iget v1, p0, Lnet/youmi/android/k;->f:I

    if-ltz v1, :cond_3

    iget v1, p0, Lnet/youmi/android/k;->f:I

    if-lt v1, v0, :cond_4

    :cond_3
    move-object v0, v5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnet/youmi/android/k;->g:Ljava/util/ArrayList;

    iget v1, p0, Lnet/youmi/android/k;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    move-object v0, p0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lnet/youmi/android/k;->h()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iput-boolean v1, p0, Lnet/youmi/android/k;->i:Z

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lnet/youmi/android/k;->i:Z

    if-eqz v0, :cond_1

    sget v0, Lnet/youmi/android/by;->f:I

    invoke-virtual {p0, v0}, Lnet/youmi/android/k;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iput-boolean v2, p0, Lnet/youmi/android/k;->i:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Lnet/youmi/android/k;->i:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lnet/youmi/android/k;->i:Z

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/k;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/k;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lnet/youmi/android/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x159

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
