.class public final Lcom/google/android/gms/ads/internal/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field A:Lcom/google/android/gms/internal/ayn;

.field B:Lcom/google/android/gms/internal/ej;

.field public C:Ljava/lang/String;

.field D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lcom/google/android/gms/internal/gx;

.field F:Landroid/view/View;

.field public G:I

.field H:Z

.field private I:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/gn;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private K:I

.field private L:Lcom/google/android/gms/internal/jp;

.field private M:Z

.field private N:Z

.field private O:Z

.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/internal/zk;

.field public final e:Lcom/google/android/gms/internal/km;

.field f:Lcom/google/android/gms/ads/internal/ax;

.field public g:Lcom/google/android/gms/internal/ha;

.field public h:Lcom/google/android/gms/internal/il;

.field public i:Lcom/google/android/gms/internal/auh;

.field public j:Lcom/google/android/gms/internal/gl;

.field public k:Lcom/google/android/gms/internal/gm;

.field public l:Lcom/google/android/gms/internal/gn;

.field m:Lcom/google/android/gms/internal/auv;

.field n:Lcom/google/android/gms/internal/auy;

.field o:Lcom/google/android/gms/internal/avo;

.field p:Lcom/google/android/gms/internal/avv;

.field q:Lcom/google/android/gms/internal/bbg;

.field r:Lcom/google/android/gms/internal/bbj;

.field s:Lcom/google/android/gms/internal/bbw;

.field t:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbm;",
            ">;"
        }
    .end annotation
.end field

.field u:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbq;",
            ">;"
        }
    .end annotation
.end field

.field v:Lcom/google/android/gms/internal/azu;

.field w:Lcom/google/android/gms/internal/axc;

.field x:Lcom/google/android/gms/internal/awj;

.field y:Lcom/google/android/gms/internal/bbt;

.field z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/km;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/aw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/zk;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/zk;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/aw;->E:Lcom/google/android/gms/internal/gx;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/aw;->F:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/aw;->G:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->H:Z

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/aw;->I:Ljava/util/HashSet;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/ads/internal/aw;->J:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/aw;->K:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/aw;->M:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/aw;->N:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->O:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/axt;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gq;->b()Lcom/google/android/gms/internal/axw;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/axt;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/internal/km;->b:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/internal/km;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gq;->b()Lcom/google/android/gms/internal/axw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axw;->a(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->a:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/auh;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/google/android/gms/internal/auh;->h:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p5, Lcom/google/android/gms/ads/internal/ax;

    iget-object v4, p4, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget v0, p2, Lcom/google/android/gms/internal/auh;->f:I

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/ax;->setMinimumWidth(I)V

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget v0, p2, Lcom/google/android/gms/internal/auh;->c:I

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/ax;->setMinimumHeight(I)V

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/ax;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    new-instance p1, Lcom/google/android/gms/internal/zk;

    new-instance p2, Lcom/google/android/gms/ads/internal/g;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/g;-><init>(Lcom/google/android/gms/ads/internal/aw;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zk;-><init>(Lcom/google/android/gms/internal/zg;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    new-instance p1, Lcom/google/android/gms/internal/jp;

    const-wide/16 p2, 0xc8

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/jp;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/aw;->L:Lcom/google/android/gms/internal/jp;

    new-instance p1, Landroid/support/v4/g/m;

    invoke-direct {p1}, Landroid/support/v4/g/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    return-void
.end method

.method private final b(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->L:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jp;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/pk;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/ax;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    aget v3, v0, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/jz;->b(Landroid/content/Context;I)I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/aw;->J:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/ads/internal/aw;->K:I

    if-eq v0, v3, :cond_3

    :cond_2
    iput v2, p0, Lcom/google/android/gms/ads/internal/aw;->J:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/aw;->K:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/aw;->J:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/aw;->K:I

    xor-int/2addr p1, v4

    invoke-interface {v0, v2, v3, p1}, Lcom/google/android/gms/internal/pk;->a(IIZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ax;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/ax;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq p1, v3, :cond_4

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/aw;->M:Z

    :cond_4
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/aw;->N:Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/gn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->I:Ljava/util/HashSet;

    return-object v0
.end method

.method final a(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/axt;->bz:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zk;->a()Lcom/google/android/gms/internal/zg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zg;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/gn;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/aw;->I:Ljava/util/HashSet;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/aw;->G:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->stopLoading()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->g:Lcom/google/android/gms/internal/ha;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->g:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ha;->c()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    invoke-interface {v0}, Lcom/google/android/gms/internal/il;->c()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->destroy()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bfz;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/aw;->G:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/aw;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->M:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->N:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->M:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->O:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    return-object v0

    :cond_1
    const-string v0, "top-locked"

    return-object v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->N:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->O:Z

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/aw;->b(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/aw;->b(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/aw;->O:Z

    return-void
.end method
