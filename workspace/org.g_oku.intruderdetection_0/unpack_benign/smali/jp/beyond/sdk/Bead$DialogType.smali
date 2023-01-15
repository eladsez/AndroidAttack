.class final enum Ljp/beyond/sdk/Bead$DialogType;
.super Ljava/lang/Enum;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/Bead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/sdk/Bead$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Banner:Ljp/beyond/sdk/Bead$DialogType;

.field private static final synthetic ENUM$VALUES:[Ljp/beyond/sdk/Bead$DialogType;

.field public static final enum Exit:Ljp/beyond/sdk/Bead$DialogType;

.field public static final enum Icon:Ljp/beyond/sdk/Bead$DialogType;

.field public static final enum Icon2:Ljp/beyond/sdk/Bead$DialogType;

.field public static final enum IconText:Ljp/beyond/sdk/Bead$DialogType;

.field public static final enum Optional:Ljp/beyond/sdk/Bead$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    new-instance v0, Ljp/beyond/sdk/Bead$DialogType;

    const-string v1, "Exit"

    invoke-direct {v0, v1, v3}, Ljp/beyond/sdk/Bead$DialogType;-><init>(Ljava/lang/String;I)V

    .line 147
    sput-object v0, Ljp/beyond/sdk/Bead$DialogType;->Exit:Ljp/beyond/sdk/Bead$DialogType;

    .line 148
    new-instance v0, Ljp/beyond/sdk/Bead$DialogType;

    const-string v1, "Optional"

    invoke-direct {v0, v1, v4}, Ljp/beyond/sdk/Bead$DialogType;-><init>(Ljava/lang/String;I)V

    .line 149
    sput-object v0, Ljp/beyond/sdk/Bead$DialogType;->Optional:Ljp/beyond/sdk/Bead$DialogType;

    .line 150
    new-instance v0, Ljp/beyond/sdk/Bead$DialogType;

    const-string v1, "Icon"

    invoke-direct {v0, v1, v5}, Ljp/beyond/sdk/Bead$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/beyond/sdk/Bead$DialogType;->Icon:Ljp/beyond/sdk/Bead$DialogType;

    .line 151
    new-instance v0, Ljp/beyond/sdk/Bead$DialogType;

    const-string v1, "Icon2"

    invoke-direct {v0, v1, v6}, Ljp/beyond/sdk/Bead$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/beyond/sdk/Bead$DialogType;->Icon2:Ljp/beyond/sdk/Bead$DialogType;

    .line 152
    new-instance v0, Ljp/beyond/sdk/Bead$DialogType;

    const-string v1, "IconText"

    invoke-direct {v0, v1, v7}, Ljp/beyond/sdk/Bead$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/beyond/sdk/Bead$DialogType;->IconText:Ljp/beyond/sdk/Bead$DialogType;

    .line 153
    new-instance v0, Ljp/beyond/sdk/Bead$DialogType;

    const-string v1, "Banner"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljp/beyond/sdk/Bead$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/beyond/sdk/Bead$DialogType;->Banner:Ljp/beyond/sdk/Bead$DialogType;

    .line 145
    const/4 v0, 0x6

    new-array v0, v0, [Ljp/beyond/sdk/Bead$DialogType;

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Exit:Ljp/beyond/sdk/Bead$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Optional:Ljp/beyond/sdk/Bead$DialogType;

    aput-object v1, v0, v4

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Icon:Ljp/beyond/sdk/Bead$DialogType;

    aput-object v1, v0, v5

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Icon2:Ljp/beyond/sdk/Bead$DialogType;

    aput-object v1, v0, v6

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->IconText:Ljp/beyond/sdk/Bead$DialogType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljp/beyond/sdk/Bead$DialogType;->Banner:Ljp/beyond/sdk/Bead$DialogType;

    aput-object v2, v0, v1

    sput-object v0, Ljp/beyond/sdk/Bead$DialogType;->ENUM$VALUES:[Ljp/beyond/sdk/Bead$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/sdk/Bead$DialogType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/sdk/Bead$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/sdk/Bead$DialogType;

    return-object v0
.end method

.method public static values()[Ljp/beyond/sdk/Bead$DialogType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/sdk/Bead$DialogType;->ENUM$VALUES:[Ljp/beyond/sdk/Bead$DialogType;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/sdk/Bead$DialogType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
