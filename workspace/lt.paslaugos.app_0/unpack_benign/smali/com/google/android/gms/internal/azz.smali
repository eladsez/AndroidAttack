.class final Lcom/google/android/gms/internal/azz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/azl;

.field private synthetic b:Lcom/google/android/gms/internal/azy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/azy;Lcom/google/android/gms/internal/azl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/azz;->b:Lcom/google/android/gms/internal/azy;

    iput-object p2, p0, Lcom/google/android/gms/internal/azz;->a:Lcom/google/android/gms/internal/azl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/azz;->b:Lcom/google/android/gms/internal/azy;

    iget-object v1, p0, Lcom/google/android/gms/internal/azz;->a:Lcom/google/android/gms/internal/azl;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/azy;->a(Lcom/google/android/gms/internal/azy;Lcom/google/android/gms/internal/azl;)V

    return-void
.end method
