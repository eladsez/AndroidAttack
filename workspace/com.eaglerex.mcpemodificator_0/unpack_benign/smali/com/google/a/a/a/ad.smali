.class final enum Lcom/google/a/a/a/ad;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/a/a/a/ad;

.field public static final enum b:Lcom/google/a/a/a/ad;

.field public static final enum c:Lcom/google/a/a/a/ad;

.field public static final enum d:Lcom/google/a/a/a/ad;

.field public static final enum e:Lcom/google/a/a/a/ad;

.field public static final enum f:Lcom/google/a/a/a/ad;

.field public static final enum g:Lcom/google/a/a/a/ad;

.field private static final synthetic h:[Lcom/google/a/a/a/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/a/a/a/ad;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/a/a/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/ad;->a:Lcom/google/a/a/a/ad;

    new-instance v0, Lcom/google/a/a/a/ad;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, Lcom/google/a/a/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/ad;->b:Lcom/google/a/a/a/ad;

    new-instance v0, Lcom/google/a/a/a/ad;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, Lcom/google/a/a/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ad;

    new-instance v0, Lcom/google/a/a/a/ad;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, Lcom/google/a/a/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/ad;->d:Lcom/google/a/a/a/ad;

    new-instance v0, Lcom/google/a/a/a/ad;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/google/a/a/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/ad;->e:Lcom/google/a/a/a/ad;

    new-instance v0, Lcom/google/a/a/a/ad;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/ad;->f:Lcom/google/a/a/a/ad;

    new-instance v0, Lcom/google/a/a/a/ad;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/a/ad;->g:Lcom/google/a/a/a/ad;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/a/a/a/ad;

    sget-object v1, Lcom/google/a/a/a/ad;->a:Lcom/google/a/a/a/ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/a/a/ad;->b:Lcom/google/a/a/a/ad;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/a/a/ad;->c:Lcom/google/a/a/a/ad;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/a/a/ad;->d:Lcom/google/a/a/a/ad;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/a/a/ad;->e:Lcom/google/a/a/a/ad;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/a/a/a/ad;->f:Lcom/google/a/a/a/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/a/a/a/ad;->g:Lcom/google/a/a/a/ad;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/a/a/ad;->h:[Lcom/google/a/a/a/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/a/a/ad;
    .locals 1

    const-class v0, Lcom/google/a/a/a/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/ad;

    return-object v0
.end method

.method public static values()[Lcom/google/a/a/a/ad;
    .locals 1

    sget-object v0, Lcom/google/a/a/a/ad;->h:[Lcom/google/a/a/a/ad;

    invoke-virtual {v0}, [Lcom/google/a/a/a/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/a/a/ad;

    return-object v0
.end method
