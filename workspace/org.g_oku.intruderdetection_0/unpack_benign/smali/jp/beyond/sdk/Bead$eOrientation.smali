.class final enum Ljp/beyond/sdk/Bead$eOrientation;
.super Ljava/lang/Enum;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/Bead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "eOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/sdk/Bead$eOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ljp/beyond/sdk/Bead$eOrientation;

.field public static final enum Landscape:Ljp/beyond/sdk/Bead$eOrientation;

.field public static final enum Portrait:Ljp/beyond/sdk/Bead$eOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Ljp/beyond/sdk/Bead$eOrientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v2}, Ljp/beyond/sdk/Bead$eOrientation;-><init>(Ljava/lang/String;I)V

    .line 107
    sput-object v0, Ljp/beyond/sdk/Bead$eOrientation;->Portrait:Ljp/beyond/sdk/Bead$eOrientation;

    .line 108
    new-instance v0, Ljp/beyond/sdk/Bead$eOrientation;

    const-string v1, "Landscape"

    invoke-direct {v0, v1, v3}, Ljp/beyond/sdk/Bead$eOrientation;-><init>(Ljava/lang/String;I)V

    .line 109
    sput-object v0, Ljp/beyond/sdk/Bead$eOrientation;->Landscape:Ljp/beyond/sdk/Bead$eOrientation;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljp/beyond/sdk/Bead$eOrientation;

    sget-object v1, Ljp/beyond/sdk/Bead$eOrientation;->Portrait:Ljp/beyond/sdk/Bead$eOrientation;

    aput-object v1, v0, v2

    sget-object v1, Ljp/beyond/sdk/Bead$eOrientation;->Landscape:Ljp/beyond/sdk/Bead$eOrientation;

    aput-object v1, v0, v3

    sput-object v0, Ljp/beyond/sdk/Bead$eOrientation;->ENUM$VALUES:[Ljp/beyond/sdk/Bead$eOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/sdk/Bead$eOrientation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/sdk/Bead$eOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/sdk/Bead$eOrientation;

    return-object v0
.end method

.method public static values()[Ljp/beyond/sdk/Bead$eOrientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/sdk/Bead$eOrientation;->ENUM$VALUES:[Ljp/beyond/sdk/Bead$eOrientation;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/sdk/Bead$eOrientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
