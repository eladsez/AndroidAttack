.class public Lcom/google/android/gms/d/a;
.super Lcom/google/android/gms/internal/rg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/d/a$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static a:[[B

.field private static b:Lcom/google/android/gms/d/a;

.field private static final k:Lcom/google/android/gms/d/a$a;

.field private static final l:Lcom/google/android/gms/d/a$a;

.field private static final m:Lcom/google/android/gms/d/a$a;

.field private static final n:Lcom/google/android/gms/d/a$a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:[B

.field private e:[[B

.field private f:[[B

.field private g:[[B

.field private h:[[B

.field private i:[I

.field private j:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/d/j;

    invoke-direct {v0}, Lcom/google/android/gms/d/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/a;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v0, v0, [[B

    sput-object v0, Lcom/google/android/gms/d/a;->a:[[B

    new-instance v0, Lcom/google/android/gms/d/a;

    const-string v2, ""

    sget-object v4, Lcom/google/android/gms/d/a;->a:[[B

    sget-object v5, Lcom/google/android/gms/d/a;->a:[[B

    sget-object v6, Lcom/google/android/gms/d/a;->a:[[B

    sget-object v7, Lcom/google/android/gms/d/a;->a:[[B

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/d/a;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V

    sput-object v0, Lcom/google/android/gms/d/a;->b:Lcom/google/android/gms/d/a;

    new-instance v0, Lcom/google/android/gms/d/f;

    invoke-direct {v0}, Lcom/google/android/gms/d/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/a;->k:Lcom/google/android/gms/d/a$a;

    new-instance v0, Lcom/google/android/gms/d/g;

    invoke-direct {v0}, Lcom/google/android/gms/d/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/a;->l:Lcom/google/android/gms/d/a$a;

    new-instance v0, Lcom/google/android/gms/d/h;

    invoke-direct {v0}, Lcom/google/android/gms/d/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/a;->m:Lcom/google/android/gms/d/a$a;

    new-instance v0, Lcom/google/android/gms/d/i;

    invoke-direct {v0}, Lcom/google/android/gms/d/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/a;->n:Lcom/google/android/gms/d/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/d/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/d/a;->d:[B

    iput-object p3, p0, Lcom/google/android/gms/d/a;->e:[[B

    iput-object p4, p0, Lcom/google/android/gms/d/a;->f:[[B

    iput-object p5, p0, Lcom/google/android/gms/d/a;->g:[[B

    iput-object p6, p0, Lcom/google/android/gms/d/a;->h:[[B

    iput-object p7, p0, Lcom/google/android/gms/d/a;->i:[I

    iput-object p8, p0, Lcom/google/android/gms/d/a;->j:[[B

    return-void
.end method

.method private static a([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static a([[B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;[I)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_1
    if-ge v1, p1, :cond_2

    aget v3, p2, v1

    if-nez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string p1, ")"

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v3, p2, v1

    if-nez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string p1, ")"

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/d/a;

    iget-object v0, p0, Lcom/google/android/gms/d/a;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/d/a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/a;->d:[B

    iget-object v2, p1, Lcom/google/android/gms/d/a;->d:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/a;->e:[[B

    invoke-static {v0}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/d/a;->e:[[B

    invoke-static {v2}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/a;->f:[[B

    invoke-static {v0}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/d/a;->f:[[B

    invoke-static {v2}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/a;->g:[[B

    invoke-static {v0}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/d/a;->g:[[B

    invoke-static {v2}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/a;->h:[[B

    invoke-static {v0}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/d/a;->h:[[B

    invoke-static {v2}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/a;->i:[I

    invoke-static {v0}, Lcom/google/android/gms/d/a;->a([I)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/d/a;->i:[I

    invoke-static {v2}, Lcom/google/android/gms/d/a;->a([I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/a;->j:[[B

    invoke-static {v0}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/d/a;->j:[[B

    invoke-static {p1}, Lcom/google/android/gms/d/a;->a([[B)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperimentTokens"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/d/a;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/d/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "direct"

    iget-object v2, p0, Lcom/google/android/gms/d/a;->d:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    goto :goto_1

    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GAIA"

    iget-object v2, p0, Lcom/google/android/gms/d/a;->e:[[B

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/d/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PSEUDO"

    iget-object v2, p0, Lcom/google/android/gms/d/a;->f:[[B

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/d/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ALWAYS"

    iget-object v2, p0, Lcom/google/android/gms/d/a;->g:[[B

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/d/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OTHER"

    iget-object v2, p0, Lcom/google/android/gms/d/a;->h:[[B

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/d/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "weak"

    iget-object v2, p0, Lcom/google/android/gms/d/a;->i:[I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/d/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[I)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "directs"

    iget-object v2, p0, Lcom/google/android/gms/d/a;->j:[[B

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/d/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/d/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/d/a;->d:[B

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/d/a;->e:[[B

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I[[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/d/a;->f:[[B

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I[[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/d/a;->g:[[B

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I[[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/d/a;->h:[[B

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I[[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/d/a;->i:[I

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I[IZ)V

    iget-object v0, p0, Lcom/google/android/gms/d/a;->j:[[B

    const/16 v2, 0x9

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I[[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/rj;->a(Landroid/os/Parcel;I)V

    return-void
.end method
