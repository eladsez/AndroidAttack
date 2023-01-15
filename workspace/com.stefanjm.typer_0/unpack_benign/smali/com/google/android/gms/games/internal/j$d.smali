.class final Lcom/google/android/gms/games/internal/j$d;
.super Lcom/google/android/gms/games/internal/j$e;

# interfaces
.implements Lcom/google/android/gms/games/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/games/c/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/j$e;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/c/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/c/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/j$d;->c:Lcom/google/android/gms/games/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method
