.class final Lcom/google/android/gms/common/api/internal/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f$c;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/am;Lcom/google/android/gms/common/api/internal/o;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ap;->a:Lcom/google/android/gms/common/api/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/ap;->a:Lcom/google/android/gms/common/api/internal/o;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b(Lcom/google/android/gms/common/api/k;)V

    return-void
.end method
