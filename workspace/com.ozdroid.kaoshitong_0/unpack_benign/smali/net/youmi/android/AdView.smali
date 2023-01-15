.class public Lnet/youmi/android/AdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field public static final DEFAULT_BACKGROUND_TRANS:I = 0xff

.field public static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static g:J


# instance fields
.field a:J

.field b:Lnet/youmi/android/k;

.field c:Z

.field d:Z

.field e:Lnet/youmi/android/AdListener;

.field f:Landroid/os/Handler;

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:I

.field private m:I

.field private n:J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lnet/youmi/android/AdView;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-wide v0, Lnet/youmi/android/AdView;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lnet/youmi/android/AdView;->g:J

    iput-wide v0, p0, Lnet/youmi/android/AdView;->a:J

    const/16 v0, 0xff

    iput v0, p0, Lnet/youmi/android/AdView;->h:I

    iput v5, p0, Lnet/youmi/android/AdView;->i:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/youmi/android/AdView;->j:I

    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lnet/youmi/android/AdView;->k:F

    iput v4, p0, Lnet/youmi/android/AdView;->l:I

    iput v4, p0, Lnet/youmi/android/AdView;->m:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lnet/youmi/android/AdView;->n:J

    iput v5, p0, Lnet/youmi/android/AdView;->o:I

    iput-boolean v4, p0, Lnet/youmi/android/AdView;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/AdView;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/AdView;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lnet/youmi/android/AdView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-wide v0, Lnet/youmi/android/AdView;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lnet/youmi/android/AdView;->g:J

    iput-wide v0, p0, Lnet/youmi/android/AdView;->a:J

    const/16 v0, 0xff

    iput v0, p0, Lnet/youmi/android/AdView;->h:I

    iput v5, p0, Lnet/youmi/android/AdView;->i:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/youmi/android/AdView;->j:I

    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lnet/youmi/android/AdView;->k:F

    iput v4, p0, Lnet/youmi/android/AdView;->l:I

    iput v4, p0, Lnet/youmi/android/AdView;->m:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lnet/youmi/android/AdView;->n:J

    iput v5, p0, Lnet/youmi/android/AdView;->o:I

    iput-boolean v4, p0, Lnet/youmi/android/AdView;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/AdView;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/AdView;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/youmi/android/AdView;->a(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-wide v0, Lnet/youmi/android/AdView;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lnet/youmi/android/AdView;->g:J

    iput-wide v0, p0, Lnet/youmi/android/AdView;->a:J

    const/16 v0, 0xff

    iput v0, p0, Lnet/youmi/android/AdView;->h:I

    iput v5, p0, Lnet/youmi/android/AdView;->i:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/youmi/android/AdView;->j:I

    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lnet/youmi/android/AdView;->k:F

    iput v4, p0, Lnet/youmi/android/AdView;->l:I

    iput v4, p0, Lnet/youmi/android/AdView;->m:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lnet/youmi/android/AdView;->n:J

    iput v5, p0, Lnet/youmi/android/AdView;->o:I

    iput-boolean v4, p0, Lnet/youmi/android/AdView;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/AdView;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/AdView;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Lnet/youmi/android/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-wide v0, Lnet/youmi/android/AdView;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lnet/youmi/android/AdView;->g:J

    iput-wide v0, p0, Lnet/youmi/android/AdView;->a:J

    const/16 v0, 0xff

    iput v0, p0, Lnet/youmi/android/AdView;->h:I

    iput v5, p0, Lnet/youmi/android/AdView;->i:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/youmi/android/AdView;->j:I

    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lnet/youmi/android/AdView;->k:F

    iput v4, p0, Lnet/youmi/android/AdView;->l:I

    iput v4, p0, Lnet/youmi/android/AdView;->m:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lnet/youmi/android/AdView;->n:J

    iput v5, p0, Lnet/youmi/android/AdView;->o:I

    iput-boolean v4, p0, Lnet/youmi/android/AdView;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/AdView;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/AdView;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Lnet/youmi/android/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/AdView;J)V
    .locals 0

    iput-wide p1, p0, Lnet/youmi/android/AdView;->n:J

    return-void
.end method


# virtual methods
.method public ConnectFaild()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/AdView;->e:Lnet/youmi/android/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/AdView;->e:Lnet/youmi/android/AdListener;

    invoke-interface {v0}, Lnet/youmi/android/AdListener;->onConnectFailed()V

    :cond_0
    return-void
.end method

.method public OnAdLoad()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/AdView;->e:Lnet/youmi/android/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/AdView;->e:Lnet/youmi/android/AdListener;

    invoke-interface {v0}, Lnet/youmi/android/AdListener;->onReceiveAd()V

    :cond_0
    return-void
.end method

.method a()J
    .locals 4

    iget-wide v0, p0, Lnet/youmi/android/AdView;->n:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3a98

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 7

    const/high16 v4, -0x1000000

    const/16 v6, 0xff

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lnet/youmi/android/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    return-void
.end method

.method a(Landroid/content/Context;III)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lnet/youmi/android/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/high16 v4, -0x1000000

    const/16 v6, 0xff

    const/4 v5, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lnet/youmi/android/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/high16 v4, -0x1000000

    const/16 v6, 0xff

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lnet/youmi/android/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V
    .locals 8

    const/4 v6, -0x1

    const/16 v5, 0xff

    invoke-static {}, Lnet/youmi/android/o;->a()I

    move-result v0

    :try_start_0
    invoke-static {p1}, Lnet/youmi/android/o;->d(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    invoke-static {p1}, Lnet/youmi/android/o;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lnet/youmi/android/AdView;->m:I

    invoke-static {v0}, Lnet/youmi/android/o;->c(I)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/AdView;->l:I

    if-eqz p2, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textColor"

    const/4 v2, -0x1

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    const-string v2, "backgroundColor"

    const/high16 v3, -0x1000000

    invoke-interface {p2, v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    :try_start_3
    const-string v3, "backgroundTransparent"

    const/16 v4, 0xff

    invoke-interface {p2, v0, v3, v4}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    if-le v0, v5, :cond_0

    move v0, v5

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_1
    iget v3, p0, Lnet/youmi/android/AdView;->l:I

    invoke-static {v3}, Lnet/youmi/android/o;->a(I)F

    move-result v3

    iput v3, p0, Lnet/youmi/android/AdView;->k:F

    iput v2, p0, Lnet/youmi/android/AdView;->i:I

    iput v1, p0, Lnet/youmi/android/AdView;->j:I

    iput v0, p0, Lnet/youmi/android/AdView;->h:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lnet/youmi/android/AdView;->getAdH()I

    move-result v1

    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lnet/youmi/android/k;

    iget-object v2, p0, Lnet/youmi/android/AdView;->f:Landroid/os/Handler;

    invoke-direct {v1, p1, p0, v2}, Lnet/youmi/android/k;-><init>(Landroid/content/Context;Lnet/youmi/android/AdView;Landroid/os/Handler;)V

    iput-object v1, p0, Lnet/youmi/android/AdView;->b:Lnet/youmi/android/k;

    iget-object v1, p0, Lnet/youmi/android/AdView;->b:Lnet/youmi/android/k;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception v0

    move v1, p4

    move v2, p5

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    move v0, p6

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    move v2, v1

    move v1, p4

    goto :goto_2

    :catch_3
    move-exception v0

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_2

    :cond_1
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_1

    :cond_2
    move v0, p6

    move v1, p4

    move v2, p5

    goto :goto_1
.end method

.method a(Lnet/youmi/android/y;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "ad is null!"

    iget-wide v1, p0, Lnet/youmi/android/AdView;->a:J

    invoke-static {v0, v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lnet/youmi/android/y;->i:Z

    if-nez v0, :cond_1

    const-string v0, "ad not loaded complated!"

    iget-wide v1, p0, Lnet/youmi/android/AdView;->a:J

    invoke-static {v0, v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lnet/youmi/android/y;->f()I

    move-result v0

    iget v1, p0, Lnet/youmi/android/AdView;->o:I

    if-ne v0, v1, :cond_2

    const-string v0, "show last ad"

    iget-wide v1, p0, Lnet/youmi/android/AdView;->a:J

    invoke-static {v0, v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnet/youmi/android/y;->f()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/AdView;->o:I

    iget-object v0, p0, Lnet/youmi/android/AdView;->b:Lnet/youmi/android/k;

    invoke-virtual {v0, p1}, Lnet/youmi/android/k;->a(Lnet/youmi/android/y;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method b()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/youmi/android/AdView;->c:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/ah;

    invoke-direct {v1, p0}, Lnet/youmi/android/ah;-><init>(Lnet/youmi/android/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/AdView;->c:Z

    return v0
.end method

.method public getAdH()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/AdView;->l:I

    return v0
.end method

.method public getAdW()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/AdView;->m:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/AdView;->j:I

    return v0
.end method

.method public getBackgroundTransparent()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/AdView;->h:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/AdView;->i:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lnet/youmi/android/AdView;->k:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, -0x2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v2, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/youmi/android/AdView;->b()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnet/youmi/android/AdView;->c:Z

    invoke-virtual {p0}, Lnet/youmi/android/AdView;->removeAllViews()V

    iget-object v0, p0, Lnet/youmi/android/AdView;->b:Lnet/youmi/android/k;

    invoke-virtual {v0}, Lnet/youmi/android/k;->h()V

    const-string v0, "AdView destroy"

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-string v0, "onDetachedFromWindow"

    iget-wide v1, p0, Lnet/youmi/android/AdView;->a:J

    invoke-static {v0, v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lnet/youmi/android/AdView;->onDestroy()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lnet/youmi/android/AdView;->d:Z

    return-void
.end method

.method public setAdListener(Lnet/youmi/android/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lnet/youmi/android/AdView;->e:Lnet/youmi/android/AdListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
