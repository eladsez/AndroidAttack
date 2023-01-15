.class final enum Lcom/gp/netscramblefull/BoardView$Screen;
.super Ljava/lang/Enum;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/BoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gp/netscramblefull/BoardView$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gp/netscramblefull/BoardView$Screen;

.field public static final enum HUGE:Lcom/gp/netscramblefull/BoardView$Screen;

.field public static final enum MEDIUM:Lcom/gp/netscramblefull/BoardView$Screen;

.field public static final enum SMALL:Lcom/gp/netscramblefull/BoardView$Screen;

.field public static final enum WMEDIUM:Lcom/gp/netscramblefull/BoardView$Screen;

.field public static final enum WSMALL:Lcom/gp/netscramblefull/BoardView$Screen;


# instance fields
.field private final major:I

.field private final minor:I

.field private final sizes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 135
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Screen;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x6

    const/4 v8, 0x6

    const/4 v9, 0x6

    const/4 v10, 0x4

    invoke-direct/range {v0 .. v10}, Lcom/gp/netscramblefull/BoardView$Screen;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Screen;->SMALL:Lcom/gp/netscramblefull/BoardView$Screen;

    .line 136
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Screen;

    const-string v1, "WSMALL"

    const/4 v2, 0x1

    const/16 v3, 0x9

    const/4 v4, 0x6

    const/16 v5, 0x9

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    invoke-direct/range {v0 .. v10}, Lcom/gp/netscramblefull/BoardView$Screen;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Screen;->WSMALL:Lcom/gp/netscramblefull/BoardView$Screen;

    .line 137
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Screen;

    const-string v1, "MEDIUM"

    const/4 v2, 0x2

    const/16 v3, 0xb

    const/4 v4, 0x7

    const/16 v5, 0xb

    const/4 v6, 0x7

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-direct/range {v0 .. v10}, Lcom/gp/netscramblefull/BoardView$Screen;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Screen;->MEDIUM:Lcom/gp/netscramblefull/BoardView$Screen;

    .line 138
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Screen;

    const-string v1, "WMEDIUM"

    const/4 v2, 0x3

    const/16 v3, 0xc

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/4 v6, 0x7

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    invoke-direct/range {v0 .. v10}, Lcom/gp/netscramblefull/BoardView$Screen;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Screen;->WMEDIUM:Lcom/gp/netscramblefull/BoardView$Screen;

    .line 139
    new-instance v0, Lcom/gp/netscramblefull/BoardView$Screen;

    const-string v1, "HUGE"

    const/4 v2, 0x4

    const/16 v3, 0x11

    const/16 v4, 0xa

    const/16 v5, 0xf

    const/16 v6, 0x8

    const/16 v7, 0xb

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    invoke-direct/range {v0 .. v10}, Lcom/gp/netscramblefull/BoardView$Screen;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Screen;->HUGE:Lcom/gp/netscramblefull/BoardView$Screen;

    .line 134
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gp/netscramblefull/BoardView$Screen;

    const/4 v1, 0x0

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Screen;->SMALL:Lcom/gp/netscramblefull/BoardView$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Screen;->WSMALL:Lcom/gp/netscramblefull/BoardView$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Screen;->MEDIUM:Lcom/gp/netscramblefull/BoardView$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Screen;->WMEDIUM:Lcom/gp/netscramblefull/BoardView$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/gp/netscramblefull/BoardView$Screen;->HUGE:Lcom/gp/netscramblefull/BoardView$Screen;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gp/netscramblefull/BoardView$Screen;->ENUM$VALUES:[Lcom/gp/netscramblefull/BoardView$Screen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIII)V
    .locals 4
    .param p3, "ml"    # I
    .param p4, "ms"    # I
    .param p5, "el"    # I
    .param p6, "es"    # I
    .param p7, "nl"    # I
    .param p8, "ns"    # I
    .param p9, "vl"    # I
    .param p10, "vs"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    invoke-static {}, Lcom/gp/netscramblefull/BoardView$Skill;->values()[Lcom/gp/netscramblefull/BoardView$Skill;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    .line 142
    iput p3, p0, Lcom/gp/netscramblefull/BoardView$Screen;->major:I

    .line 143
    iput p4, p0, Lcom/gp/netscramblefull/BoardView$Screen;->minor:I

    .line 144
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->INSANE:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p3, v0, v2

    .line 145
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->INSANE:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p4, v0, v3

    .line 146
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->MASTER:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p3, v0, v2

    .line 147
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->MASTER:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p4, v0, v3

    .line 148
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->EXPERT:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p5, v0, v2

    .line 149
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->EXPERT:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p6, v0, v3

    .line 150
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->NORMAL:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p7, v0, v2

    .line 151
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->NORMAL:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p8, v0, v3

    .line 152
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->NOVICE:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p9, v0, v2

    .line 153
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    sget-object v1, Lcom/gp/netscramblefull/BoardView$Skill;->NOVICE:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput p10, v0, v3

    .line 154
    return-void
.end method

.method static synthetic access$2(Lcom/gp/netscramblefull/BoardView$Screen;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->major:I

    return v0
.end method

.method static synthetic access$3(Lcom/gp/netscramblefull/BoardView$Screen;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->minor:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/BoardView$Screen;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gp/netscramblefull/BoardView$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gp/netscramblefull/BoardView$Screen;

    return-object p0
.end method

.method public static values()[Lcom/gp/netscramblefull/BoardView$Screen;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gp/netscramblefull/BoardView$Screen;->ENUM$VALUES:[Lcom/gp/netscramblefull/BoardView$Screen;

    array-length v1, v0

    new-array v2, v1, [Lcom/gp/netscramblefull/BoardView$Screen;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getBoardHeight(Lcom/gp/netscramblefull/BoardView$Skill;II)I
    .locals 2
    .param p1, "sk"    # Lcom/gp/netscramblefull/BoardView$Skill;
    .param p2, "gw"    # I
    .param p3, "gh"    # I

    .prologue
    .line 164
    if-le p2, p3, :cond_0

    .line 165
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    invoke-virtual {p1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    invoke-virtual {p1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method getBoardWidth(Lcom/gp/netscramblefull/BoardView$Skill;II)I
    .locals 2
    .param p1, "sk"    # Lcom/gp/netscramblefull/BoardView$Skill;
    .param p2, "gw"    # I
    .param p3, "gh"    # I

    .prologue
    .line 157
    if-le p2, p3, :cond_0

    .line 158
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    invoke-virtual {p1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 160
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$Screen;->sizes:[[I

    invoke-virtual {p1}, Lcom/gp/netscramblefull/BoardView$Skill;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method
