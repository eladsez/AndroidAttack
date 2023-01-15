.class public final enum Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;
.super Ljava/lang/Enum;
.source "AlarmMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

.field public static final enum SOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

.field public static final enum VIBRO:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

.field public static final enum VIBROANDSOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    const-string v1, "VIBRO"

    invoke-direct {v0, v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBRO:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    const-string v1, "SOUND"

    invoke-direct {v0, v1, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->SOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    const-string v1, "VIBROANDSOUND"

    invoke-direct {v0, v1, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBROANDSOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBRO:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->SOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBROANDSOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    return-object v0
.end method

.method public static values()[Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
