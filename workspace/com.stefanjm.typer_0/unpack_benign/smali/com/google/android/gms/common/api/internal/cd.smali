.class public final Lcom/google/android/gms/common/api/internal/cd;
.super Lcom/google/android/gms/common/api/internal/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/common/api/internal/c$a<",
        "+",
        "Lcom/google/android/gms/common/api/k;",
        "Lcom/google/android/gms/common/api/a$b;",
        ">;>",
        "Lcom/google/android/gms/common/api/internal/ar;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/ar;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/cd;->a:Lcom/google/android/gms/common/api/internal/c$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->a:Lcom/google/android/gms/common/api/internal/c$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->a:Lcom/google/android/gms/common/api/internal/c$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->b(Lcom/google/android/gms/common/api/a$b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/ar;->a(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/r;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->a:Lcom/google/android/gms/common/api/internal/c$a;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/r;->a(Lcom/google/android/gms/common/api/internal/BasePendingResult;Z)V

    return-void
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    add-int/2addr v3, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/cd;->a:Lcom/google/android/gms/common/api/internal/c$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/c$a;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
