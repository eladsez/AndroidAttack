.class public final Lcom/google/android/gms/ads/internal/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field B:Lcom/google/android/gms/internal/ads/atl;

.field C:Lcom/google/android/gms/internal/ads/gn;

.field D:Lcom/google/android/gms/internal/ads/gf;

.field public E:Ljava/lang/String;

.field F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lcom/google/android/gms/internal/ads/jf;

.field H:Landroid/view/View;

.field public I:I

.field J:Z

.field private K:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/iu;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:I

.field private N:Lcom/google/android/gms/internal/ads/lx;

.field private O:Z

.field private P:Z

.field private Q:Z

.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/internal/ads/ahi;

.field public final e:Lcom/google/android/gms/internal/ads/mv;

.field f:Lcom/google/android/gms/ads/internal/az;

.field public g:Lcom/google/android/gms/internal/ads/ji;

.field public h:Lcom/google/android/gms/internal/ads/kp;

.field public i:Lcom/google/android/gms/internal/ads/aou;

.field public j:Lcom/google/android/gms/internal/ads/is;

.field public k:Lcom/google/android/gms/internal/ads/it;

.field public l:Lcom/google/android/gms/internal/ads/iu;

.field m:Lcom/google/android/gms/internal/ads/apk;

.field n:Lcom/google/android/gms/internal/ads/apn;

.field o:Lcom/google/android/gms/internal/ads/aqh;

.field p:Lcom/google/android/gms/internal/ads/aqd;

.field q:Lcom/google/android/gms/internal/ads/aqn;

.field r:Lcom/google/android/gms/internal/ads/awg;

.field s:Lcom/google/android/gms/internal/ads/awj;

.field t:Lcom/google/android/gms/internal/ads/aww;

.field u:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awn;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awq;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/google/android/gms/internal/ads/auu;

.field x:Lcom/google/android/gms/internal/ads/asa;

.field y:Lcom/google/android/gms/internal/ads/arb;

.field z:Lcom/google/android/gms/internal/ads/awt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mv;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/ay;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ahi;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ahi;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/ay;->G:Lcom/google/android/gms/internal/ads/jf;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/ay;->H:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/ay;->I:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->J:Z

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/ay;->K:Ljava/util/HashSet;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/ads/internal/ay;->L:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/ay;->M:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/ay;->O:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/ay;->P:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->Q:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/asr;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->b()Lcom/google/android/gms/internal/ads/asu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/asr;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/internal/ads/mv;->b:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/internal/ads/mv;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ix;->b()Lcom/google/android/gms/internal/ads/asu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asu;->a(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->a:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/aou;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/aou;->h:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p5, Lcom/google/android/gms/ads/internal/az;

    iget-object v4, p4, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/az;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget v0, p2, Lcom/google/android/gms/internal/ads/aou;->f:I

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/az;->setMinimumWidth(I)V

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget v0, p2, Lcom/google/android/gms/internal/ads/aou;->c:I

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/az;->setMinimumHeight(I)V

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/az;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    new-instance p1, Lcom/google/android/gms/internal/ads/ahi;

    new-instance p2, Lcom/google/android/gms/ads/internal/h;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/h;-><init>(Lcom/google/android/gms/ads/internal/ay;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ahi;-><init>(Lcom/google/android/gms/internal/ads/ahe;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    new-instance p1, Lcom/google/android/gms/internal/ads/lx;

    const-wide/16 p2, 0xc8

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/lx;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ay;->N:Lcom/google/android/gms/internal/ads/lx;

    new-instance p1, Landroid/support/v4/g/m;

    invoke-direct {p1}, Landroid/support/v4/g/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ay;->v:Landroid/support/v4/g/m;

    return-void
.end method

.method private final b(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->N:Lcom/google/android/gms/internal/ads/lx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lx;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rw;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/az;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    aget v3, v0, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/mi;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/mi;->b(Landroid/content/Context;I)I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/ay;->L:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/ads/internal/ay;->M:I

    if-eq v0, v3, :cond_3

    :cond_2
    iput v2, p0, Lcom/google/android/gms/ads/internal/ay;->L:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/ay;->M:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/ay;->L:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/ay;->M:I

    xor-int/2addr p1, v4

    invoke-interface {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/rw;->a(IIZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/az;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/az;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq p1, v3, :cond_4

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/ay;->O:Z

    :cond_4
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/ay;->P:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/iu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->K:Ljava/util/HashSet;

    return-object v0
.end method

.method final a(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->bG:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahi;->a()Lcom/google/android/gms/internal/ads/ahe;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ahe;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/iu;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ay;->K:Ljava/util/HashSet;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/ay;->I:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->stopLoading()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->g:Lcom/google/android/gms/internal/ads/ji;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->g:Lcom/google/android/gms/internal/ads/ji;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ji;->b()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kp;->b()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->destroy()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bdd;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/ay;->I:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/ay;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->P:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->O:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->Q:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    return-object v0

    :cond_1
    const-string v0, "top-locked"

    return-object v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->P:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->Q:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    return-object v0

    :cond_3
    const-string v0, "bottom-locked"

    return-object v0

    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/ay;->b(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/ay;->b(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ay;->Q:Z

    return-void
.end method
