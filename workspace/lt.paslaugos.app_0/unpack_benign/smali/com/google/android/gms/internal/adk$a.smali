.class public final Lcom/google/android/gms/internal/adk$a;
.super Lcom/google/android/gms/internal/aky$a;

# interfaces
.implements Lcom/google/android/gms/internal/alz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/adk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aky$a<",
        "Lcom/google/android/gms/internal/adk;",
        "Lcom/google/android/gms/internal/adk$a;",
        ">;",
        "Lcom/google/android/gms/internal/alz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/adk;->c()Lcom/google/android/gms/internal/adk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aky$a;-><init>(Lcom/google/android/gms/internal/aky;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/adl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/adk$a;-><init>()V

    return-void
.end method
