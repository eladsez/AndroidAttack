.class public final Lcom/google/android/gms/internal/bg;
.super Lcom/google/android/gms/internal/bc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ls<",
            "Lcom/google/android/gms/internal/bj;",
            ">;",
            "Lcom/google/android/gms/internal/ba;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/bc;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ba;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/br;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/cr;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/cr;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/cs;

    move-result-object v0

    return-object v0
.end method
