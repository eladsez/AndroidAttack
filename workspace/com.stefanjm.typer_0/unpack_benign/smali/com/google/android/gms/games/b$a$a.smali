.class public final Lcom/google/android/gms/games/b$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/b$a$a;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/games/b$a$a;->c:Z

    const/16 v1, 0x11

    iput v1, p0, Lcom/google/android/gms/games/b$a$a;->d:I

    iput-boolean v0, p0, Lcom/google/android/gms/games/b$a$a;->e:Z

    const/16 v1, 0x1110

    iput v1, p0, Lcom/google/android/gms/games/b$a$a;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/games/b$a$a;->g:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/b$a$a;->h:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/google/android/gms/games/b$a$a;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/b$a$a;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/b$a$a;->k:Z

    iput-object v1, p0, Lcom/google/android/gms/games/b$a$a;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/b$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/games/b$a;
    .locals 14

    new-instance v13, Lcom/google/android/gms/games/b$a;

    iget-boolean v1, p0, Lcom/google/android/gms/games/b$a$a;->b:Z

    iget-boolean v2, p0, Lcom/google/android/gms/games/b$a$a;->c:Z

    iget v3, p0, Lcom/google/android/gms/games/b$a$a;->d:I

    iget-boolean v4, p0, Lcom/google/android/gms/games/b$a$a;->e:Z

    iget v5, p0, Lcom/google/android/gms/games/b$a$a;->f:I

    iget-object v6, p0, Lcom/google/android/gms/games/b$a$a;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/games/b$a$a;->h:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/google/android/gms/games/b$a$a;->i:Z

    iget-boolean v9, p0, Lcom/google/android/gms/games/b$a$a;->j:Z

    iget-boolean v10, p0, Lcom/google/android/gms/games/b$a$a;->k:Z

    iget-object v11, p0, Lcom/google/android/gms/games/b$a$a;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/games/b$a;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/games/o;)V

    return-object v13
.end method
