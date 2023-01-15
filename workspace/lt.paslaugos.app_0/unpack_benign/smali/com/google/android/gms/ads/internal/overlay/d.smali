.class public Lcom/google/android/gms/ads/internal/overlay/d;
.super Lcom/google/android/gms/internal/bia;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/w;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field private static d:I


# instance fields
.field protected final a:Landroid/app/Activity;

.field b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field c:I

.field private e:Lcom/google/android/gms/internal/nu;

.field private f:Lcom/google/android/gms/ads/internal/overlay/i;

.field private g:Lcom/google/android/gms/ads/internal/overlay/o;

.field private h:Z

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/gms/ads/internal/overlay/h;

.field private n:Z

.field private final o:Ljava/lang/Object;

.field private p:Ljava/lang/Runnable;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/d;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/bia;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->k:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->n:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->c:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->o:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->s:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->u:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    return-void
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/nu;Z)V
    .locals 0

    invoke-interface {p0}, Lcom/google/android/gms/internal/nu;->n()V

    return-void
.end method

.method private final a(Z)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/axt;->cO:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/p;->e:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/p;->c:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/o;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/ads/internal/overlay/w;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/d;->a(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final b(Z)V
    .locals 19

    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->r:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/google/android/gms/common/util/k;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/axt;->cM:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/hs;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/q;->b:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-boolean v7, v1, Lcom/google/android/gms/ads/internal/overlay/d;->l:Z

    if-eqz v7, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    if-eqz v4, :cond_4

    const/16 v4, 0x400

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    sget-object v4, Lcom/google/android/gms/internal/axt;->aJ:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/k;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    iget-boolean v4, v4, Lcom/google/android/gms/ads/internal/q;->f:Z

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x1002

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v4}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/google/android/gms/internal/pk;->b()Z

    move-result v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iput-boolean v6, v1, Lcom/google/android/gms/ads/internal/overlay/d;->n:Z

    if-eqz v4, :cond_9

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->a()I

    move-result v8

    if-ne v7, v8, :cond_8

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_7

    :goto_4
    const/4 v6, 0x1

    :cond_7
    iput-boolean v6, v1, Lcom/google/android/gms/ads/internal/overlay/d;->n:Z

    goto :goto_5

    :cond_8
    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->b()I

    move-result v8

    if-ne v7, v8, :cond_9

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    goto :goto_4

    :cond_9
    :goto_5
    iget-boolean v6, v1, Lcom/google/android/gms/ads/internal/overlay/d;->n:Z

    const/16 v7, 0x2e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Delay onShow to next orientation change: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/ads/internal/overlay/d;->a(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/hy;->a(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v2}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    :cond_a
    iget-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->l:Z

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    const/high16 v6, -0x1000000

    :goto_6
    invoke-virtual {v2, v6}, Lcom/google/android/gms/ads/internal/overlay/h;->setBackgroundColor(I)V

    goto :goto_7

    :cond_b
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    sget v6, Lcom/google/android/gms/ads/internal/overlay/d;->d:I

    goto :goto_6

    :goto_7
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v3, v1, Lcom/google/android/gms/ads/internal/overlay/d;->r:Z

    if-eqz p1, :cond_12

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->f()Lcom/google/android/gms/internal/oa;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->s()Lcom/google/android/gms/internal/pr;

    move-result-object v2

    move-object v9, v2

    goto :goto_8

    :cond_c
    move-object v9, v5

    :goto_8
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->t()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_9

    :cond_d
    move-object v10, v5

    :goto_9
    const/4 v11, 0x1

    const/4 v13, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v14, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/km;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->e()Lcom/google/android/gms/ads/internal/br;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_a

    :cond_e
    move-object/from16 v17, v5

    :goto_a
    invoke-static {}, Lcom/google/android/gms/internal/asl;->a()Lcom/google/android/gms/internal/asl;

    move-result-object v18

    move v12, v4

    invoke-virtual/range {v7 .. v18}, Lcom/google/android/gms/internal/oa;->a(Landroid/content/Context;Lcom/google/android/gms/internal/pr;Ljava/lang/String;ZZLcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ao;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/asl;)Lcom/google/android/gms/internal/nu;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->i:Lcom/google/android/gms/ads/internal/overlay/t;

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/pk;->a()Lcom/google/android/gms/ads/internal/bs;

    move-result-object v5

    :cond_f
    move-object v13, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v6 .. v15}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/aty;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/t;ZLcom/google/android/gms/ads/internal/gmsg/ae;Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/bhx;Lcom/google/android/gms/internal/fx;)V

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/ads/internal/overlay/e;->a:Lcom/google/android/gms/internal/pl;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/pl;)V

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/nu;->loadUrl(Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/nu;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/nu;->b(Lcom/google/android/gms/ads/internal/overlay/d;)V

    goto :goto_c

    :cond_11
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v2, "Error obtaining webview."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    iput-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/nu;->setContext(Landroid/content/Context;)V

    :cond_13
    :goto_c
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_14

    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_14

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v5}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    iget-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->l:Z

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->G()V

    :cond_15
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v5}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6, v6}, Lcom/google/android/gms/ads/internal/overlay/h;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_16

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/d;->n:Z

    if-nez v0, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/d;->s()V

    :cond_16
    invoke-direct {v1, v4}, Lcom/google/android/gms/ads/internal/overlay/d;->a(Z)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->v()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/ads/internal/overlay/d;->a(ZZ)V

    :cond_17
    return-void

    :cond_18
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final r()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->s:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->s:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->c:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/nu;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->q:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Lcom/google/android/gms/ads/internal/overlay/d;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->p:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->p:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/axt;->aI:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/d;->n()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final s()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->n()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->c:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/axt;->cZ:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/axt;->da:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/axt;->db:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/axt;->dc:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->k:Z

    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/km;

    iget v3, v3, Lcom/google/android/gms/internal/km;->c:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_1

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->c:I

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->u:Z

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/q;->a:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->l:Z

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->l:Z

    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/axt;->bK:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->l:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    iget v3, v3, Lcom/google/android/gms/ads/internal/q;->e:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/j;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/j;-><init>(Lcom/google/android/gms/ads/internal/overlay/d;Lcom/google/android/gms/ads/internal/overlay/f;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ha;->i()Lcom/google/android/gms/internal/lf;

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/n;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->u:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/n;->g()V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/internal/aty;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/internal/aty;

    invoke-interface {p1}, Lcom/google/android/gms/internal/aty;->e()V

    :cond_6
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/km;

    iget-object v5, v5, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    invoke-direct {p1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/internal/overlay/h;->setId(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/g;

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/d;->b(Z)V

    return-void

    :pswitch_1
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/nu;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/i;-><init>(Lcom/google/android/gms/internal/nu;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/d;->b(Z)V

    return-void

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/d;->b(Z)V

    return-void

    :goto_2
    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/g; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/g;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->c:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->i:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->i:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->r:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->h:Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/axt;->cM:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/k;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/hs;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    const/16 v0, 0x800

    const/16 v1, 0x400

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method public final a(ZZ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/axt;->aK:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/q;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/q;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/bhw;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    const-string v5, "useCustomClose"

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/bhw;-><init>(Lcom/google/android/gms/internal/nu;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/bhw;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/o;->a(ZZ)V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/d;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->i:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->r:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->i:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->h:Z

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->c:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->c:I

    return-void
.end method

.method public final e()Z
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->c:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    const-string v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/nu;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/axt;->cN:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hy;->b(Lcom/google/android/gms/internal/nu;)Z

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/n;->f()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/axt;->cN:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hy;->b(Lcom/google/android/gms/internal/nu;)Z

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/d;->b()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/n;->d()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/axt;->cN:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/nu;)Z

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/d;->r()V

    return-void
.end method

.method public final j()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/axt;->cN:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/nu;)Z

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/d;->r()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/h;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/d;->r()V

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->r:Z

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/h;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/d;->a(Z)V

    return-void
.end method

.method final n()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/h;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/i;->d:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/nu;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/nu;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/i;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/i;->a:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/i;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/nu;->setContext(Landroid/content/Context;)V

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->e:Lcom/google/android/gms/internal/nu;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/n;->n_()V

    :cond_4
    return-void
.end method

.method public final o()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->n:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/d;->s()V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->m:Lcom/google/android/gms/ads/internal/overlay/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/h;->a:Z

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->q:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->p:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
