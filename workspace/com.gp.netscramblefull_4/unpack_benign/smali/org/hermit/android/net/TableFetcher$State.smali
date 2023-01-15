.class final enum Lorg/hermit/android/net/TableFetcher$State;
.super Ljava/lang/Enum;
.source "TableFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/net/TableFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/android/net/TableFetcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/hermit/android/net/TableFetcher$State;

.field public static final enum EXP:Lorg/hermit/android/net/TableFetcher$State;

.field public static final enum FRAC:Lorg/hermit/android/net/TableFetcher$State;

.field public static final enum MAN:Lorg/hermit/android/net/TableFetcher$State;

.field public static final enum SPACE:Lorg/hermit/android/net/TableFetcher$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    new-instance v0, Lorg/hermit/android/net/TableFetcher$State;

    const-string v1, "SPACE"

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/net/TableFetcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    new-instance v0, Lorg/hermit/android/net/TableFetcher$State;

    const-string v1, "MAN"

    invoke-direct {v0, v1, v3}, Lorg/hermit/android/net/TableFetcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/net/TableFetcher$State;->MAN:Lorg/hermit/android/net/TableFetcher$State;

    new-instance v0, Lorg/hermit/android/net/TableFetcher$State;

    const-string v1, "FRAC"

    invoke-direct {v0, v1, v4}, Lorg/hermit/android/net/TableFetcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/net/TableFetcher$State;->FRAC:Lorg/hermit/android/net/TableFetcher$State;

    new-instance v0, Lorg/hermit/android/net/TableFetcher$State;

    const-string v1, "EXP"

    invoke-direct {v0, v1, v5}, Lorg/hermit/android/net/TableFetcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/net/TableFetcher$State;->EXP:Lorg/hermit/android/net/TableFetcher$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/hermit/android/net/TableFetcher$State;

    sget-object v1, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/hermit/android/net/TableFetcher$State;->MAN:Lorg/hermit/android/net/TableFetcher$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/hermit/android/net/TableFetcher$State;->FRAC:Lorg/hermit/android/net/TableFetcher$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/hermit/android/net/TableFetcher$State;->EXP:Lorg/hermit/android/net/TableFetcher$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/hermit/android/net/TableFetcher$State;->ENUM$VALUES:[Lorg/hermit/android/net/TableFetcher$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/android/net/TableFetcher$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/android/net/TableFetcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/android/net/TableFetcher$State;

    return-object p0
.end method

.method public static values()[Lorg/hermit/android/net/TableFetcher$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/android/net/TableFetcher$State;->ENUM$VALUES:[Lorg/hermit/android/net/TableFetcher$State;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/android/net/TableFetcher$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
