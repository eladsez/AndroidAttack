.class final Lcom/google/android/gms/internal/anc;
.super Lcom/google/android/gms/internal/ana;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ana<",
        "Lcom/google/android/gms/internal/anb;",
        "Lcom/google/android/gms/internal/anb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ana;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/aky;

    iget-object p1, p1, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    return-object p1
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/anr;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/anb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/anb;->a(Lcom/google/android/gms/internal/anr;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/anb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/anb;->d()I

    move-result p1

    return p1
.end method
