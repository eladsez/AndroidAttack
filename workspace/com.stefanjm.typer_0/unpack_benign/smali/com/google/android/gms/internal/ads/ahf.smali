.class public abstract Lcom/google/android/gms/internal/ads/ahf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ahe;


# static fields
.field protected static volatile a:Lcom/google/android/gms/internal/ads/ahz;


# instance fields
.field protected b:Landroid/view/MotionEvent;

.field protected c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected d:J

.field protected e:J

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:J

.field protected j:J

.field protected k:D

.field protected l:F

.field protected m:F

.field protected n:F

.field protected o:F

.field protected p:Z

.field protected q:Landroid/util/DisplayMetrics;

.field private r:D

.field private s:D

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->c:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->i:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->j:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ahf;->t:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ahf;->p:Z

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->bL:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/agj;->a()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ahf;->a:Lcom/google/android/gms/internal/ads/ahz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aif;->a(Lcom/google/android/gms/internal/ads/ahz;)Z

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahf;->q:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/gms/internal/ads/ahf;->a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/aaa;

    move-result-object p1

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ahf;->t:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ahf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ww;)Lcom/google/android/gms/internal/ads/aaa;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afo;->d()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/agj;->a(Lcom/google/android/gms/internal/ads/aaa;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x3

    goto :goto_2

    :catch_1
    const/4 p1, 0x7

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected abstract a([Ljava/lang/StackTraceElement;)J
.end method

.method protected abstract a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/aaa;
.end method

.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ww;)Lcom/google/android/gms/internal/ads/aaa;
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/google/android/gms/internal/ads/aih;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->bN:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ahf;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/ahf;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ahf;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(III)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahf;->b:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahf;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahf;->q:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    move/from16 v1, p3

    int-to-long v4, v1

    const/4 v6, 0x1

    move/from16 v1, p1

    int-to-float v1, v1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ahf;->q:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v1

    move/from16 v1, p2

    int-to-float v1, v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/ahf;->q:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ahf;->b:Landroid/view/MotionEvent;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ahf;->p:Z

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ahf;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->g:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->f:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->e:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->d:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->h:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->j:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->i:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->b:Landroid/view/MotionEvent;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ahf;->t:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/ahf;->r:D

    sub-double v6, v2, v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/ahf;->s:D

    sub-double v8, v4, v8

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/ahf;->k:D

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v10, v6

    iput-wide v10, p0, Lcom/google/android/gms/internal/ads/ahf;->k:D

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->r:D

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/ahf;->s:D

    goto :goto_1

    :pswitch_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->k:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->r:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->s:D

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->g:J

    add-long v5, v0, v2

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/ahf;->g:J

    goto/16 :goto_3

    :pswitch_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->e:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/2addr v0, v4

    int-to-long v5, v0

    add-long v7, v2, v5

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/ahf;->e:J

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ahf;->b(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/aig;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aig;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aig;->g:Ljava/lang/Long;

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->i:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aig;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aig;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long v9, v5, v7

    add-long v5, v2, v9

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/ahf;->i:J

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->q:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aig;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aig;->h:Ljava/lang/Long;

    if-eqz v0, :cond_4

    move v1, v4

    :cond_4
    if-eqz v1, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->j:J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/aig;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aig;->h:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v7, v2, v5

    add-long v2, v0, v7

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ahf;->j:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/ahw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :pswitch_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahf;->b:Landroid/view/MotionEvent;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ahf;->c:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahf;->b:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ahf;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ahf;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->f:J

    add-long v5, v0, v2

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/ahf;->f:J

    :try_start_1
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ahf;->a([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->h:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/ahw; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ahf;->l:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ahf;->m:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ahf;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/ahf;->o:F

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ahf;->d:J

    add-long v5, v0, v2

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/ahf;->d:J

    :catch_0
    :cond_6
    :goto_3
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/ahf;->p:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected abstract b(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/aig;
.end method
