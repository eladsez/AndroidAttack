.class final synthetic Lcom/google/android/gms/internal/fn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/fm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fn;->a:Lcom/google/android/gms/internal/fm;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->a:Lcom/google/android/gms/internal/fm;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fm;->a(Ljava/util/Map;)Lcom/google/android/gms/internal/lf;

    move-result-object p1

    return-object p1
.end method