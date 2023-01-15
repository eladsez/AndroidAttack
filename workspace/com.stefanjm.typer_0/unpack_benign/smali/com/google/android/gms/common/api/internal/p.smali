.class public abstract Lcom/google/android/gms/common/api/internal/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/android/gms/common/e;

.field private final b:Z


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/d/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/google/android/gms/d/g<",
            "TResultT;>;)V"
        }
    .end annotation
.end method

.method public final a()[Lcom/google/android/gms/common/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->a:[Lcom/google/android/gms/common/e;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/p;->b:Z

    return v0
.end method
