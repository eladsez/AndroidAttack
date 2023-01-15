.class public abstract Landroid/support/transition/at;
.super Landroid/support/transition/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/at$a;,
        Landroid/support/transition/at$b;
    }
.end annotation


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/at;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/transition/u;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/transition/at;->h:I

    return-void
.end method

.method private b(Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/support/transition/at$b;
    .locals 6

    new-instance v0, Landroid/support/transition/at$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/transition/at$b;-><init>(Landroid/support/transition/at$1;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/transition/at$b;->a:Z

    iput-boolean v2, v0, Landroid/support/transition/at$b;->b:Z

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Landroid/support/transition/at$b;->c:I

    iget-object v4, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v5, "android:visibility:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Landroid/support/transition/at$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iput v3, v0, Landroid/support/transition/at$b;->c:I

    iput-object v1, v0, Landroid/support/transition/at$b;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_1

    iget-object v4, p2, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p2, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/at$b;->d:I

    iget-object v1, p2, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iput v3, v0, Landroid/support/transition/at$b;->d:I

    :goto_1
    iput-object v1, v0, Landroid/support/transition/at$b;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget p1, v0, Landroid/support/transition/at$b;->c:I

    iget p2, v0, Landroid/support/transition/at$b;->d:I

    if-ne p1, p2, :cond_2

    iget-object p1, v0, Landroid/support/transition/at$b;->e:Landroid/view/ViewGroup;

    iget-object p2, v0, Landroid/support/transition/at$b;->f:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_2

    return-object v0

    :cond_2
    iget p1, v0, Landroid/support/transition/at$b;->c:I

    iget p2, v0, Landroid/support/transition/at$b;->d:I

    if-eq p1, p2, :cond_4

    iget p1, v0, Landroid/support/transition/at$b;->c:I

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    iget p1, v0, Landroid/support/transition/at$b;->d:I

    if-nez p1, :cond_8

    goto :goto_2

    :cond_4
    iget-object p1, v0, Landroid/support/transition/at$b;->f:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-object p1, v0, Landroid/support/transition/at$b;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_8

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    iget p1, v0, Landroid/support/transition/at$b;->d:I

    if-nez p1, :cond_7

    :goto_2
    iput-boolean v1, v0, Landroid/support/transition/at$b;->b:Z

    :goto_3
    iput-boolean v1, v0, Landroid/support/transition/at$b;->a:Z

    goto :goto_5

    :cond_7
    if-nez p2, :cond_8

    iget p1, v0, Landroid/support/transition/at$b;->c:I

    if-nez p1, :cond_8

    :goto_4
    iput-boolean v2, v0, Landroid/support/transition/at$b;->b:Z

    goto :goto_3

    :cond_8
    :goto_5
    return-object v0
.end method

.method private d(Landroid/support/transition/aa;)V
    .locals 3

    iget-object v0, p1, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v1, "android:visibility:parent"

    iget-object v2, p1, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p1, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/aa;ILandroid/support/transition/aa;I)Landroid/animation/Animator;
    .locals 2

    iget p3, p0, Landroid/support/transition/at;->h:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p3, p4, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    invoke-virtual {p0, p3, p5}, Landroid/support/transition/at;->b(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v1

    invoke-virtual {p0, p3, p5}, Landroid/support/transition/at;->a(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object p3

    invoke-direct {p0, v1, p3}, Landroid/support/transition/at;->b(Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/support/transition/at$b;

    move-result-object p3

    iget-boolean p3, p3, Landroid/support/transition/at$b;->a:Z

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    iget-object p3, p4, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/support/transition/at;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;
    .locals 8

    invoke-direct {p0, p2, p3}, Landroid/support/transition/at;->b(Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/support/transition/at$b;

    move-result-object v0

    iget-boolean v1, v0, Landroid/support/transition/at$b;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/transition/at$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/transition/at$b;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Landroid/support/transition/at$b;->b:Z

    if-eqz v1, :cond_1

    iget v5, v0, Landroid/support/transition/at$b;->c:I

    iget v7, v0, Landroid/support/transition/at$b;->d:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/transition/at;->a(Landroid/view/ViewGroup;Landroid/support/transition/aa;ILandroid/support/transition/aa;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_1
    iget v3, v0, Landroid/support/transition/at$b;->c:I

    iget v5, v0, Landroid/support/transition/at$b;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/at;->b(Landroid/view/ViewGroup;Landroid/support/transition/aa;ILandroid/support/transition/aa;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    iput p1, p0, Landroid/support/transition/at;->h:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/support/transition/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/transition/at;->d(Landroid/support/transition/aa;)V

    return-void
.end method

.method public a(Landroid/support/transition/aa;Landroid/support/transition/aa;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/transition/at;->b(Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/support/transition/at$b;

    move-result-object p1

    iget-boolean p2, p1, Landroid/support/transition/at$b;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Landroid/support/transition/at$b;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Landroid/support/transition/at$b;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/transition/at;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/aa;ILandroid/support/transition/aa;I)Landroid/animation/Animator;
    .locals 6

    iget p3, p0, Landroid/support/transition/at;->h:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroid/support/transition/aa;->b:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-eqz p4, :cond_2

    iget-object v2, p4, Landroid/support/transition/aa;->b:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x4

    if-ne p5, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne p3, v2, :cond_6

    :goto_2
    move-object p3, v1

    goto :goto_5

    :cond_5
    :goto_3
    if-eqz v2, :cond_7

    move-object p3, v2

    :cond_6
    :goto_4
    move-object v2, v1

    goto :goto_5

    :cond_7
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_b

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v3}, Landroid/support/transition/at;->a(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v4

    invoke-virtual {p0, v2, v3}, Landroid/support/transition/at;->b(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/support/transition/at;->b(Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/support/transition/at$b;

    move-result-object v4

    iget-boolean v4, v4, Landroid/support/transition/at$b;->a:Z

    if-nez v4, :cond_9

    invoke-static {p1, p3, v2}, Landroid/support/transition/z;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Landroid/support/transition/at;->e:Z

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    move-object p3, v1

    goto :goto_4

    :cond_b
    move-object p3, v1

    move-object v2, p3

    :goto_5
    const/4 v4, 0x0

    if-eqz p3, :cond_d

    if-eqz p2, :cond_d

    iget-object p5, p2, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    aget v1, p5, v4

    aget p5, p5, v3

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v2, v0, v4

    sub-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v0, v0, v3

    sub-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p3, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-static {p1}, Landroid/support/transition/af;->a(Landroid/view/ViewGroup;)Landroid/support/transition/ae;

    move-result-object p5

    invoke-interface {p5, p3}, Landroid/support/transition/ae;->a(Landroid/view/View;)V

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/support/transition/at;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-interface {p5, p3}, Landroid/support/transition/ae;->b(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    new-instance p2, Landroid/support/transition/at$1;

    invoke-direct {p2, p0, p5, p3}, Landroid/support/transition/at$1;-><init>(Landroid/support/transition/at;Landroid/support/transition/ae;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_6
    return-object p1

    :cond_d
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p3

    invoke-static {v2, v4}, Landroid/support/transition/am;->a(Landroid/view/View;I)V

    invoke-virtual {p0, p1, v2, p2, p4}, Landroid/support/transition/at;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance p2, Landroid/support/transition/at$a;

    invoke-direct {p2, v2, p5, v3}, Landroid/support/transition/at$a;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p1, p2}, Landroid/support/transition/a;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p0, p2}, Landroid/support/transition/at;->a(Landroid/support/transition/u$c;)Landroid/support/transition/u;

    goto :goto_7

    :cond_e
    invoke-static {v2, p3}, Landroid/support/transition/am;->a(Landroid/view/View;I)V

    :goto_7
    return-object p1

    :cond_f
    return-object v1
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/support/transition/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/transition/at;->d(Landroid/support/transition/aa;)V

    return-void
.end method
