.class final Lcom/google/android/gms/common/aa;
.super Lcom/google/android/gms/common/y;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/common/i$a;

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/i$a;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/google/android/gms/common/y;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/common/aa;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/aa;->c:Lcom/google/android/gms/common/i$a;

    iput-boolean p3, p0, Lcom/google/android/gms/common/aa;->d:Z

    iput-boolean p4, p0, Lcom/google/android/gms/common/aa;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/i$a;ZZLcom/google/android/gms/common/z;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/aa;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/i$a;ZZ)V

    return-void
.end method


# virtual methods
.method final b()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/common/aa;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "debug cert rejected"

    goto :goto_0

    :cond_0
    const-string v0, "not whitelisted"

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/aa;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/aa;->c:Lcom/google/android/gms/common/i$a;

    const-string v3, "SHA-1"

    invoke-static {v3}, Lcom/google/android/gms/common/util/a;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/i$a;->a()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/util/l;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/common/aa;->d:Z

    const/16 v4, 0x2c

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": pkg="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sha1="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", atk="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ver=12451009.false"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
