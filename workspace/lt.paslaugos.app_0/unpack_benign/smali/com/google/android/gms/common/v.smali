.class Lcom/google/android/gms/common/v;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lcom/google/android/gms/common/v;


# instance fields
.field final a:Z

.field final b:Ljava/lang/Throwable;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/v;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/common/v;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/v;->c:Lcom/google/android/gms/common/v;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/v;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/common/v;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/v;->b:Ljava/lang/Throwable;

    return-void
.end method

.method static a()Lcom/google/android/gms/common/v;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/v;->c:Lcom/google/android/gms/common/v;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/gms/common/v;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/v;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/n;ZZ)Lcom/google/android/gms/common/v;
    .locals 7

    new-instance v6, Lcom/google/android/gms/common/x;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/x;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/n;ZZLcom/google/android/gms/common/w;)V

    return-object v6
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/v;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/v;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/v;->d:Ljava/lang/String;

    return-object v0
.end method
