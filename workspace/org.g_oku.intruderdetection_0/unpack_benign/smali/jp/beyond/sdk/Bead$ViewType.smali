.class public final enum Ljp/beyond/sdk/Bead$ViewType;
.super Ljava/lang/Enum;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/Bead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/sdk/Bead$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Banner:Ljp/beyond/sdk/Bead$ViewType;

.field private static final synthetic ENUM$VALUES:[Ljp/beyond/sdk/Bead$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    new-instance v0, Ljp/beyond/sdk/Bead$ViewType;

    const-string v1, "Banner"

    invoke-direct {v0, v1, v2}, Ljp/beyond/sdk/Bead$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [Ljp/beyond/sdk/Bead$ViewType;

    sget-object v1, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    aput-object v1, v0, v2

    sput-object v0, Ljp/beyond/sdk/Bead$ViewType;->ENUM$VALUES:[Ljp/beyond/sdk/Bead$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/sdk/Bead$ViewType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/sdk/Bead$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/sdk/Bead$ViewType;

    return-object v0
.end method

.method public static values()[Ljp/beyond/sdk/Bead$ViewType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/sdk/Bead$ViewType;->ENUM$VALUES:[Ljp/beyond/sdk/Bead$ViewType;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/sdk/Bead$ViewType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
