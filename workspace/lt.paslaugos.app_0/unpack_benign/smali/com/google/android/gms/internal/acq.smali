.class final Lcom/google/android/gms/internal/acq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/abp;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/abw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/abw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/acq;->a:Lcom/google/android/gms/internal/abw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[B

    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->a:Lcom/google/android/gms/internal/abw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abw;->a()Lcom/google/android/gms/internal/abx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abx;->b()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->a:Lcom/google/android/gms/internal/abw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abw;->a()Lcom/google/android/gms/internal/abx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abx;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/abp;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/abp;->a([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/google/android/gms/internal/afx;->a([[B)[B

    move-result-object p1

    return-object p1
.end method
