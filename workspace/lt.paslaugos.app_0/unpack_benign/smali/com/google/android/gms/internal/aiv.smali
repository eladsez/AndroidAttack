.class final Lcom/google/android/gms/internal/aiv;
.super Lcom/google/android/gms/internal/aix;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ajn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ajn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aix;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "FirebasePerformance"

    const-string v2, "getResultUrl throws exception"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static a(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/aiv;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "FirebasePerformance"

    const-string v2, "URL is missing:"

    iget-object v3, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ajn;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/aiv;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "FirebasePerformance"

    const-string v2, "URL cannot be parsed"

    :goto_1
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/aiv;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xff

    if-gt v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_4

    const-string v0, "FirebasePerformance"

    const-string v2, "URL host is null or invalid"

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_7

    const-string v0, "FirebasePerformance"

    const-string v2, "URL scheme is null or invalid"

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_9

    const-string v0, "FirebasePerformance"

    const-string v2, "URL user info is null"

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-lez v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_c

    const-string v0, "FirebasePerformance"

    const-string v2, "URL port is less than or equal to 0"

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_e

    const-string v0, "FirebasePerformance"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->b:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP Method is null or invalid: "

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_10

    const-string v0, "FirebasePerformance"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->f:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP ResponseCode is a negative value:"

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->c:Ljava/lang/Long;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aiv;->b(J)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "FirebasePerformance"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->c:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Request Payload is a negative value:"

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->d:Ljava/lang/Long;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aiv;->b(J)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "FirebasePerformance"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->d:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Response Payload is a negative value:"

    goto/16 :goto_8

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->h:Ljava/lang/Long;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_13

    goto/16 :goto_c

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->i:Ljava/lang/Long;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aiv;->a(J)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "FirebasePerformance"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->i:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Time to complete the request is a negative value:"

    goto/16 :goto_8

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->j:Ljava/lang/Long;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->j:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aiv;->a(J)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "FirebasePerformance"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->j:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Time from the start of the request to the start of the response is null or a negative value:"

    goto/16 :goto_8

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->k:Ljava/lang/Long;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->k:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_16

    goto :goto_b

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->f:Ljava/lang/Integer;

    if-nez v0, :cond_17

    const-string v0, "FirebasePerformance"

    const-string v2, "Did not receive a HTTP Response Code"

    goto/16 :goto_1

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->g:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajn;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/aiv;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "FirebasePerformance"

    const-string v1, "The content type of the response is not a valid content-type:"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_18
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->g:Ljava/lang/String;

    :cond_19
    return v3

    :cond_1a
    :goto_b
    const-string v0, "FirebasePerformance"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->k:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x58

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Time from the start of the request to the end of the response is null, negative or zero:"

    goto/16 :goto_8

    :cond_1b
    :goto_c
    const-string v0, "FirebasePerformance"

    iget-object v2, p0, Lcom/google/android/gms/internal/aiv;->a:Lcom/google/android/gms/internal/ajn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajn;->h:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Start time of the request is null, or zero, or a negative value:"

    goto/16 :goto_8
.end method
