.class public final Lcom/google/android/gms/internal/aky$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum a:I = 0x1

.field public static final enum b:I = 0x2

.field public static final enum c:I = 0x3

.field public static final enum d:I = 0x4

.field public static final enum e:I = 0x5

.field public static final enum f:I = 0x6

.field public static final enum g:I = 0x7

.field public static final enum h:I = 0x8

.field public static final enum i:I = 0x9

.field public static final enum j:I = 0xa

.field public static final enum k:I

.field public static final enum l:I

.field public static final enum m:I

.field private static final synthetic n:[I

.field private static enum o:I

.field private static final synthetic p:[I

.field private static final synthetic q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/aky$g;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/aky$g;->b:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/aky$g;->c:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/google/android/gms/internal/aky$g;->d:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/aky$g;->e:I

    const/4 v5, 0x4

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/aky$g;->f:I

    const/4 v5, 0x5

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/aky$g;->g:I

    const/4 v5, 0x6

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/aky$g;->h:I

    const/4 v5, 0x7

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/aky$g;->i:I

    const/16 v5, 0x8

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/aky$g;->j:I

    const/16 v5, 0x9

    aput v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/aky$g;->n:[I

    sput v3, Lcom/google/android/gms/internal/aky$g;->k:I

    sput v4, Lcom/google/android/gms/internal/aky$g;->o:I

    new-array v0, v4, [I

    sget v1, Lcom/google/android/gms/internal/aky$g;->k:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/aky$g;->o:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/aky$g;->p:[I

    sput v3, Lcom/google/android/gms/internal/aky$g;->l:I

    sput v4, Lcom/google/android/gms/internal/aky$g;->m:I

    new-array v0, v4, [I

    sget v1, Lcom/google/android/gms/internal/aky$g;->l:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/aky$g;->m:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/aky$g;->q:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aky$g;->n:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method