.class public final Lcom/google/android/gms/ads/internal/k;
.super Lcom/google/android/gms/internal/avf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/auy;

.field private b:Lcom/google/android/gms/internal/bbg;

.field private c:Lcom/google/android/gms/internal/bbw;

.field private d:Lcom/google/android/gms/internal/bbj;

.field private e:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbm;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbq;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/bbt;

.field private h:Lcom/google/android/gms/internal/auh;

.field private i:Lcom/google/android/gms/ads/b/j;

.field private j:Lcom/google/android/gms/internal/azu;

.field private k:Lcom/google/android/gms/internal/avv;

.field private final l:Landroid/content/Context;

.field private final m:Lcom/google/android/gms/internal/bfw;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/google/android/gms/internal/km;

.field private final p:Lcom/google/android/gms/ads/internal/br;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/avf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/k;->m:Lcom/google/android/gms/internal/bfw;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/k;->o:Lcom/google/android/gms/internal/km;

    new-instance p1, Landroid/support/v4/g/m;

    invoke-direct {p1}, Landroid/support/v4/g/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->f:Landroid/support/v4/g/m;

    new-instance p1, Landroid/support/v4/g/m;

    invoke-direct {p1}, Landroid/support/v4/g/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->e:Landroid/support/v4/g/m;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/k;->p:Lcom/google/android/gms/ads/internal/br;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/avb;
    .locals 20

    move-object/from16 v0, p0

    new-instance v18, Lcom/google/android/gms/ads/internal/h;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/k;->l:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/k;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/k;->m:Lcom/google/android/gms/internal/bfw;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/k;->o:Lcom/google/android/gms/internal/km;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/internal/auy;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/k;->b:Lcom/google/android/gms/internal/bbg;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/k;->c:Lcom/google/android/gms/internal/bbw;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/k;->d:Lcom/google/android/gms/internal/bbj;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/k;->f:Landroid/support/v4/g/m;

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/k;->e:Landroid/support/v4/g/m;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/k;->j:Lcom/google/android/gms/internal/azu;

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/k;->k:Lcom/google/android/gms/internal/avv;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/k;->p:Lcom/google/android/gms/ads/internal/br;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/internal/bbt;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/k;->h:Lcom/google/android/gms/internal/auh;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/k;->i:Lcom/google/android/gms/ads/b/j;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/ads/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/auy;Lcom/google/android/gms/internal/bbg;Lcom/google/android/gms/internal/bbw;Lcom/google/android/gms/internal/bbj;Landroid/support/v4/g/m;Landroid/support/v4/g/m;Lcom/google/android/gms/internal/azu;Lcom/google/android/gms/internal/avv;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/bbt;Lcom/google/android/gms/internal/auh;Lcom/google/android/gms/ads/b/j;)V

    return-object v18
.end method

.method public final a(Lcom/google/android/gms/ads/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->i:Lcom/google/android/gms/ads/b/j;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/auy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/internal/auy;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/avv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->k:Lcom/google/android/gms/internal/avv;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/azu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->j:Lcom/google/android/gms/internal/azu;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bbg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->b:Lcom/google/android/gms/internal/bbg;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bbj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->d:Lcom/google/android/gms/internal/bbj;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bbt;Lcom/google/android/gms/internal/auh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/internal/bbt;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k;->h:Lcom/google/android/gms/internal/auh;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bbw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->c:Lcom/google/android/gms/internal/bbw;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/bbq;Lcom/google/android/gms/internal/bbm;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/k;->e:Landroid/support/v4/g/m;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
