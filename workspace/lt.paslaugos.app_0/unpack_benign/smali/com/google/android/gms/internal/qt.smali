.class final Lcom/google/android/gms/internal/qt;
.super Lcom/google/android/gms/common/api/internal/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/ar<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/qv;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/a/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/f;Lcom/google/android/gms/common/api/f;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/ar;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/qt;->b:Lcom/google/android/gms/a/f;

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/j;
    .locals 0

    return-object p1
.end method

.method protected final synthetic b(Lcom/google/android/gms/common/api/a$c;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/qv;

    new-instance v0, Lcom/google/android/gms/internal/qu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/qu;-><init>(Lcom/google/android/gms/internal/qt;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/qt;->b:Lcom/google/android/gms/a/f;

    iget-object v2, v1, Lcom/google/android/gms/a/f;->d:Lcom/google/android/gms/a/a$c;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/a/f;->c:Lcom/google/android/gms/internal/aot;

    iget-object v2, v2, Lcom/google/android/gms/internal/aot;->c:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/a/f;->c:Lcom/google/android/gms/internal/aot;

    iget-object v3, v1, Lcom/google/android/gms/a/f;->d:Lcom/google/android/gms/a/a$c;

    invoke-interface {v3}, Lcom/google/android/gms/a/a$c;->a()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/aot;->c:[B

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/a/f;->e:Lcom/google/android/gms/a/a$c;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/a/f;->c:Lcom/google/android/gms/internal/aot;

    iget-object v2, v2, Lcom/google/android/gms/internal/aot;->e:[B

    array-length v2, v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/a/f;->c:Lcom/google/android/gms/internal/aot;

    iget-object v3, v1, Lcom/google/android/gms/a/f;->e:Lcom/google/android/gms/a/a$c;

    invoke-interface {v3}, Lcom/google/android/gms/a/a$c;->a()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/aot;->e:[B

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/a/f;->c:Lcom/google/android/gms/internal/aot;

    invoke-static {v2}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/aob;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/a/f;->b:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/al;->t()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/qz;

    iget-object v1, p0, Lcom/google/android/gms/internal/qt;->b:Lcom/google/android/gms/a/f;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/qz;->a(Lcom/google/android/gms/internal/qx;Lcom/google/android/gms/a/f;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/ar;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
