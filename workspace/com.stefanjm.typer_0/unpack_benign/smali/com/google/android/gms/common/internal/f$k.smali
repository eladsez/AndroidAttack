.class abstract Lcom/google/android/gms/common/internal/f$k;
.super Lcom/google/android/gms/common/internal/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f<",
        "TT;>.c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/internal/f;

.field public final b:I

.field public final c:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/f;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f$k;->a:Lcom/google/android/gms/common/internal/f;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/f$c;-><init>(Lcom/google/android/gms/common/internal/f;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/f$k;->b:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/f$k;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/b;)V
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$k;->a:Lcom/google/android/gms/common/internal/f;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/internal/f$k;->b:I

    if-eqz p1, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$k;->a:Lcom/google/android/gms/common/internal/f;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$k;->c:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$k;->c:Landroid/os/Bundle;

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/b;

    iget v0, p0, Lcom/google/android/gms/common/internal/f$k;->b:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/f$k;->a(Lcom/google/android/gms/common/b;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$k;->a:Lcom/google/android/gms/common/internal/f;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f$k;->e()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$k;->a:Lcom/google/android/gms/common/internal/f;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V

    new-instance p1, Lcom/google/android/gms/common/b;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/f$k;->a(Lcom/google/android/gms/common/b;)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/f$k;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected abstract e()Z
.end method
