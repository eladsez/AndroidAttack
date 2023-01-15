.class public final enum Lcom/google/a/a/a/at;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/a/a/a/at;

.field public static final enum b:Lcom/google/a/a/a/at;

.field public static final enum c:Lcom/google/a/a/a/at;

.field public static final enum d:Lcom/google/a/a/a/at;

.field private static final synthetic e:[Lcom/google/a/a/a/at;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/a/a/a/at;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/a/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/at;->a:Lcom/google/a/a/a/at;

    new-instance v0, Lcom/google/a/a/a/at;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/google/a/a/a/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/at;->b:Lcom/google/a/a/a/at;

    new-instance v0, Lcom/google/a/a/a/at;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lcom/google/a/a/a/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/at;->c:Lcom/google/a/a/a/at;

    new-instance v0, Lcom/google/a/a/a/at;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/a/a/a/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/at;->d:Lcom/google/a/a/a/at;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/a/a/a/at;

    sget-object v1, Lcom/google/a/a/a/at;->a:Lcom/google/a/a/a/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/a/a/at;->b:Lcom/google/a/a/a/at;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/a/a/at;->c:Lcom/google/a/a/a/at;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/a/a/at;->d:Lcom/google/a/a/a/at;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/a/a/a/at;->e:[Lcom/google/a/a/a/at;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/a/a/at;
    .locals 1

    const-class v0, Lcom/google/a/a/a/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/at;

    return-object v0
.end method

.method public static values()[Lcom/google/a/a/a/at;
    .locals 1

    sget-object v0, Lcom/google/a/a/a/at;->e:[Lcom/google/a/a/a/at;

    invoke-virtual {v0}, [Lcom/google/a/a/a/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/a/a/at;

    return-object v0
.end method
