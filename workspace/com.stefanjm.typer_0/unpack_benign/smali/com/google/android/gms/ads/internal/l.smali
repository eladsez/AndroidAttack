.class public final Lcom/google/android/gms/ads/internal/l;
.super Lcom/google/android/gms/internal/ads/apu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/apn;

.field private b:Lcom/google/android/gms/internal/ads/awg;

.field private c:Lcom/google/android/gms/internal/ads/aww;

.field private d:Lcom/google/android/gms/internal/ads/awj;

.field private e:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awn;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awq;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/awt;

.field private h:Lcom/google/android/gms/internal/ads/aou;

.field private i:Lcom/google/android/gms/ads/b/j;

.field private j:Lcom/google/android/gms/internal/ads/auu;

.field private k:Lcom/google/android/gms/internal/ads/aqn;

.field private final l:Landroid/content/Context;

.field private final m:Lcom/google/android/gms/internal/ads/bda;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/google/android/gms/internal/ads/mv;

.field private final p:Lcom/google/android/gms/ads/internal/bu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/apu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/l;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/l;->m:Lcom/google/android/gms/internal/ads/bda;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/l;->o:Lcom/google/android/gms/internal/ads/mv;

    new-instance p1, Landroid/support/v4/g/m;

    invoke-direct {p1}, Landroid/support/v4/g/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/support/v4/g/m;

    new-instance p1, Landroid/support/v4/g/m;

    invoke-direct {p1}, Landroid/support/v4/g/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->e:Landroid/support/v4/g/m;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/l;->p:Lcom/google/android/gms/ads/internal/bu;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/apq;
    .locals 20

    move-object/from16 v0, p0

    new-instance v18, Lcom/google/android/gms/ads/internal/i;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/l;->l:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/l;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/l;->m:Lcom/google/android/gms/internal/ads/bda;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/l;->o:Lcom/google/android/gms/internal/ads/mv;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/l;->a:Lcom/google/android/gms/internal/ads/apn;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/l;->b:Lcom/google/android/gms/internal/ads/awg;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/l;->c:Lcom/google/android/gms/internal/ads/aww;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/l;->d:Lcom/google/android/gms/internal/ads/awj;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/support/v4/g/m;

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/l;->e:Landroid/support/v4/g/m;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/l;->j:Lcom/google/android/gms/internal/ads/auu;

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/l;->k:Lcom/google/android/gms/internal/ads/aqn;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/l;->p:Lcom/google/android/gms/ads/internal/bu;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/l;->g:Lcom/google/android/gms/internal/ads/awt;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/internal/ads/aou;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/l;->i:Lcom/google/android/gms/ads/b/j;

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    move-object/from16 v17, v15

    move-object/from16 v15, v19

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/ads/internal/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/apn;Lcom/google/android/gms/internal/ads/awg;Lcom/google/android/gms/internal/ads/aww;Lcom/google/android/gms/internal/ads/awj;Landroid/support/v4/g/m;Landroid/support/v4/g/m;Lcom/google/android/gms/internal/ads/auu;Lcom/google/android/gms/internal/ads/aqn;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/awt;Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/ads/b/j;)V

    return-object v18
.end method

.method public final a(Lcom/google/android/gms/ads/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->i:Lcom/google/android/gms/ads/b/j;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/apn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->a:Lcom/google/android/gms/internal/ads/apn;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aqn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->k:Lcom/google/android/gms/internal/ads/aqn;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/auu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->j:Lcom/google/android/gms/internal/ads/auu;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/awg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->b:Lcom/google/android/gms/internal/ads/awg;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/awj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->d:Lcom/google/android/gms/internal/ads/awj;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/awt;Lcom/google/android/gms/internal/ads/aou;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->g:Lcom/google/android/gms/internal/ads/awt;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/internal/ads/aou;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aww;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->c:Lcom/google/android/gms/internal/ads/aww;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/awq;Lcom/google/android/gms/internal/ads/awn;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/l;->e:Landroid/support/v4/g/m;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
