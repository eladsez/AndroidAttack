.class final Lcom/google/android/gms/internal/sy;
.super Lcom/google/android/gms/internal/wc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wc;-><init>(Lcom/google/android/gms/internal/vc;)V

    return-void
.end method

.method private final a(DLcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/sy;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/yq;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(JLcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/sy;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/yq;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Lcom/google/android/gms/internal/yo;Ljava/lang/String;[Lcom/google/android/gms/internal/yz;J)Ljava/lang/Boolean;
    .locals 8

    iget-object v0, p1, Lcom/google/android/gms/internal/yo;->d:Lcom/google/android/gms/internal/yq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/yo;->d:Lcom/google/android/gms/internal/yq;

    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/internal/sy;->a(JLcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;

    move-result-object p4

    if-nez p4, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iget-object p5, p1, Lcom/google/android/gms/internal/yo;->c:[Lcom/google/android/gms/internal/yp;

    array-length v0, p5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p5, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/yp;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "null or empty param name in filter. event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    iget-object v4, v4, Lcom/google/android/gms/internal/yp;->d:Ljava/lang/String;

    invoke-interface {p4, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p5, Landroid/support/v4/g/a;

    invoke-direct {p5}, Landroid/support/v4/g/a;-><init>()V

    array-length v0, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_8

    aget-object v4, p3, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-interface {p4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/google/android/gms/internal/yz;->c:Ljava/lang/Long;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/yz;->c:Ljava/lang/Long;

    :goto_2
    invoke-interface {p5, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v5, v4, Lcom/google/android/gms/internal/yz;->d:Ljava/lang/Double;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/yz;->d:Ljava/lang/Double;

    goto :goto_2

    :cond_5
    iget-object v5, v4, Lcom/google/android/gms/internal/yz;->b:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/yz;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "Unknown value for param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    iget-object p5, v4, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/tz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object p1, p1, Lcom/google/android/gms/internal/yo;->c:[Lcom/google/android/gms/internal/yp;

    array-length p3, p1

    const/4 p4, 0x0

    :goto_4
    const/4 v0, 0x1

    if-ge p4, p3, :cond_17

    aget-object v3, p1, p4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v3, Lcom/google/android/gms/internal/yp;->c:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v3, Lcom/google/android/gms/internal/yp;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "Event has empty param name. event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_9
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_c

    iget-object v7, v3, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "No number filter for long param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/tz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_a
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v3, v3, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    invoke-direct {p0, v5, v6, v3}, Lcom/google/android/gms/internal/sy;->a(JLcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_b

    return-object v2

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    if-eqz v0, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_f

    iget-object v7, v3, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    if-nez v7, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "No number filter for double param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/tz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_d
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v3, v3, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    invoke-direct {p0, v5, v6, v3}, Lcom/google/android/gms/internal/sy;->a(DLcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_e

    return-object v2

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    if-eqz v0, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_f
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_15

    iget-object v7, v3, Lcom/google/android/gms/internal/yp;->a:Lcom/google/android/gms/internal/ys;

    if-eqz v7, :cond_10

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/yp;->a:Lcom/google/android/gms/internal/ys;

    invoke-direct {p0, v6, v3}, Lcom/google/android/gms/internal/sy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ys;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_5

    :cond_10
    iget-object v7, v3, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    if-eqz v7, :cond_14

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/yk;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v3, v3, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    invoke-direct {p0, v6, v3}, Lcom/google/android/gms/internal/sy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_5
    if-nez v3, :cond_11

    return-object v2

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    if-eqz v0, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_12
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_4

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "Invalid param value for number filter. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/tz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "No filter for String param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/tz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_15
    if-nez v6, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "Missing param for filter. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/tz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "Unknown param type. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/tz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    if-nez p3, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_5
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    const/16 p2, 0x42

    :goto_2
    :try_start_0
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p1, p2, p6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/yk;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/sy;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/yq;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/ys;)Ljava/lang/Boolean;
    .locals 10

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->d:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->d:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->c:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_7

    if-eq v5, v4, :cond_7

    if-ne v5, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->b:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->b:Ljava/lang/String;

    :goto_2
    move-object v7, v1

    iget-object v1, p2, Lcom/google/android/gms/internal/ys;->d:[Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v8, v0

    goto :goto_4

    :cond_8
    iget-object p2, p2, Lcom/google/android/gms/internal/ys;->d:[Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v8, p2

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v8, p2, v3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move-object v8, v1

    :goto_4
    if-ne v5, v4, :cond_b

    move-object v9, v7

    goto :goto_5

    :cond_b
    move-object v9, v0

    :goto_5
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/sy;->a(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_6
    return-object v0
.end method

.method private static a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/yq;D)Ljava/lang/Boolean;
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/yq;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/yq;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/yq;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/yq;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/yq;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/yq;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/yq;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p1, Lcom/google/android/gms/internal/yq;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/yq;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/yk;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/yq;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/yk;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p1, Lcom/google/android/gms/internal/yq;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/yq;->e:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    move-object v3, v1

    goto :goto_1

    :catch_0
    :cond_5
    :goto_0
    return-object v1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/yq;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/yk;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return-object v1

    :cond_7
    :try_start_1
    new-instance v3, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/yq;->c:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    move-object v4, p1

    :goto_1
    if-ne v0, v2, :cond_8

    if-nez p1, :cond_9

    return-object v1

    :cond_8
    if-eqz v3, :cond_10

    :cond_9
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v2, :cond_a

    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_a

    const/4 v5, 0x1

    :cond_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_c

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_b

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v2, :cond_b

    const/4 v5, 0x1

    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_d

    const/4 v5, 0x1

    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_e

    const/4 v5, 0x1

    :cond_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v2, :cond_f

    const/4 v5, 0x1

    :cond_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_1
    :cond_10
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a(Ljava/lang/String;[Lcom/google/android/gms/internal/yy;[Lcom/google/android/gms/internal/zd;)[Lcom/google/android/gms/internal/yx;
    .locals 55

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Landroid/support/v4/g/a;

    invoke-direct {v12}, Landroid/support/v4/g/a;-><init>()V

    new-instance v10, Landroid/support/v4/g/a;

    invoke-direct {v10}, Landroid/support/v4/g/a;-><init>()V

    new-instance v9, Landroid/support/v4/g/a;

    invoke-direct {v9}, Landroid/support/v4/g/a;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/tc;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zc;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget-object v8, v3, Lcom/google/android/gms/internal/zc;->a:[J

    array-length v8, v8

    shl-int/lit8 v8, v8, 0x6

    if-ge v6, v8, :cond_3

    iget-object v8, v3, Lcom/google/android/gms/internal/zc;->a:[J

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/yk;->a([JI)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v8

    move-object/from16 v23, v0

    const-string v0, "Filter already evaluated. audience ID, filter ID"

    move-object/from16 v24, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v25, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v1, v9}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v3, Lcom/google/android/gms/internal/zc;->b:[J

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/yk;->a([JI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_1
    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v25, v9

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v9, v25

    goto :goto_1

    :cond_3
    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v25, v9

    new-instance v0, Lcom/google/android/gms/internal/yx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/yx;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/yx;->d:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/google/android/gms/internal/yx;->c:Lcom/google/android/gms/internal/zc;

    new-instance v1, Lcom/google/android/gms/internal/zc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zc;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/yx;->b:Lcom/google/android/gms/internal/zc;

    iget-object v1, v0, Lcom/google/android/gms/internal/yx;->b:Lcom/google/android/gms/internal/zc;

    invoke-static {v4}, Lcom/google/android/gms/internal/yk;->a(Ljava/util/BitSet;)[J

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zc;->b:[J

    iget-object v0, v0, Lcom/google/android/gms/internal/yx;->b:Lcom/google/android/gms/internal/zc;

    invoke-static {v5}, Lcom/google/android/gms/internal/yk;->a(Ljava/util/BitSet;)[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zc;->a:[J

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    goto/16 :goto_0

    :cond_4
    move-object/from16 v25, v9

    if-eqz v13, :cond_26

    new-instance v5, Landroid/support/v4/g/a;

    invoke-direct {v5}, Landroid/support/v4/g/a;-><init>()V

    array-length v3, v13

    const-wide/16 v23, 0x0

    move-wide/from16 v16, v23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_26

    aget-object v8, v13, v2

    iget-object v9, v8, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->v()Lcom/google/android/gms/internal/tb;

    move-result-object v6

    move/from16 v28, v2

    sget-object v2, Lcom/google/android/gms/internal/tq;->O:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v6, v15, v2}, Lcom/google/android/gms/internal/tb;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ts;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->p()Lcom/google/android/gms/internal/yk;

    const-string v2, "_eid"

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/yk;->b(Lcom/google/android/gms/internal/yy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    move/from16 v29, v3

    const-string v3, "_ep"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    move/from16 v29, v3

    :cond_7
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->p()Lcom/google/android/gms/internal/yk;

    const-string v2, "_en"

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/yk;->b(Lcom/google/android/gms/internal/yy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Extra parameter without an event name. eventId"

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v33, v5

    move-object/from16 v32, v10

    move/from16 v22, v28

    move/from16 v26, v29

    const/16 v19, 0x0

    const/16 v28, 0x1

    goto/16 :goto_12

    :cond_8
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v2, v18

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    move-object v3, v0

    move-object/from16 v18, v1

    goto :goto_8

    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2, v15, v6}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_b

    goto/16 :goto_11

    :cond_b
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/yy;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->p()Lcom/google/android/gms/internal/yk;

    const-string v1, "_eid"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yk;->b(Lcom/google/android/gms/internal/yy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_6

    :goto_8
    const-wide/16 v0, 0x1

    sub-long v16, v16, v0

    cmp-long v0, v16, v23

    if-gtz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v2, "Clearing complex main event info. appId"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "delete from main_event_params where app_id=?"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v30, v3

    const/4 v6, 0x1

    :try_start_1
    new-array v3, v6, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v19, 0x0

    :try_start_2
    aput-object v15, v3, v19

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v30, v3

    const/4 v6, 0x1

    :goto_9
    const/16 v19, 0x0

    :goto_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Error clearing complex main event"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b
    move-object/from16 v33, v5

    move-object/from16 v32, v10

    move/from16 v22, v28

    move/from16 v26, v29

    move-object/from16 v1, v30

    const/16 v28, 0x1

    move-object v10, v4

    goto :goto_c

    :cond_c
    move-object/from16 v30, v3

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    move/from16 v22, v28

    move-object/from16 v2, p1

    move/from16 v26, v29

    move-object/from16 v31, v30

    move-object v3, v6

    move-object v6, v5

    move-object/from16 v32, v10

    const/16 v28, 0x1

    move-object v10, v4

    move-wide/from16 v4, v16

    move-object/from16 v33, v6

    move-object/from16 v6, v31

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/yy;)Z

    move-object/from16 v1, v31

    :goto_c
    iget-object v0, v1, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v0, v0

    array-length v2, v10

    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/yz;

    iget-object v2, v1, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, v3, :cond_e

    aget-object v6, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->p()Lcom/google/android/gms/internal/yk;

    move-object/from16 v34, v1

    iget-object v1, v6, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/yk;->a(Lcom/google/android/gms/internal/yy;Ljava/lang/String;)Lcom/google/android/gms/internal/yz;

    move-result-object v1

    if-nez v1, :cond_d

    add-int/lit8 v1, v5, 0x1

    aput-object v6, v0, v5

    move v5, v1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v34

    goto :goto_d

    :cond_e
    move-object/from16 v34, v1

    if-lez v5, :cond_11

    array-length v1, v10

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_f

    aget-object v3, v10, v2

    add-int/lit8 v4, v5, 0x1

    aput-object v3, v0, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_e

    :cond_f
    array-length v1, v0

    if-ne v5, v1, :cond_10

    goto :goto_f

    :cond_10
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/yz;

    :goto_f
    move-object/from16 v31, v0

    move-object v0, v9

    goto :goto_10

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v9

    move-object/from16 v31, v10

    :goto_10
    move-wide/from16 v29, v16

    move-object/from16 v27, v18

    goto/16 :goto_15

    :cond_12
    :goto_11
    move-object/from16 v33, v5

    move-object/from16 v32, v10

    move/from16 v22, v28

    move/from16 v26, v29

    const/16 v19, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {v2, v3, v9, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    move-object v10, v14

    move-object v7, v15

    move-object/from16 v46, v25

    move-object/from16 v47, v32

    move-object/from16 v41, v33

    move-object v14, v11

    move-object v15, v12

    goto/16 :goto_1d

    :cond_13
    move-object/from16 v33, v5

    move-object/from16 v32, v10

    move/from16 v22, v28

    move/from16 v26, v29

    const/16 v19, 0x0

    const/16 v28, 0x1

    move-object v10, v4

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->p()Lcom/google/android/gms/internal/yk;

    const-string v0, "_epc"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/yk;->b(Lcom/google/android/gms/internal/yy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v0, v1

    :cond_14
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v0, v16, v23

    if-gtz v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Complex event with zero extra param count. eventName"

    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v6

    goto :goto_13

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    move-object/from16 v2, p1

    move-object v3, v6

    move-wide/from16 v4, v16

    move-object v0, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/yy;)Z

    :goto_13
    move-object/from16 v27, v0

    move-object/from16 v34, v8

    goto :goto_14

    :cond_16
    move/from16 v26, v3

    move-object/from16 v33, v5

    move-object/from16 v32, v10

    move/from16 v22, v28

    const/16 v19, 0x0

    const/16 v28, 0x1

    move-object v10, v4

    :cond_17
    move-object/from16 v34, v0

    move-object/from16 v27, v1

    :goto_14
    move-object v0, v9

    move-object/from16 v31, v10

    move-wide/from16 v29, v16

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/tk;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/tk;

    iget-object v10, v8, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    iget-object v6, v8, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v20, 0x0

    const/4 v6, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/4 v9, 0x0

    move-object v8, v1

    move-object/from16 v37, v25

    move-object/from16 v9, p1

    move-object/from16 v38, v32

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    move-wide v11, v2

    move-object v3, v14

    move-wide v13, v4

    move-object v5, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v20

    move-object/from16 v19, v6

    move-object/from16 v20, v35

    move-object/from16 v21, v36

    invoke-direct/range {v8 .. v21}, Lcom/google/android/gms/internal/tk;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_16

    :cond_18
    move-object/from16 v39, v11

    move-object/from16 v40, v12

    move-object v3, v14

    move-object v5, v15

    move-object/from16 v37, v25

    move-object/from16 v38, v32

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tk;->a()Lcom/google/android/gms/internal/tk;

    move-result-object v1

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/tk;)V

    iget-wide v8, v1, Lcom/google/android/gms/internal/tk;->c:J

    move-object/from16 v10, v33

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/internal/tc;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_19

    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    :cond_19
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    move-object v11, v1

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v14, v39

    invoke-interface {v14, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Skipping failed audience ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v39, v14

    goto :goto_17

    :cond_1b
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v15, v40

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yx;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v6, v38

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v41, v10

    move-object/from16 v10, v37

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/google/android/gms/internal/yx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/yx;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/yx;->d:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    move-object/from16 v54, v4

    move-object v4, v2

    move-object/from16 v2, v54

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_18
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yo;

    move-object/from16 v42, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    move-object/from16 v43, v11

    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ub;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v11, "Evaluating filter. audience, filter, event"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/internal/yo;->a:Ljava/lang/Integer;

    move-object/from16 v44, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v6

    move-object/from16 v45, v12

    iget-object v12, v1, Lcom/google/android/gms/internal/yo;->b:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v11, v3, v5, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Filter definition"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/tz;->a(Lcom/google/android/gms/internal/yo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :cond_1d
    move-object/from16 v44, v6

    move-object/from16 v45, v12

    :goto_19
    iget-object v2, v1, Lcom/google/android/gms/internal/yo;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/google/android/gms/internal/yo;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v11, 0x100

    if-le v2, v11, :cond_1e

    goto/16 :goto_1b

    :cond_1e
    iget-object v2, v1, Lcom/google/android/gms/internal/yo;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Event filter already evaluated true. audience ID, filter ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v1, Lcom/google/android/gms/internal/yo;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v42

    move-object/from16 v11, v43

    move-object/from16 v6, v44

    move-object/from16 v12, v45

    move-object/from16 v3, p3

    move-object/from16 v5, p1

    goto/16 :goto_18

    :cond_1f
    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v5, v42

    move-object v2, v12

    move-object/from16 v6, p3

    move-object v3, v0

    move-object v11, v4

    move-object/from16 v4, v31

    move-object/from16 v48, v0

    move-object v0, v5

    move-object/from16 v46, v10

    move-object/from16 v47, v44

    move-object/from16 v7, p1

    move-object v10, v6

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/sy;->a(Lcom/google/android/gms/internal/yo;Ljava/lang/String;[Lcom/google/android/gms/internal/yz;J)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Event filter result"

    if-nez v1, :cond_20

    const-string v4, "null"

    goto :goto_1a

    :cond_20
    move-object v4, v1

    :goto_1a
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_21

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_21
    iget-object v2, v12, Lcom/google/android/gms/internal/yo;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v12, Lcom/google/android/gms/internal/yo;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1c

    :cond_22
    :goto_1b
    move-object/from16 v48, v0

    move-object v12, v1

    move-object v11, v4

    move-object/from16 v46, v10

    move-object/from16 v0, v42

    move-object/from16 v47, v44

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Invalid event filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/gms/internal/yo;->a:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    :goto_1c
    move-object v2, v0

    move-object v5, v7

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object/from16 v10, v46

    move-object/from16 v6, v47

    move-object/from16 v0, v48

    move-object/from16 v7, p0

    goto/16 :goto_18

    :cond_24
    move-object/from16 v38, v6

    move-object/from16 v37, v10

    move-object/from16 v39, v14

    move-object/from16 v40, v15

    move-object/from16 v10, v41

    move-object/from16 v7, p0

    goto/16 :goto_17

    :cond_25
    move-object v7, v5

    move-object/from16 v41, v10

    move-object/from16 v46, v37

    move-object/from16 v47, v38

    move-object/from16 v14, v39

    move-object/from16 v15, v40

    move-object v10, v3

    move-object/from16 v1, v27

    move-wide/from16 v16, v29

    move-object/from16 v0, v34

    :goto_1d
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v13, p2

    move-object v11, v14

    move-object v12, v15

    move/from16 v3, v26

    move-object/from16 v5, v41

    move-object/from16 v25, v46

    move-object v15, v7

    move-object v14, v10

    move-object/from16 v10, v47

    move-object/from16 v7, p0

    goto/16 :goto_3

    :cond_26
    move-object/from16 v47, v10

    move-object v10, v14

    move-object v7, v15

    move-object/from16 v46, v25

    const/16 v28, 0x1

    move-object v14, v11

    move-object v15, v12

    if-eqz v10, :cond_3d

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    array-length v1, v10

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_3d

    aget-object v3, v10, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Lcom/google/android/gms/internal/tc;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_27

    new-instance v4, Landroid/support/v4/g/a;

    invoke-direct {v4}, Landroid/support/v4/g/a;-><init>()V

    :cond_27
    iget-object v5, v3, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v8

    const-string v9, "Skipping failed audience ID"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/yx;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v11, v47

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, v46

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/BitSet;

    if-nez v8, :cond_2a

    new-instance v8, Lcom/google/android/gms/internal/yx;

    invoke-direct {v8}, Lcom/google/android/gms/internal/yx;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/internal/yx;->d:Ljava/lang/Boolean;

    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9}, Ljava/util/BitSet;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/util/BitSet;

    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v13, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v49, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/google/android/gms/internal/yr;

    move/from16 v50, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    move-object/from16 v51, v4

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ub;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v4, "Evaluating filter. audience, filter, property"

    move-object/from16 v52, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/gms/internal/yr;->a:Ljava/lang/Integer;

    move-object/from16 v53, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v8

    iget-object v10, v0, Lcom/google/android/gms/internal/yr;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v4, "Filter definition"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/tz;->a(Lcom/google/android/gms/internal/yr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21

    :cond_2b
    move-object/from16 v52, v5

    move-object/from16 v53, v8

    :goto_21
    iget-object v1, v0, Lcom/google/android/gms/internal/yr;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lcom/google/android/gms/internal/yr;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x100

    if-le v1, v4, :cond_2c

    goto/16 :goto_2a

    :cond_2c
    iget-object v1, v0, Lcom/google/android/gms/internal/yr;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v5, "Property filter already evaluated true. audience ID, filter ID"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, v0, Lcom/google/android/gms/internal/yr;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v5, v7, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v4, v51

    move-object/from16 v5, v52

    move-object/from16 v8, v53

    move-object/from16 v7, p1

    :goto_22
    move-object/from16 v10, p3

    goto/16 :goto_20

    :cond_2d
    iget-object v1, v0, Lcom/google/android/gms/internal/yr;->c:Lcom/google/android/gms/internal/yp;

    if-nez v1, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v5, "Missing property filter. property"

    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v4, p1

    move-object/from16 v10, p0

    goto/16 :goto_27

    :cond_2e
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, v1, Lcom/google/android/gms/internal/yp;->c:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, v3, Lcom/google/android/gms/internal/zd;->d:Ljava/lang/Long;

    if-eqz v7, :cond_30

    iget-object v7, v1, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    if-nez v7, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v5, "No number filter for long property. property"

    goto :goto_23

    :cond_2f
    iget-object v7, v3, Lcom/google/android/gms/internal/zd;->d:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, v1, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    move-object/from16 v4, p1

    move-object/from16 v10, p0

    invoke-direct {v10, v7, v8, v1}, Lcom/google/android/gms/internal/sy;->a(JLcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_24
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/sy;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_27

    :cond_30
    move-object/from16 v4, p1

    move-object/from16 v10, p0

    iget-object v7, v3, Lcom/google/android/gms/internal/zd;->e:Ljava/lang/Double;

    if-eqz v7, :cond_32

    iget-object v7, v1, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    if-nez v7, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v5, "No number filter for double property. property"

    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_26
    const/4 v1, 0x0

    goto :goto_27

    :cond_31
    iget-object v7, v3, Lcom/google/android/gms/internal/zd;->e:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v1, v1, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    invoke-direct {v10, v7, v8, v1}, Lcom/google/android/gms/internal/sy;->a(DLcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_24

    :cond_32
    iget-object v7, v3, Lcom/google/android/gms/internal/zd;->c:Ljava/lang/String;

    if-eqz v7, :cond_36

    iget-object v7, v1, Lcom/google/android/gms/internal/yp;->a:Lcom/google/android/gms/internal/ys;

    if-nez v7, :cond_35

    iget-object v7, v1, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    if-nez v7, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v5, "No string or number filter defined. property"

    goto :goto_25

    :cond_33
    iget-object v7, v3, Lcom/google/android/gms/internal/zd;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/yk;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v7, v3, Lcom/google/android/gms/internal/zd;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/yq;

    invoke-direct {v10, v7, v1}, Lcom/google/android/gms/internal/sy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/yq;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_24

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v5, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/internal/zd;->c:Ljava/lang/String;

    invoke-virtual {v1, v5, v7, v8}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_26

    :cond_35
    iget-object v7, v3, Lcom/google/android/gms/internal/zd;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/yp;->a:Lcom/google/android/gms/internal/ys;

    invoke-direct {v10, v7, v1}, Lcom/google/android/gms/internal/sy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ys;)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_24

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v5, "User property has no value, property"

    goto :goto_25

    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v7, "Property filter result"

    if-nez v1, :cond_37

    const-string v8, "null"

    goto :goto_28

    :cond_37
    move-object v8, v1

    :goto_28
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_39

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_38
    :goto_29
    move-object v7, v4

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v4, v51

    move-object/from16 v5, v52

    move-object/from16 v8, v53

    goto/16 :goto_22

    :cond_39
    iget-object v5, v0, Lcom/google/android/gms/internal/yr;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v12, v5}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v0, v0, Lcom/google/android/gms/internal/yr;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_29

    :cond_3a
    :goto_2a
    move-object/from16 v4, p1

    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v5, "Invalid property filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v0, v0, Lcom/google/android/gms/internal/yr;->a:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v7, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    move-object/from16 v47, v11

    move-object/from16 v46, v13

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v4, v51

    move-object/from16 v5, v52

    goto :goto_2b

    :cond_3b
    move-object/from16 v10, p0

    move-object/from16 v47, v11

    move-object/from16 v46, v13

    :goto_2b
    move-object/from16 v10, p3

    goto/16 :goto_1f

    :cond_3c
    move-object/from16 v49, v0

    move/from16 v50, v1

    move-object v4, v7

    move-object/from16 v13, v46

    move-object/from16 v11, v47

    move-object/from16 v10, p0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v10, p3

    goto/16 :goto_1e

    :cond_3d
    move-object v4, v7

    move-object/from16 v13, v46

    move-object/from16 v11, v47

    move-object/from16 v10, p0

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Lcom/google/android/gms/internal/yx;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    :cond_3e
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/yx;

    if-nez v3, :cond_3f

    new-instance v3, Lcom/google/android/gms/internal/yx;

    invoke-direct {v3}, Lcom/google/android/gms/internal/yx;-><init>()V

    :cond_3f
    add-int/lit8 v5, v8, 0x1

    aput-object v3, v1, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v3, Lcom/google/android/gms/internal/yx;->a:Ljava/lang/Integer;

    new-instance v6, Lcom/google/android/gms/internal/zc;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zc;-><init>()V

    iput-object v6, v3, Lcom/google/android/gms/internal/yx;->b:Lcom/google/android/gms/internal/zc;

    iget-object v6, v3, Lcom/google/android/gms/internal/yx;->b:Lcom/google/android/gms/internal/zc;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    invoke-static {v7}, Lcom/google/android/gms/internal/yk;->a(Ljava/util/BitSet;)[J

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/zc;->b:[J

    iget-object v6, v3, Lcom/google/android/gms/internal/yx;->b:Lcom/google/android/gms/internal/zc;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    invoke-static {v7}, Lcom/google/android/gms/internal/yk;->a(Ljava/util/BitSet;)[J

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/zc;->a:[J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/wb;->n()Lcom/google/android/gms/internal/tc;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/internal/yx;->b:Lcom/google/android/gms/internal/zc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/aob;->f()I

    move-result v7

    new-array v7, v7, [B

    array-length v8, v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    const/4 v9, 0x0

    :try_start_4
    invoke-static {v7, v9, v8}, Lcom/google/android/gms/internal/ant;->a([BII)Lcom/google/android/gms/internal/ant;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/ant;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ant;->a()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    invoke-virtual {v3, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "audience_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/tc;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v7, "audience_filter_values"
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v8, 0x5

    const/4 v12, 0x0

    :try_start_6
    invoke-virtual {v0, v7, v12, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    const-wide/16 v16, -0x1

    cmp-long v0, v7, v16

    if-nez v0, :cond_40

    invoke-virtual {v6}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_30

    :catch_3
    move-exception v0

    goto :goto_2d

    :catch_4
    move-exception v0

    const/4 v12, 0x0

    :goto_2d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v6, "Error storing filter results. appId"

    goto :goto_2f

    :catch_5
    move-exception v0

    goto :goto_2e

    :catch_6
    move-exception v0

    const/4 v9, 0x0

    :goto_2e
    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v6, "Configuration loss. Failed to serialize filter results. appId"

    :goto_2f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    :goto_30
    move v8, v5

    goto/16 :goto_2c

    :cond_41
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/yx;

    return-object v0
.end method

.method protected final w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
