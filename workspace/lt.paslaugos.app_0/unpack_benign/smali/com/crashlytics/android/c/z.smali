.class Lcom/crashlytics/android/c/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/c/z$c;,
        Lcom/crashlytics/android/c/z$b;,
        Lcom/crashlytics/android/c/z$l;,
        Lcom/crashlytics/android/c/z$g;,
        Lcom/crashlytics/android/c/z$m;,
        Lcom/crashlytics/android/c/z$f;,
        Lcom/crashlytics/android/c/z$a;,
        Lcom/crashlytics/android/c/z$h;,
        Lcom/crashlytics/android/c/z$d;,
        Lcom/crashlytics/android/c/z$e;,
        Lcom/crashlytics/android/c/z$i;,
        Lcom/crashlytics/android/c/z$k;,
        Lcom/crashlytics/android/c/z$j;
    }
.end annotation


# static fields
.field private static final a:Lcom/crashlytics/android/c/a/a/e;

.field private static final b:[Lcom/crashlytics/android/c/z$j;

.field private static final c:[Lcom/crashlytics/android/c/z$m;

.field private static final d:[Lcom/crashlytics/android/c/z$g;

.field private static final e:[Lcom/crashlytics/android/c/z$b;

.field private static final f:[Lcom/crashlytics/android/c/z$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/crashlytics/android/c/a/a/e;

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/c/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/crashlytics/android/c/z;->a:Lcom/crashlytics/android/c/a/a/e;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/crashlytics/android/c/z$j;

    sput-object v1, Lcom/crashlytics/android/c/z;->b:[Lcom/crashlytics/android/c/z$j;

    new-array v1, v0, [Lcom/crashlytics/android/c/z$m;

    sput-object v1, Lcom/crashlytics/android/c/z;->c:[Lcom/crashlytics/android/c/z$m;

    new-array v1, v0, [Lcom/crashlytics/android/c/z$g;

    sput-object v1, Lcom/crashlytics/android/c/z;->d:[Lcom/crashlytics/android/c/z$g;

    new-array v1, v0, [Lcom/crashlytics/android/c/z$b;

    sput-object v1, Lcom/crashlytics/android/c/z;->e:[Lcom/crashlytics/android/c/z$b;

    new-array v0, v0, [Lcom/crashlytics/android/c/z$c;

    sput-object v0, Lcom/crashlytics/android/c/z;->f:[Lcom/crashlytics/android/c/z$c;

    return-void
.end method

.method private static a(Lcom/crashlytics/android/c/a/a/d;Lcom/crashlytics/android/c/u;Ljava/util/Map;)Lcom/crashlytics/android/c/z$e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/c/a/a/d;",
            "Lcom/crashlytics/android/c/u;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/c/z$e;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->b:Lcom/crashlytics/android/c/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->b:Lcom/crashlytics/android/c/a/a/e;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/z;->a:Lcom/crashlytics/android/c/a/a/e;

    :goto_0
    new-instance v1, Lcom/crashlytics/android/c/z$l;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/c/z$l;-><init>(Lcom/crashlytics/android/c/a/a/e;)V

    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->c:[Lcom/crashlytics/android/c/a/a/f;

    invoke-static {v0}, Lcom/crashlytics/android/c/z;->a([Lcom/crashlytics/android/c/a/a/f;)Lcom/crashlytics/android/c/z$k;

    move-result-object v0

    iget-object v2, p0, Lcom/crashlytics/android/c/a/a/d;->d:[Lcom/crashlytics/android/c/a/a/a;

    invoke-static {v2}, Lcom/crashlytics/android/c/z;->a([Lcom/crashlytics/android/c/a/a/a;)Lcom/crashlytics/android/c/z$k;

    move-result-object v2

    new-instance v3, Lcom/crashlytics/android/c/z$f;

    invoke-direct {v3, v1, v0, v2}, Lcom/crashlytics/android/c/z$f;-><init>(Lcom/crashlytics/android/c/z$l;Lcom/crashlytics/android/c/z$k;Lcom/crashlytics/android/c/z$k;)V

    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->e:[Lcom/crashlytics/android/c/a/a/b;

    invoke-static {v0, p2}, Lcom/crashlytics/android/c/z;->a([Lcom/crashlytics/android/c/a/a/b;Ljava/util/Map;)[Lcom/crashlytics/android/c/a/a/b;

    move-result-object p2

    invoke-static {p2}, Lcom/crashlytics/android/c/z;->a([Lcom/crashlytics/android/c/a/a/b;)Lcom/crashlytics/android/c/z$k;

    move-result-object p2

    new-instance v0, Lcom/crashlytics/android/c/z$a;

    invoke-direct {v0, v3, p2}, Lcom/crashlytics/android/c/z$a;-><init>(Lcom/crashlytics/android/c/z$f;Lcom/crashlytics/android/c/z$k;)V

    iget-object p2, p0, Lcom/crashlytics/android/c/a/a/d;->f:Lcom/crashlytics/android/c/a/a/c;

    invoke-static {p2}, Lcom/crashlytics/android/c/z;->a(Lcom/crashlytics/android/c/a/a/c;)Lcom/crashlytics/android/c/z$j;

    move-result-object p2

    invoke-virtual {p1}, Lcom/crashlytics/android/c/u;->a()Lcom/crashlytics/android/c/b;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "No log data to include with this event."

    invoke-interface {v2, v3, v4}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/crashlytics/android/c/u;->b()V

    if-eqz v1, :cond_2

    new-instance p1, Lcom/crashlytics/android/c/z$h;

    invoke-direct {p1, v1}, Lcom/crashlytics/android/c/z$h;-><init>(Lcom/crashlytics/android/c/b;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/crashlytics/android/c/z$i;

    invoke-direct {p1}, Lcom/crashlytics/android/c/z$i;-><init>()V

    :goto_1
    new-instance v1, Lcom/crashlytics/android/c/z$e;

    iget-wide v2, p0, Lcom/crashlytics/android/c/a/a/d;->a:J

    const-string p0, "ndk-crash"

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/crashlytics/android/c/z$j;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 p2, 0x2

    aput-object p1, v4, p2

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/crashlytics/android/c/z$e;-><init>(JLjava/lang/String;[Lcom/crashlytics/android/c/z$j;)V

    return-object v1
.end method

.method private static a(Lcom/crashlytics/android/c/a/a/c;)Lcom/crashlytics/android/c/z$j;
    .locals 12

    if-nez p0, :cond_0

    new-instance p0, Lcom/crashlytics/android/c/z$i;

    invoke-direct {p0}, Lcom/crashlytics/android/c/z$i;-><init>()V

    return-object p0

    :cond_0
    new-instance v9, Lcom/crashlytics/android/c/z$d;

    iget v0, p0, Lcom/crashlytics/android/c/a/a/c;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    iget v2, p0, Lcom/crashlytics/android/c/a/a/c;->g:I

    iget-boolean v3, p0, Lcom/crashlytics/android/c/a/a/c;->h:Z

    iget v4, p0, Lcom/crashlytics/android/c/a/a/c;->a:I

    iget-wide v5, p0, Lcom/crashlytics/android/c/a/a/c;->b:J

    iget-wide v7, p0, Lcom/crashlytics/android/c/a/a/c;->d:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/crashlytics/android/c/a/a/c;->c:J

    iget-wide v10, p0, Lcom/crashlytics/android/c/a/a/c;->e:J

    sub-long/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/crashlytics/android/c/z$d;-><init>(FIZIJJ)V

    return-object v9
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/a;)Lcom/crashlytics/android/c/z$k;
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/z$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/z;->e:[Lcom/crashlytics/android/c/z$b;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/crashlytics/android/c/z$b;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/c/z$b;-><init>(Lcom/crashlytics/android/c/a/a/a;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/crashlytics/android/c/z$k;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/z$k;-><init>([Lcom/crashlytics/android/c/z$j;)V

    return-object p0
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/b;)Lcom/crashlytics/android/c/z$k;
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/z$c;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/z;->f:[Lcom/crashlytics/android/c/z$c;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/crashlytics/android/c/z$c;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/c/z$c;-><init>(Lcom/crashlytics/android/c/a/a/b;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/crashlytics/android/c/z$k;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/z$k;-><init>([Lcom/crashlytics/android/c/z$j;)V

    return-object p0
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/f$a;)Lcom/crashlytics/android/c/z$k;
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/z$g;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/z;->d:[Lcom/crashlytics/android/c/z$g;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/crashlytics/android/c/z$g;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/c/z$g;-><init>(Lcom/crashlytics/android/c/a/a/f$a;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/crashlytics/android/c/z$k;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/z$k;-><init>([Lcom/crashlytics/android/c/z$j;)V

    return-object p0
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/f;)Lcom/crashlytics/android/c/z$k;
    .locals 5

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/z$m;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/z;->c:[Lcom/crashlytics/android/c/z$m;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    new-instance v3, Lcom/crashlytics/android/c/z$m;

    iget-object v4, v2, Lcom/crashlytics/android/c/a/a/f;->c:[Lcom/crashlytics/android/c/a/a/f$a;

    invoke-static {v4}, Lcom/crashlytics/android/c/z;->a([Lcom/crashlytics/android/c/a/a/f$a;)Lcom/crashlytics/android/c/z$k;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/crashlytics/android/c/z$m;-><init>(Lcom/crashlytics/android/c/a/a/f;Lcom/crashlytics/android/c/z$k;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/crashlytics/android/c/z$k;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/z$k;-><init>([Lcom/crashlytics/android/c/z$j;)V

    return-object p0
.end method

.method public static a(Lcom/crashlytics/android/c/a/a/d;Lcom/crashlytics/android/c/u;Ljava/util/Map;Lcom/crashlytics/android/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/c/a/a/d;",
            "Lcom/crashlytics/android/c/u;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/c/e;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/c/z;->a(Lcom/crashlytics/android/c/a/a/d;Lcom/crashlytics/android/c/u;Ljava/util/Map;)Lcom/crashlytics/android/c/z$e;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/crashlytics/android/c/z$e;->b(Lcom/crashlytics/android/c/e;)V

    return-void
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/b;Ljava/util/Map;)[Lcom/crashlytics/android/c/a/a/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/crashlytics/android/c/a/a/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/crashlytics/android/c/a/a/b;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/crashlytics/android/c/a/a/b;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/crashlytics/android/c/a/a/b;->b:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/a/a/b;

    :goto_1
    array-length v1, v0

    if-ge p1, v1, :cond_1

    new-instance v1, Lcom/crashlytics/android/c/a/a/b;

    aget-object v2, p0, p1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object v3, p0, p1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/crashlytics/android/c/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method static synthetic a()[Lcom/crashlytics/android/c/z$j;
    .locals 1

    sget-object v0, Lcom/crashlytics/android/c/z;->b:[Lcom/crashlytics/android/c/z$j;

    return-object v0
.end method
