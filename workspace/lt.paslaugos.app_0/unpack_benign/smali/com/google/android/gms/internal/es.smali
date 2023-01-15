.class final Lcom/google/android/gms/internal/es;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/aud;

.field private synthetic b:Lcom/google/android/gms/internal/bfz;

.field private synthetic c:Lcom/google/android/gms/internal/er;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/er;Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/bfz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/es;->c:Lcom/google/android/gms/internal/er;

    iput-object p2, p0, Lcom/google/android/gms/internal/es;->a:Lcom/google/android/gms/internal/aud;

    iput-object p3, p0, Lcom/google/android/gms/internal/es;->b:Lcom/google/android/gms/internal/bfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/es;->c:Lcom/google/android/gms/internal/er;

    iget-object v1, p0, Lcom/google/android/gms/internal/es;->a:Lcom/google/android/gms/internal/aud;

    iget-object v2, p0, Lcom/google/android/gms/internal/es;->b:Lcom/google/android/gms/internal/bfz;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/er;Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/bfz;)V

    return-void
.end method
