.class final Lcom/google/android/gms/internal/aqh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/aqg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aqg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aqh;->a:Lcom/google/android/gms/internal/aqg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aqh;->a:Lcom/google/android/gms/internal/aqg;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aqg;->a(Lcom/google/android/gms/internal/aqg;I)V

    return-void
.end method
