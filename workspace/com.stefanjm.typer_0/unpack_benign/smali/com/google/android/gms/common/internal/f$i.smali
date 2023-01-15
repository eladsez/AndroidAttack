.class public final Lcom/google/android/gms/common/internal/f$i;
.super Lcom/google/android/gms/common/internal/f$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f$k;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/f;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f$i;->a:Lcom/google/android/gms/common/internal/f;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/f$k;-><init>(Lcom/google/android/gms/common/internal/f;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f$i;->a:Lcom/google/android/gms/common/internal/f;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/f;->b:Lcom/google/android/gms/common/internal/f$d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/f$d;->a(Lcom/google/android/gms/common/b;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f$i;->a:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/b;)V

    return-void
.end method

.method protected final e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f$i;->a:Lcom/google/android/gms/common/internal/f;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/f;->b:Lcom/google/android/gms/common/internal/f$d;

    sget-object v1, Lcom/google/android/gms/common/b;->a:Lcom/google/android/gms/common/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/f$d;->a(Lcom/google/android/gms/common/b;)V

    const/4 v0, 0x1

    return v0
.end method
