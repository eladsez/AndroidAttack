.class final Lcom/google/android/gms/common/api/internal/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/cg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/e;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/cg;Lcom/google/android/gms/common/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;",
            "Lcom/google/android/gms/common/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e$b;->a:Lcom/google/android/gms/common/api/internal/cg;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/e$b;->b:Lcom/google/android/gms/common/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/cg;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/api/internal/az;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/e$b;-><init>(Lcom/google/android/gms/common/api/internal/cg;Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/e$b;)Lcom/google/android/gms/common/api/internal/cg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e$b;->a:Lcom/google/android/gms/common/api/internal/cg;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/e$b;)Lcom/google/android/gms/common/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e$b;->b:Lcom/google/android/gms/common/e;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/e$b;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/common/api/internal/e$b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e$b;->a:Lcom/google/android/gms/common/api/internal/cg;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/e$b;->a:Lcom/google/android/gms/common/api/internal/cg;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e$b;->b:Lcom/google/android/gms/common/e;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/e$b;->b:Lcom/google/android/gms/common/e;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e$b;->a:Lcom/google/android/gms/common/api/internal/cg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e$b;->b:Lcom/google/android/gms/common/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ac;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ac;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ac$a;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/e$b;->a:Lcom/google/android/gms/common/api/internal/cg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ac$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ac$a;

    move-result-object v0

    const-string v1, "feature"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/e$b;->b:Lcom/google/android/gms/common/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ac$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ac$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ac$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
