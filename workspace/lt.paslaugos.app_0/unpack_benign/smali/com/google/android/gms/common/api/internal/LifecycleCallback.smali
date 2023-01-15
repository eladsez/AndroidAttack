.class public Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/android/gms/common/api/internal/v;


# direct methods
.method private static getChimeraLifecycleFragmentImpl(Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/common/api/internal/v;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method not available in SDK."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/v;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
