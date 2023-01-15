.class public final Lcom/google/android/gms/internal/fe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/bfz;

.field private final b:Lcom/google/android/gms/internal/ez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bfz;Lcom/google/android/gms/internal/ey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/bfz;

    new-instance p1, Lcom/google/android/gms/internal/ez;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ez;-><init>(Lcom/google/android/gms/internal/ey;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fe;->b:Lcom/google/android/gms/internal/ez;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/bfz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/bfz;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ez;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->b:Lcom/google/android/gms/internal/ez;

    return-object v0
.end method
