.class final enum Lcom/gp/netscramblefull/BoardView$Skill;
.super Ljava/lang/Enum;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/BoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Skill"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gp/netscramblefull/BoardView$Skill;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gp/netscramblefull/BoardView$Skill;

.field public static final enum EXPERT:Lcom/gp/netscramblefull/BoardView$Skill;

.field public static final enum INSANE:Lcom/gp/netscramblefull/BoardView$Skill;

.field public static final enum MASTER:Lcom/gp/netscramblefull/BoardView$Skill;

.field public static final enum NORMAL:Lcom/gp/netscramblefull/BoardView$Skill;

.field public static final enum NOVICE:Lcom/gp/netscramblefull/BoardView$Skill;


# instance fields
.field public final blind:I

.field public final branches:I

.field public final id:I

.field public final label:I

.field public final wrapped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 105
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Skill;

    const-string v1, "NOVICE"

    const/4 v2, 0x0

    const v3, 0x7f060032

    const v4, 0x7f050025

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-direct/range {v0 .. v7}, Lcom/gp/netscramblefull/BoardView$Skill;-><init>(Ljava/lang/String;IIIIZI)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Skill;->NOVICE:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 106
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Skill;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    const v3, 0x7f060033

    const v4, 0x7f050026

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-direct/range {v0 .. v7}, Lcom/gp/netscramblefull/BoardView$Skill;-><init>(Ljava/lang/String;IIIIZI)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Skill;->NORMAL:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 107
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Skill;

    const-string v1, "EXPERT"

    const/4 v2, 0x2

    const v3, 0x7f060034

    const v4, 0x7f050027

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-direct/range {v0 .. v7}, Lcom/gp/netscramblefull/BoardView$Skill;-><init>(Ljava/lang/String;IIIIZI)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Skill;->EXPERT:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 108
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Skill;

    const-string v1, "MASTER"

    const/4 v2, 0x3

    const v3, 0x7f060035

    const v4, 0x7f050028

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v7, 0x9

    invoke-direct/range {v0 .. v7}, Lcom/gp/netscramblefull/BoardView$Skill;-><init>(Ljava/lang/String;IIIIZI)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Skill;->MASTER:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 109
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Skill;

    const-string v1, "INSANE"

    const/4 v2, 0x4

    const v3, 0x7f060036

    const v4, 0x7f050029

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/gp/netscramblefull/BoardView$Skill;-><init>(Ljava/lang/String;IIIIZI)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Skill;->INSANE:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gp/netscramblefull/BoardView$Skill;

    const/4 v1, 0x0

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->NOVICE:Lcom/gp/netscramblefull/BoardView$Skill;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->NORMAL:Lcom/gp/netscramblefull/BoardView$Skill;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->EXPERT:Lcom/gp/netscramblefull/BoardView$Skill;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->MASTER:Lcom/gp/netscramblefull/BoardView$Skill;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->INSANE:Lcom/gp/netscramblefull/BoardView$Skill;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Skill;->ENUM$VALUES:[Lcom/gp/netscramblefull/BoardView$Skill;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZI)V
    .locals 0
    .param p3, "lab"    # I
    .param p4, "i"    # I
    .param p5, "br"    # I
    .param p6, "w"    # Z
    .param p7, "bd"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Lcom/gp/netscramblefull/BoardView$Skill;->label:I

    .line 113
    iput p4, p0, Lcom/gp/netscramblefull/BoardView$Skill;->id:I

    .line 114
    iput p5, p0, Lcom/gp/netscramblefull/BoardView$Skill;->branches:I

    .line 115
    iput-boolean p6, p0, Lcom/gp/netscramblefull/BoardView$Skill;->wrapped:Z

    .line 116
    iput p7, p0, Lcom/gp/netscramblefull/BoardView$Skill;->blind:I

    .line 117
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/BoardView$Skill;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gp/netscramblefull/BoardView$Skill;

    return-object p0
.end method

.method public static values()[Lcom/gp/netscramblefull/BoardView$Skill;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gp/netscramblefull/BoardView$Skill;->ENUM$VALUES:[Lcom/gp/netscramblefull/BoardView$Skill;

    array-length v1, v0

    new-array v2, v1, [Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
