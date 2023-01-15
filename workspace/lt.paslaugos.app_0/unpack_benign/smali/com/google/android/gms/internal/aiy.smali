.class public final Lcom/google/android/gms/internal/aiy;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private d:Z

.field private e:Lcom/google/android/gms/internal/aja;

.field private f:Lcom/google/android/gms/internal/aja;


# direct methods
.method private constructor <init>(JJLcom/google/android/gms/internal/ajb;ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/google/android/gms/internal/ajb;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/aiy;->d:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/aiy;->e:Lcom/google/android/gms/internal/aja;

    iput-object v2, v0, Lcom/google/android/gms/internal/aiy;->f:Lcom/google/android/gms/internal/aja;

    move/from16 v2, p6

    iput v2, v0, Lcom/google/android/gms/internal/aiy;->a:I

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/internal/aiy;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    const-string v2, "sampling"

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x64

    if-eqz v2, :cond_0

    const-string v2, "sampling"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/aiy;->b:I

    goto :goto_0

    :cond_0
    iput v3, v0, Lcom/google/android/gms/internal/aiy;->b:I

    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/aiy;->b:I

    if-eq v2, v3, :cond_1

    const-string v2, "FirebasePerformance"

    iget v3, v0, Lcom/google/android/gms/internal/aiy;->b:I

    iget v4, v0, Lcom/google/android/gms/internal/aiy;->a:I

    const/16 v5, 0x3b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "RateLimiter sampling rate:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bucketId: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/aiy;->a:I

    iget v3, v0, Lcom/google/android/gms/internal/aiy;->b:I

    if-gt v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, v0, Lcom/google/android/gms/internal/aiy;->c:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/aiy;->c:Z

    if-nez v1, :cond_3

    const-string v1, "FirebasePerformance"

    const-string v2, "logging is disabled because device sampling"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/aja;

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x1f4

    sget-object v9, Lcom/google/android/gms/internal/aiz;->b:Lcom/google/android/gms/internal/aiz;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/aiy;->d:Z

    move-object v2, v1

    move-object/from16 v7, p5

    move-object v8, v11

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/aja;-><init>(JJLcom/google/android/gms/internal/ajb;Ljava/util/Map;Lcom/google/android/gms/internal/aiz;Z)V

    iput-object v1, v0, Lcom/google/android/gms/internal/aiy;->e:Lcom/google/android/gms/internal/aja;

    new-instance v1, Lcom/google/android/gms/internal/aja;

    sget-object v9, Lcom/google/android/gms/internal/aiz;->a:Lcom/google/android/gms/internal/aiz;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/aiy;->d:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/aja;-><init>(JJLcom/google/android/gms/internal/ajb;Ljava/util/Map;Lcom/google/android/gms/internal/aiz;Z)V

    iput-object v1, v0, Lcom/google/android/gms/internal/aiy;->f:Lcom/google/android/gms/internal/aja;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 8

    new-instance v5, Lcom/google/android/gms/internal/ajb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ajb;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "android_id"

    invoke-static {p3, p4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/aiy;->a(Ljava/lang/String;)I

    move-result v6

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/aiy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/aiy;-><init>(JJLcom/google/android/gms/internal/ajb;ILjava/util/List;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/aji;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/aiy;->d:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aji;->a([B)I

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/aji;->a([B)I

    move-result v0

    :goto_0
    rem-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/aiy;->a(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "1.0.0.184862077"

    const/4 v3, 0x2

    aput-object p1, v2, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object p1, v2, v4

    const-string v3, "_fireperf1:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/aiy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "fireperf:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_limits"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, p1, v5}, Lcom/google/android/gms/internal/aba;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :try_start_0
    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-ltz v5, :cond_2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_0
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, p0, v4

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aiy;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aiy;->e:Lcom/google/android/gms/internal/aja;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aja;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aiy;->f:Lcom/google/android/gms/internal/aja;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aja;->a(Z)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ajp;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aiy;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ajd;->e:Lcom/google/android/gms/internal/ajd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ajd;->f:Lcom/google/android/gms/internal/ajd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aiy;->f:Lcom/google/android/gms/internal/aja;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aja;->a(Lcom/google/android/gms/internal/ajp;)Z

    move-result p1

    return p1

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/aiy;->e:Lcom/google/android/gms/internal/aja;

    goto :goto_1

    :cond_5
    return v1
.end method
