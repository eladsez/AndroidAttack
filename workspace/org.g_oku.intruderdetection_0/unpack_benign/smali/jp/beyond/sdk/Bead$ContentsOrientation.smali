.class public final enum Ljp/beyond/sdk/Bead$ContentsOrientation;
.super Ljava/lang/Enum;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/Bead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentsOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/sdk/Bead$ContentsOrientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

.field private static final synthetic ENUM$VALUES:[Ljp/beyond/sdk/Bead$ContentsOrientation;

.field public static final enum Landscape:Ljp/beyond/sdk/Bead$ContentsOrientation;

.field public static final enum Portrait:Ljp/beyond/sdk/Bead$ContentsOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Ljp/beyond/sdk/Bead$ContentsOrientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v2}, Ljp/beyond/sdk/Bead$ContentsOrientation;-><init>(Ljava/lang/String;I)V

    .line 133
    sput-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Portrait:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 134
    new-instance v0, Ljp/beyond/sdk/Bead$ContentsOrientation;

    const-string v1, "Landscape"

    invoke-direct {v0, v1, v3}, Ljp/beyond/sdk/Bead$ContentsOrientation;-><init>(Ljava/lang/String;I)V

    .line 135
    sput-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Landscape:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 136
    new-instance v0, Ljp/beyond/sdk/Bead$ContentsOrientation;

    const-string v1, "Auto"

    invoke-direct {v0, v1, v4}, Ljp/beyond/sdk/Bead$ContentsOrientation;-><init>(Ljava/lang/String;I)V

    .line 137
    sput-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Ljp/beyond/sdk/Bead$ContentsOrientation;

    sget-object v1, Ljp/beyond/sdk/Bead$ContentsOrientation;->Portrait:Ljp/beyond/sdk/Bead$ContentsOrientation;

    aput-object v1, v0, v2

    sget-object v1, Ljp/beyond/sdk/Bead$ContentsOrientation;->Landscape:Ljp/beyond/sdk/Bead$ContentsOrientation;

    aput-object v1, v0, v3

    sget-object v1, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    aput-object v1, v0, v4

    sput-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->ENUM$VALUES:[Ljp/beyond/sdk/Bead$ContentsOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/sdk/Bead$ContentsOrientation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/sdk/Bead$ContentsOrientation;

    return-object v0
.end method

.method public static values()[Ljp/beyond/sdk/Bead$ContentsOrientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->ENUM$VALUES:[Ljp/beyond/sdk/Bead$ContentsOrientation;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
