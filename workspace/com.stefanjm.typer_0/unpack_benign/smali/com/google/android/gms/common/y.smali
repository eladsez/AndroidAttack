.class Lcom/google/android/gms/common/y;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/common/y;


# instance fields
.field final a:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/common/y;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/y;->b:Lcom/google/android/gms/common/y;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/y;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/common/y;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/y;->d:Ljava/lang/Throwable;

    return-void
.end method

.method static a()Lcom/google/android/gms/common/y;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/y;->b:Lcom/google/android/gms/common/y;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/gms/common/y;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/y;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/i$a;ZZ)Lcom/google/android/gms/common/y;
    .locals 7

    new-instance v6, Lcom/google/android/gms/common/aa;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/aa;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/i$a;ZZLcom/google/android/gms/common/z;)V

    return-object v6
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/y;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/y;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/y;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/y;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v0, "GoogleCertificatesRslt"

    invoke-virtual {p0}, Lcom/google/android/gms/common/y;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/y;->d:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string v0, "GoogleCertificatesRslt"

    invoke-virtual {p0}, Lcom/google/android/gms/common/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
