.class final Lcom/google/android/gms/internal/qu;
.super Lcom/google/android/gms/internal/qs;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/qt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qu;->a:Lcom/google/android/gms/internal/qt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qs;-><init>(Lcom/google/android/gms/internal/qr;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->a:Lcom/google/android/gms/internal/qt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/j;)V

    return-void
.end method
