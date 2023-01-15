.class final Lcom/google/android/gms/games/internal/j$a;
.super Lcom/google/android/gms/games/internal/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/games/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/j$a;->a:Lcom/google/android/gms/games/internal/d;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/games/internal/b;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/j$a;->a:Lcom/google/android/gms/games/internal/d;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/d;->b:Lcom/google/android/gms/games/internal/f;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/b;-><init>(Lcom/google/android/gms/games/internal/f;)V

    return-object v0
.end method
