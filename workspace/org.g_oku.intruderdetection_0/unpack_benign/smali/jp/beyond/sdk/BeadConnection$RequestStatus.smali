.class public final enum Ljp/beyond/sdk/BeadConnection$RequestStatus;
.super Ljava/lang/Enum;
.source "BeadConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/BeadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/sdk/BeadConnection$RequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

.field public static final enum Connecting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

.field public static final enum Downloading:Ljp/beyond/sdk/BeadConnection$RequestStatus;

.field private static final synthetic ENUM$VALUES:[Ljp/beyond/sdk/BeadConnection$RequestStatus;

.field public static final enum Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

.field public static final enum Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

.field public static final enum Shown:Ljp/beyond/sdk/BeadConnection$RequestStatus;

.field public static final enum Waiting:Ljp/beyond/sdk/BeadConnection$RequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    new-instance v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    const-string v1, "Waiting"

    invoke-direct {v0, v1, v3}, Ljp/beyond/sdk/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    .line 152
    sput-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 153
    new-instance v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v4}, Ljp/beyond/sdk/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    .line 154
    sput-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Connecting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 155
    new-instance v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    const-string v1, "Received"

    invoke-direct {v0, v1, v5}, Ljp/beyond/sdk/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    .line 156
    sput-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 157
    new-instance v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v6}, Ljp/beyond/sdk/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 160
    new-instance v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    const-string v1, "Cancelling"

    invoke-direct {v0, v1, v7}, Ljp/beyond/sdk/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 162
    new-instance v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    const-string v1, "Downloading"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljp/beyond/sdk/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Downloading:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 164
    new-instance v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    const-string v1, "Shown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljp/beyond/sdk/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Shown:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 150
    const/4 v0, 0x7

    new-array v0, v0, [Ljp/beyond/sdk/BeadConnection$RequestStatus;

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    aput-object v1, v0, v3

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Connecting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    aput-object v1, v0, v4

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    aput-object v1, v0, v5

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    aput-object v1, v0, v6

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Downloading:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Shown:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    aput-object v2, v0, v1

    sput-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->ENUM$VALUES:[Ljp/beyond/sdk/BeadConnection$RequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/sdk/BeadConnection$RequestStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;

    return-object v0
.end method

.method public static values()[Ljp/beyond/sdk/BeadConnection$RequestStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->ENUM$VALUES:[Ljp/beyond/sdk/BeadConnection$RequestStatus;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/sdk/BeadConnection$RequestStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
