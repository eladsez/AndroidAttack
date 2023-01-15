.class public Lcom/gp/netscramblefull/BoardView;
.super Lorg/hermit/android/core/SurfaceRunner;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gp/netscramblefull/BoardView$GameState;,
        Lcom/gp/netscramblefull/BoardView$Screen;,
        Lcom/gp/netscramblefull/BoardView$Skill;
    }
.end annotation


# static fields
.field private static final BLIPS_TIME:J = 0x12cL

.field private static final CELL_MAX:I = 0x48

.field private static final CELL_MIN:I = 0x1c

.field private static final LONG_PRESS:I = 0x28a

.field private static final SOLVE_ROTATE_TIME:J = 0x15eL

.field private static final SOLVE_STEP_TIME:J = 0x320L

.field private static final TAG:Ljava/lang/String; = "netscramble"

.field private static final rng:Ljava/util/Random;


# instance fields
.field private backingBitmap:Landroid/graphics/Bitmap;

.field private backingCanvas:Landroid/graphics/Canvas;

.field private blipCount:I

.field private blipsLastAdvance:J

.field private boardEndX:I

.field private boardEndY:I

.field private boardHeight:I

.field private boardStartX:I

.field private boardStartY:I

.field private boardWidth:I

.field private cellHeight:I

.field private cellMatrix:[[Lcom/gp/netscramblefull/Cell;

.field private cellWidth:I

.field private connectingCells:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gp/netscramblefull/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private drawBlips:Z

.field private focusedCell:Lcom/gp/netscramblefull/Cell;

.field private gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

.field private gridHeight:I

.field private gridWidth:I

.field private isConnected:[[Z

.field private lastProgMove:J

.field private longPress:Ljava/lang/Runnable;

.field private longPressHandler:Landroid/os/Handler;

.field private longPressed:Z

.field private paddingX:I

.field private paddingY:I

.field private parentApp:Lcom/gp/netscramblefull/NetScramble;

.field private pressedCell:Lcom/gp/netscramblefull/Cell;

.field private programmedMoves:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[I>;"
        }
    .end annotation
.end field

.field private rootCell:Lcom/gp/netscramblefull/Cell;

.field private screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

.field private solvedState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1646
    new-instance v0, Lnet/goui/util/MTRandom;

    invoke-direct {v0}, Lnet/goui/util/MTRandom;-><init>()V

    sput-object v0, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/gp/netscramblefull/NetScramble;)V
    .locals 8
    .param p1, "parent"    # Lcom/gp/netscramblefull/NetScramble;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 186
    invoke-direct {p0, p1}, Lorg/hermit/android/core/SurfaceRunner;-><init>(Landroid/content/Context;)V

    .line 1079
    new-instance v3, Lcom/gp/netscramblefull/BoardView$1;

    invoke-direct {v3, p0}, Lcom/gp/netscramblefull/BoardView$1;-><init>(Lcom/gp/netscramblefull/BoardView;)V

    iput-object v3, p0, Lcom/gp/netscramblefull/BoardView;->longPress:Ljava/lang/Runnable;

    .line 1657
    iput-object v6, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    .line 1660
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/gp/netscramblefull/BoardView;->drawBlips:Z

    .line 1676
    iput-object v6, p0, Lcom/gp/netscramblefull/BoardView;->solvedState:Landroid/os/Bundle;

    .line 1683
    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->paddingX:I

    .line 1684
    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->paddingY:I

    .line 1697
    iput-object v6, p0, Lcom/gp/netscramblefull/BoardView;->backingBitmap:Landroid/graphics/Bitmap;

    .line 1698
    iput-object v6, p0, Lcom/gp/netscramblefull/BoardView;->backingCanvas:Landroid/graphics/Canvas;

    .line 1716
    iput-object v6, p0, Lcom/gp/netscramblefull/BoardView;->pressedCell:Lcom/gp/netscramblefull/Cell;

    .line 1721
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/gp/netscramblefull/BoardView;->longPressHandler:Landroid/os/Handler;

    .line 1722
    iput-boolean v7, p0, Lcom/gp/netscramblefull/BoardView;->longPressed:Z

    .line 1725
    iput-wide v4, p0, Lcom/gp/netscramblefull/BoardView;->blipsLastAdvance:J

    .line 1728
    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->blipCount:I

    .line 1734
    iput-object v6, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    .line 1737
    iput-wide v4, p0, Lcom/gp/netscramblefull/BoardView;->lastProgMove:J

    .line 187
    iput-object p1, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    .line 190
    const-wide/16 v3, 0x1e

    invoke-virtual {p0, v3, v4}, Lcom/gp/netscramblefull/BoardView;->setDelay(J)V

    .line 194
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->findMatrix()V

    .line 199
    const-string v3, "netscramble"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Create board "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Lcom/gp/netscramblefull/Cell;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/gp/netscramblefull/Cell;

    iput-object v3, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    .line 201
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v2, v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    iput-object v3, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    .line 211
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    .line 212
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    .line 215
    iput-object v6, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    .line 216
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-direct {p0, v3}, Lcom/gp/netscramblefull/BoardView;->setFocus(Lcom/gp/netscramblefull/Cell;)V

    .line 217
    return-void

    .line 202
    :cond_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v1, v3, :cond_1

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Lcom/gp/netscramblefull/Cell;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/gp/netscramblefull/Cell;-><init>(Lcom/gp/netscramblefull/NetScramble;Lcom/gp/netscramblefull/BoardView;II)V

    .line 204
    .local v0, "cell":Lcom/gp/netscramblefull/Cell;
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v3, v3, v1

    aput-object v0, v3, v2

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/gp/netscramblefull/BoardView;Z)V
    .locals 0

    .prologue
    .line 1722
    iput-boolean p1, p0, Lcom/gp/netscramblefull/BoardView;->longPressed:Z

    return-void
.end method

.method static synthetic access$1(Lcom/gp/netscramblefull/BoardView;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gp/netscramblefull/BoardView;)Lcom/gp/netscramblefull/Cell;
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gp/netscramblefull/BoardView;)Lcom/gp/netscramblefull/NetScramble;
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    return-object v0
.end method

.method static synthetic access$4(Lcom/gp/netscramblefull/BoardView;)Lcom/gp/netscramblefull/BoardView$Screen;
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    return-object v0
.end method

.method static synthetic access$5(III)I
    .locals 1

    .prologue
    .line 1560
    invoke-static {p0, p1, p2}, Lcom/gp/netscramblefull/BoardView;->decr(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(III)I
    .locals 1

    .prologue
    .line 1546
    invoke-static {p0, p1, p2}, Lcom/gp/netscramblefull/BoardView;->incr(III)I

    move-result v0

    return v0
.end method

.method private addRandomDir(Ljava/util/Vector;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/gp/netscramblefull/Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/gp/netscramblefull/Cell;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gp/netscramblefull/Cell;

    .line 575
    .local v0, "cell":Lcom/gp/netscramblefull/Cell;
    new-instance v3, Ljava/util/EnumMap;

    const-class v7, Lcom/gp/netscramblefull/Cell$Dir;

    invoke-direct {v3, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 576
    .local v3, "freecells":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/gp/netscramblefull/Cell$Dir;Lcom/gp/netscramblefull/Cell;>;"
    sget-object v7, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v8, :cond_0

    .line 582
    invoke-virtual {v3}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 599
    :goto_1
    return-void

    .line 576
    :cond_0
    aget-object v1, v7, v9

    .line 577
    .local v1, "d":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/Cell;->next(Lcom/gp/netscramblefull/Cell$Dir;)Lcom/gp/netscramblefull/Cell;

    move-result-object v6

    .line 578
    .local v6, "ucell":Lcom/gp/netscramblefull/Cell;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/gp/netscramblefull/Cell;->dirs()Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v10

    sget-object v11, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    if-ne v10, v11, :cond_1

    .line 579
    invoke-virtual {v3, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "d":Lcom/gp/netscramblefull/Cell$Dir;
    .end local v6    # "ucell":Lcom/gp/netscramblefull/Cell;
    :cond_2
    invoke-virtual {v3}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 589
    .local v5, "keys":[Ljava/lang/Object;
    sget-object v7, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v4, v5, v7

    check-cast v4, Lcom/gp/netscramblefull/Cell$Dir;

    .line 590
    .local v4, "key":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gp/netscramblefull/Cell;

    .line 593
    .local v2, "dest":Lcom/gp/netscramblefull/Cell;
    invoke-virtual {v0, v4}, Lcom/gp/netscramblefull/Cell;->addDir(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 594
    iget-object v7, v4, Lcom/gp/netscramblefull/Cell$Dir;->reverse:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v2, v7}, Lcom/gp/netscramblefull/Cell;->addDir(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 597
    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private blink(Lcom/gp/netscramblefull/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/gp/netscramblefull/Cell;

    .prologue
    .line 1203
    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->doHighlight()V

    .line 1204
    return-void
.end method

.method private createNet(Lcom/gp/netscramblefull/BoardView$Skill;)I
    .locals 13
    .param p1, "sk"    # Lcom/gp/netscramblefull/BoardView$Skill;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "netscramble"

    const-string v11, "-"

    .line 494
    const-string v6, "netscramble"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Create net "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 495
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 494
    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    .local v4, "x":I
    :goto_0
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    if-lt v4, v6, :cond_1

    .line 506
    sget-object v6, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardWidth:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    add-int v2, v6, v7

    .line 507
    .local v2, "rootX":I
    sget-object v6, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardHeight:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    add-int v3, v6, v7

    .line 508
    .local v3, "rootY":I
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    iput-object v6, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    .line 509
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v6, v9}, Lcom/gp/netscramblefull/Cell;->setConnected(Z)V

    .line 510
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v6, v9}, Lcom/gp/netscramblefull/Cell;->setRoot(Z)V

    .line 513
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-direct {p0, v6}, Lcom/gp/netscramblefull/BoardView;->setFocus(Lcom/gp/netscramblefull/Cell;)V

    .line 517
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 518
    .local v1, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/gp/netscramblefull/Cell;>;"
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v6, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextBoolean()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 520
    invoke-direct {p0, v1}, Lcom/gp/netscramblefull/BoardView;->addRandomDir(Ljava/util/Vector;)V

    .line 524
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "cells":I
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    :goto_2
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    if-lt v4, v6, :cond_7

    .line 554
    const-string v6, "netscramble"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Created net with "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cells"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return v0

    .line 499
    .end local v0    # "cells":I
    .end local v1    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/gp/netscramblefull/Cell;>;"
    .end local v2    # "rootX":I
    .end local v3    # "rootY":I
    :cond_1
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    .local v5, "y":I
    :goto_3
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    if-lt v5, v6, :cond_2

    .line 498
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 500
    :cond_2
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    sget-object v7, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v6, v7}, Lcom/gp/netscramblefull/Cell;->setDirs(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 501
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    invoke-virtual {v6, v8}, Lcom/gp/netscramblefull/Cell;->setRoot(Z)V

    .line 499
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 527
    .end local v5    # "y":I
    .restart local v1    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/gp/netscramblefull/Cell;>;"
    .restart local v2    # "rootX":I
    .restart local v3    # "rootY":I
    :cond_3
    sget-object v6, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextBoolean()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 529
    invoke-direct {p0, v1}, Lcom/gp/netscramblefull/BoardView;->addRandomDir(Ljava/util/Vector;)V

    .line 533
    sget-object v6, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextBoolean()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 534
    invoke-direct {p0, v1}, Lcom/gp/netscramblefull/BoardView;->addRandomDir(Ljava/util/Vector;)V

    .line 538
    :cond_4
    iget v6, p1, Lcom/gp/netscramblefull/BoardView$Skill;->branches:I

    if-lt v6, v10, :cond_5

    sget-object v6, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    invoke-virtual {v6, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_5

    .line 539
    invoke-direct {p0, v1}, Lcom/gp/netscramblefull/BoardView;->addRandomDir(Ljava/util/Vector;)V

    .line 544
    :cond_5
    :goto_4
    invoke-virtual {v1, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 541
    :cond_6
    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 550
    .restart local v0    # "cells":I
    :cond_7
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    .restart local v5    # "y":I
    :goto_5
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    if-lt v5, v6, :cond_8

    .line 549
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 551
    :cond_8
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/gp/netscramblefull/Cell;->dirs()Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v6

    sget-object v7, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    if-eq v6, v7, :cond_9

    .line 552
    add-int/lit8 v0, v0, 0x1

    .line 550
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method private static final decr(III)I
    .locals 1
    .param p0, "v"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1561
    if-le p0, p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    move v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    sub-int v0, p2, v0

    goto :goto_0
.end method

.method private findCell(FF)Lcom/gp/netscramblefull/Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1041
    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->paddingX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 1042
    .local v0, "cx":I
    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->paddingY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 1043
    .local v1, "cy":I
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v1, v2, :cond_1

    .line 1044
    :cond_0
    const/4 v2, 0x0

    .line 1045
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method private findMatrix()V
    .locals 10

    .prologue
    .line 225
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Lcom/gp/netscramblefull/NetScramble;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 226
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 227
    .local v1, "disp":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 228
    .local v5, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 229
    .local v2, "height":I
    if-ge v5, v2, :cond_0

    move v4, v5

    .line 230
    .local v4, "min":I
    :goto_0
    if-le v5, v2, :cond_1

    move v3, v5

    .line 231
    .local v3, "max":I
    :goto_1
    int-to-float v7, v3

    int-to-float v8, v4

    div-float v0, v7, v8

    .line 233
    .local v0, "aspect":F
    const/16 v7, 0x190

    if-gt v4, v7, :cond_3

    .line 234
    const v7, 0x3fb33333    # 1.4f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_2

    .line 235
    sget-object v7, Lcom/gp/netscramblefull/BoardView$Screen;->WSMALL:Lcom/gp/netscramblefull/BoardView$Screen;

    iput-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    .line 246
    :goto_2
    if-le v5, v2, :cond_6

    .line 247
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    invoke-static {v7}, Lcom/gp/netscramblefull/BoardView$Screen;->access$2(Lcom/gp/netscramblefull/BoardView$Screen;)I

    move-result v7

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    .line 248
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    invoke-static {v7}, Lcom/gp/netscramblefull/BoardView$Screen;->access$3(Lcom/gp/netscramblefull/BoardView$Screen;)I

    move-result v7

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    .line 253
    :goto_3
    const-string v7, "netscramble"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "findMatrix: screen="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 254
    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 253
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .end local v0    # "aspect":F
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_0
    move v4, v2

    .line 229
    goto :goto_0

    .restart local v4    # "min":I
    :cond_1
    move v3, v2

    .line 230
    goto :goto_1

    .line 237
    .restart local v0    # "aspect":F
    .restart local v3    # "max":I
    :cond_2
    sget-object v7, Lcom/gp/netscramblefull/BoardView$Screen;->SMALL:Lcom/gp/netscramblefull/BoardView$Screen;

    iput-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    goto :goto_2

    .line 238
    :cond_3
    const/16 v7, 0x1f4

    if-gt v4, v7, :cond_5

    .line 239
    const/high16 v7, 0x3fc00000    # 1.5f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_4

    .line 240
    sget-object v7, Lcom/gp/netscramblefull/BoardView$Screen;->WMEDIUM:Lcom/gp/netscramblefull/BoardView$Screen;

    iput-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    goto :goto_2

    .line 242
    :cond_4
    sget-object v7, Lcom/gp/netscramblefull/BoardView$Screen;->MEDIUM:Lcom/gp/netscramblefull/BoardView$Screen;

    iput-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    goto :goto_2

    .line 244
    :cond_5
    sget-object v7, Lcom/gp/netscramblefull/BoardView$Screen;->HUGE:Lcom/gp/netscramblefull/BoardView$Screen;

    iput-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    goto :goto_2

    .line 250
    :cond_6
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    invoke-static {v7}, Lcom/gp/netscramblefull/BoardView$Screen;->access$3(Lcom/gp/netscramblefull/BoardView$Screen;)I

    move-result v7

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    .line 251
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    invoke-static {v7}, Lcom/gp/netscramblefull/BoardView$Screen;->access$2(Lcom/gp/netscramblefull/BoardView$Screen;)I

    move-result v7

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    goto :goto_3
.end method

.method private hasNewConnection(Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell$Dir;[[Z)Z
    .locals 6
    .param p1, "cell"    # Lcom/gp/netscramblefull/Cell;
    .param p2, "dir"    # Lcom/gp/netscramblefull/Cell$Dir;
    .param p3, "got"    # [[Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 681
    invoke-virtual {p1, p2}, Lcom/gp/netscramblefull/Cell;->next(Lcom/gp/netscramblefull/Cell$Dir;)Lcom/gp/netscramblefull/Cell;

    move-result-object v0

    .line 682
    .local v0, "other":Lcom/gp/netscramblefull/Cell;
    iget-object v1, p2, Lcom/gp/netscramblefull/Cell$Dir;->reverse:Lcom/gp/netscramblefull/Cell$Dir;

    .line 686
    .local v1, "otherdir":Lcom/gp/netscramblefull/Cell$Dir;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v2

    aget-object v2, p3, v2

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    .line 696
    :goto_0
    return v2

    .line 691
    :cond_1
    invoke-virtual {p1, p2}, Lcom/gp/netscramblefull/Cell;->hasConnection(Lcom/gp/netscramblefull/Cell$Dir;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/Cell;->hasConnection(Lcom/gp/netscramblefull/Cell$Dir;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v4

    .line 692
    goto :goto_0

    .line 695
    :cond_3
    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v2

    aget-object v2, p3, v2

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v3

    aput-boolean v5, v2, v3

    move v2, v5

    .line 696
    goto :goto_0
.end method

.method private static final incr(III)I
    .locals 1
    .param p0, "v"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1547
    const/4 v0, 0x1

    sub-int v0, p2, v0

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    move v0, p0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private moveFocus(Lcom/gp/netscramblefull/Cell$Dir;II)V
    .locals 5
    .param p1, "dir"    # Lcom/gp/netscramblefull/Cell$Dir;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1101
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    if-nez v3, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v3, p1}, Lcom/gp/netscramblefull/Cell;->next(Lcom/gp/netscramblefull/Cell$Dir;)Lcom/gp/netscramblefull/Cell;

    move-result-object v0

    .line 1108
    .local v0, "goCell":Lcom/gp/netscramblefull/Cell;
    if-nez v0, :cond_1

    .line 1109
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v3}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v3

    add-int/2addr v3, p2

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    rem-int v1, v3, v4

    .line 1110
    .local v1, "nx":I
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v3}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    rem-int v2, v3, v4

    .line 1111
    .local v2, "ny":I
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v3, v3, v1

    aget-object v0, v3, v2

    .line 1114
    .end local v1    # "nx":I
    .end local v2    # "ny":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/gp/netscramblefull/BoardView;->setFocus(Lcom/gp/netscramblefull/Cell;)V

    goto :goto_0
.end method

.method private pauseGame()V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/NetScramble;->postState(Lcom/gp/netscramblefull/NetScramble$State;)V

    .line 1194
    return-void
.end method

.method private pressDown()V
    .locals 4

    .prologue
    .line 1054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/BoardView;->longPressed:Z

    .line 1055
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->longPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView;->longPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1056
    return-void
.end method

.method private pressUp()V
    .locals 2

    .prologue
    .line 1064
    iget-boolean v0, p0, Lcom/gp/netscramblefull/BoardView;->longPressed:Z

    if-nez v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->longPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView;->longPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1070
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gp/netscramblefull/BoardView;->cellRotate(Lcom/gp/netscramblefull/Cell;I)V

    .line 1073
    :cond_0
    return-void
.end method

.method private resetBoard(Lcom/gp/netscramblefull/BoardView$Skill;)V
    .locals 11
    .param p1, "sk"    # Lcom/gp/netscramblefull/BoardView$Skill;

    .prologue
    const/4 v10, 0x1

    .line 433
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    invoke-virtual {v7, p1, v8, v9}, Lcom/gp/netscramblefull/BoardView$Screen;->getBoardWidth(Lcom/gp/netscramblefull/BoardView$Skill;II)I

    move-result v7

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->boardWidth:I

    .line 434
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->screenConfig:Lcom/gp/netscramblefull/BoardView$Screen;

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    invoke-virtual {v7, p1, v8, v9}, Lcom/gp/netscramblefull/BoardView$Screen;->getBoardHeight(Lcom/gp/netscramblefull/BoardView$Skill;II)I

    move-result v7

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->boardHeight:I

    .line 435
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->boardWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    .line 436
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->boardWidth:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    .line 437
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->boardHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    .line 438
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->boardHeight:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    .line 442
    const-string v7, "netscramble"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Reset board "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    iget-boolean v4, v7, Lcom/gp/netscramblefull/BoardView$Skill;->wrapped:Z

    .line 445
    .local v4, "wrap":Z
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v5, v7, :cond_0

    .line 462
    return-void

    .line 446
    :cond_0
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v6, v7, :cond_1

    .line 445
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 447
    :cond_1
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    if-eqz v4, :cond_a

    sget-object v8, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    :goto_2
    invoke-virtual {v7, v8}, Lcom/gp/netscramblefull/Cell;->reset(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 450
    const/4 v2, 0x0

    .local v2, "r":Lcom/gp/netscramblefull/Cell;
    move-object v1, v2

    .local v1, "l":Lcom/gp/netscramblefull/Cell;
    move-object v0, v2

    .local v0, "d":Lcom/gp/netscramblefull/Cell;
    move-object v3, v2

    .line 451
    .local v3, "u":Lcom/gp/netscramblefull/Cell;
    if-nez v4, :cond_2

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    if-le v6, v7, :cond_3

    .line 452
    :cond_2
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    invoke-static {v6, v8, v9}, Lcom/gp/netscramblefull/BoardView;->decr(III)I

    move-result v8

    aget-object v3, v7, v8

    .line 453
    :cond_3
    if-nez v4, :cond_4

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    sub-int/2addr v7, v10

    if-ge v6, v7, :cond_5

    .line 454
    :cond_4
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    invoke-static {v6, v8, v9}, Lcom/gp/netscramblefull/BoardView;->incr(III)I

    move-result v8

    aget-object v0, v7, v8

    .line 455
    :cond_5
    if-nez v4, :cond_6

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    if-le v5, v7, :cond_7

    .line 456
    :cond_6
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    invoke-static {v5, v8, v9}, Lcom/gp/netscramblefull/BoardView;->decr(III)I

    move-result v8

    aget-object v7, v7, v8

    aget-object v1, v7, v6

    .line 457
    :cond_7
    if-nez v4, :cond_8

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    sub-int/2addr v7, v10

    if-ge v5, v7, :cond_9

    .line 458
    :cond_8
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    invoke-static {v5, v8, v9}, Lcom/gp/netscramblefull/BoardView;->incr(III)I

    move-result v8

    aget-object v7, v7, v8

    aget-object v2, v7, v6

    .line 459
    :cond_9
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/gp/netscramblefull/Cell;->setNeighbours(Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;)V

    .line 446
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 447
    .end local v0    # "d":Lcom/gp/netscramblefull/Cell;
    .end local v1    # "l":Lcom/gp/netscramblefull/Cell;
    .end local v2    # "r":Lcom/gp/netscramblefull/Cell;
    .end local v3    # "u":Lcom/gp/netscramblefull/Cell;
    :cond_a
    sget-object v8, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    goto :goto_2
.end method

.method private restoreBoard(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z
    .locals 4
    .param p1, "map"    # Landroid/os/Bundle;
    .param p2, "state"    # Lcom/gp/netscramblefull/BoardView$GameState;

    .prologue
    .line 1415
    const-string v2, "gridWidth"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1416
    .local v1, "sgw":I
    const-string v2, "gridHeight"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1417
    .local v0, "sgh":I
    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-ne v0, v2, :cond_0

    .line 1418
    invoke-direct {p0, p1, p2}, Lcom/gp/netscramblefull/BoardView;->restoreNormal(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z

    move-result v2

    .line 1425
    :goto_0
    return v2

    .line 1419
    :cond_0
    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-ne v0, v2, :cond_2

    .line 1420
    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-le v2, v3, :cond_1

    .line 1421
    invoke-direct {p0, p1, p2}, Lcom/gp/netscramblefull/BoardView;->restoreRotLeft(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z

    move-result v2

    goto :goto_0

    .line 1423
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/gp/netscramblefull/BoardView;->restoreRotRight(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z

    move-result v2

    goto :goto_0

    .line 1425
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restoreNormal(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z
    .locals 9
    .param p1, "map"    # Landroid/os/Bundle;
    .param p2, "state"    # Lcom/gp/netscramblefull/BoardView$GameState;

    .prologue
    .line 1440
    const-string v7, "rootX"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1441
    .local v3, "rx":I
    const-string v7, "rootY"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1442
    .local v4, "ry":I
    iget-object v7, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v7, v7, v3

    aget-object v7, v7, v4

    iput-object v7, p2, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    .line 1443
    const-string v7, "focusX"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1444
    .local v0, "fx":I
    const-string v7, "focusY"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1445
    .local v1, "fy":I
    iget-object v7, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    iput-object v7, p2, Lcom/gp/netscramblefull/BoardView$GameState;->focus:Lcom/gp/netscramblefull/Cell;

    .line 1448
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v5, v7, :cond_0

    .line 1455
    const/4 v7, 0x1

    return v7

    .line 1449
    :cond_0
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v6, v7, :cond_1

    .line 1448
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1450
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cell "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1451
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gp/netscramblefull/Cell;->restoreState(Landroid/os/Bundle;)V

    .line 1449
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private restoreRotLeft(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z
    .locals 12
    .param p1, "map"    # Landroid/os/Bundle;
    .param p2, "state"    # Lcom/gp/netscramblefull/BoardView$GameState;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1471
    const-string v8, "rootX"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1472
    .local v4, "rx":I
    const-string v8, "rootY"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1473
    .local v5, "ry":I
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    sub-int/2addr v9, v4

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    iput-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    .line 1474
    const-string v8, "focusX"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1475
    .local v1, "fx":I
    const-string v8, "focusY"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1476
    .local v2, "fy":I
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v8, v8, v2

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    sub-int/2addr v9, v1

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    iput-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->focus:Lcom/gp/netscramblefull/Cell;

    .line 1479
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v7, v8, :cond_0

    move v8, v10

    .line 1492
    :goto_1
    return v8

    .line 1480
    :cond_0
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v6, v8, :cond_1

    .line 1479
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1481
    :cond_1
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    array-length v8, v8

    if-ge v6, v8, :cond_2

    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v8, v8, v6

    array-length v8, v8

    if-lt v7, v8, :cond_3

    :cond_2
    move v8, v11

    .line 1482
    goto :goto_1

    .line 1483
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cell "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1484
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1485
    .local v0, "cmap":Landroid/os/Bundle;
    if-nez v0, :cond_4

    move v8, v11

    .line 1486
    goto :goto_1

    .line 1487
    :cond_4
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v8, v8, v6

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    sub-int/2addr v9, v7

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v8, v0}, Lcom/gp/netscramblefull/Cell;->restoreState(Landroid/os/Bundle;)V

    .line 1488
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v8, v8, v6

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    sub-int/2addr v9, v7

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    const/16 v9, -0x5a

    invoke-virtual {v8, v9}, Lcom/gp/netscramblefull/Cell;->rotateImmediate(I)V

    .line 1480
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private restoreRotRight(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z
    .locals 12
    .param p1, "map"    # Landroid/os/Bundle;
    .param p2, "state"    # Lcom/gp/netscramblefull/BoardView$GameState;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1508
    const-string v8, "rootX"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1509
    .local v4, "rx":I
    const-string v8, "rootY"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1510
    .local v5, "ry":I
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    sub-int/2addr v9, v5

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    aget-object v8, v8, v4

    iput-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    .line 1511
    const-string v8, "focusX"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1512
    .local v1, "fx":I
    const-string v8, "focusY"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1513
    .local v2, "fy":I
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    sub-int/2addr v9, v2

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    aget-object v8, v8, v1

    iput-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->focus:Lcom/gp/netscramblefull/Cell;

    .line 1516
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v7, v8, :cond_0

    move v8, v10

    .line 1529
    :goto_1
    return v8

    .line 1517
    :cond_0
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v6, v8, :cond_1

    .line 1516
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1518
    :cond_1
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    array-length v8, v8

    if-ge v6, v8, :cond_2

    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v8, v8, v6

    array-length v8, v8

    if-lt v7, v8, :cond_3

    :cond_2
    move v8, v11

    .line 1519
    goto :goto_1

    .line 1520
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cell "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1521
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1522
    .local v0, "cmap":Landroid/os/Bundle;
    if-nez v0, :cond_4

    move v8, v11

    .line 1523
    goto :goto_1

    .line 1524
    :cond_4
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    sub-int/2addr v9, v6

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    aget-object v8, v8, v7

    invoke-virtual {v8, v0}, Lcom/gp/netscramblefull/Cell;->restoreState(Landroid/os/Bundle;)V

    .line 1525
    iget-object v8, p2, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    iget v9, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    sub-int/2addr v9, v6

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    aget-object v8, v8, v7

    const/16 v9, 0x5a

    invoke-virtual {v8, v9}, Lcom/gp/netscramblefull/Cell;->rotateImmediate(I)V

    .line 1517
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private saveBoard(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1355
    const-string v3, "gridWidth"

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1356
    const-string v3, "gridHeight"

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1357
    const-string v3, "rootX"

    iget-object v4, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v4}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1358
    const-string v3, "rootY"

    iget-object v4, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v4}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1359
    const-string v3, "focusX"

    iget-object v4, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v4}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1360
    const-string v3, "focusY"

    iget-object v4, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v4}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1363
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v1, v3, :cond_0

    .line 1369
    return-void

    .line 1364
    :cond_0
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v2, v3, :cond_1

    .line 1363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1365
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cell "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/gp/netscramblefull/Cell;->saveState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setFocus(Lcom/gp/netscramblefull/Cell;)V
    .locals 2
    .param p1, "cell"    # Lcom/gp/netscramblefull/Cell;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/Cell;->setFocused(Z)V

    .line 1135
    :cond_0
    iput-object p1, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    .line 1136
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/Cell;->setFocused(Z)V

    .line 1138
    :cond_1
    return-void
.end method

.method private solveCell(Lcom/gp/netscramblefull/Cell;Ljava/util/LinkedList;)V
    .locals 12
    .param p1, "sc"    # Lcom/gp/netscramblefull/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gp/netscramblefull/Cell;",
            "Ljava/util/LinkedList",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .local p2, "moves":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[I>;"
    const/16 v11, -0x5a

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1302
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v6

    aget-object v0, v5, v6

    .line 1303
    .local v0, "mc":Lcom/gp/netscramblefull/Cell;
    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->dirs()Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v4

    .line 1304
    .local v4, "sd":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->dirs()Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v1

    .line 1305
    .local v1, "md":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->dirs()Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v5

    if-eq v5, v1, :cond_0

    .line 1307
    const/16 v5, 0x5a

    invoke-virtual {v0, v5}, Lcom/gp/netscramblefull/Cell;->rotatedDirs(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v5

    if-ne v5, v4, :cond_1

    .line 1308
    new-array v2, v10, [I

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v5

    aput v5, v2, v7

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v5

    aput v5, v2, v8

    const/16 v5, 0x5a

    aput v5, v2, v9

    .line 1309
    .local v2, "move":[I
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1321
    .end local v2    # "move":[I
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    invoke-virtual {v0, v11}, Lcom/gp/netscramblefull/Cell;->rotatedDirs(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v5

    if-ne v5, v4, :cond_2

    .line 1311
    new-array v2, v10, [I

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v5

    aput v5, v2, v7

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v5

    aput v5, v2, v8

    aput v11, v2, v9

    .line 1312
    .restart local v2    # "move":[I
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1313
    .end local v2    # "move":[I
    :cond_2
    const/16 v5, 0xb4

    invoke-virtual {v0, v5}, Lcom/gp/netscramblefull/Cell;->rotatedDirs(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v5

    if-ne v5, v4, :cond_0

    .line 1314
    sget-object v5, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x5a

    move v3, v5

    .line 1315
    .local v3, "rot":I
    :goto_1
    new-array v2, v10, [I

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v5

    aput v5, v2, v7

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v5

    aput v5, v2, v8

    aput v3, v2, v9

    .line 1316
    .restart local v2    # "move":[I
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1317
    new-array v2, v10, [I

    .end local v2    # "move":[I
    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v5

    aput v5, v2, v7

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v5

    aput v5, v2, v8

    aput v3, v2, v9

    .line 1318
    .restart local v2    # "move":[I
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "move":[I
    .end local v3    # "rot":I
    :cond_3
    move v3, v11

    .line 1314
    goto :goto_1
.end method

.method private declared-synchronized updateConnections()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 617
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    :try_start_0
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v3, v5, :cond_1

    .line 623
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 628
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v5}, Lcom/gp/netscramblefull/Cell;->isRotated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 629
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v6}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v6}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v6

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 630
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_0
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 647
    const/4 v2, 0x0

    .line 648
    .local v2, "newConnections":I
    const/4 v3, 0x0

    :goto_1
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v5, :cond_5

    .line 662
    if-eqz v2, :cond_8

    move v5, v11

    :goto_2
    monitor-exit p0

    return v5

    .line 618
    .end local v2    # "newConnections":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_3
    :try_start_1
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v4, v5, :cond_2

    .line 617
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 619
    :cond_2
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    aget-object v5, v5, v3

    const/4 v6, 0x0

    aput-boolean v6, v5, v4

    .line 618
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 637
    .end local v4    # "y":I
    :cond_3
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gp/netscramblefull/Cell;

    .line 639
    .local v0, "cell":Lcom/gp/netscramblefull/Cell;
    sget-object v5, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v6, v5

    move v7, v10

    :goto_4
    if-ge v7, v6, :cond_0

    aget-object v1, v5, v7

    .line 640
    .local v1, "d":Lcom/gp/netscramblefull/Cell$Dir;
    iget-object v8, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    invoke-direct {p0, v0, v1, v8}, Lcom/gp/netscramblefull/BoardView;->hasNewConnection(Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell$Dir;[[Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 641
    iget-object v8, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/Cell;->next(Lcom/gp/netscramblefull/Cell$Dir;)Lcom/gp/netscramblefull/Cell;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 649
    .end local v0    # "cell":Lcom/gp/netscramblefull/Cell;
    .end local v1    # "d":Lcom/gp/netscramblefull/Cell$Dir;
    .restart local v2    # "newConnections":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "y":I
    :goto_5
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v4, v5, :cond_6

    .line 648
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 650
    :cond_6
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    aget-object v5, v5, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_7

    .line 651
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/gp/netscramblefull/Cell;->isConnected()Z

    move-result v5

    if-nez v5, :cond_7

    .line 652
    add-int/lit8 v2, v2, 0x1

    .line 654
    :cond_7
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    aget-object v6, v6, v3

    aget-boolean v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/gp/netscramblefull/Cell;->setConnected(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v4    # "y":I
    :cond_8
    move v5, v10

    .line 662
    goto :goto_2

    .line 617
    .end local v2    # "newConnections":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method protected animStart()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method protected animStop()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method protected appSize(IILandroid/graphics/Bitmap$Config;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/16 v7, 0x1c

    const/4 v4, 0x1

    const/16 v6, 0x48

    const-string v8, "x"

    .line 286
    if-lt p1, v4, :cond_0

    if-ge p2, v4, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/gp/netscramblefull/BoardView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/gp/netscramblefull/BoardView;->backingBitmap:Landroid/graphics/Bitmap;

    .line 291
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->backingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/gp/netscramblefull/BoardView;->backingCanvas:Landroid/graphics/Canvas;

    .line 295
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    div-int v4, p1, v4

    iput v4, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    .line 296
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    div-int v4, p2, v4

    iput v4, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    .line 297
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    if-ge v4, v5, :cond_4

    .line 298
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    iput v4, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    .line 303
    :cond_2
    :goto_1
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    if-lt v4, v7, :cond_3

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    if-ge v4, v7, :cond_5

    .line 304
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Screen size is not playable."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 299
    :cond_4
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    if-ge v4, v5, :cond_2

    .line 300
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    iput v4, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    goto :goto_1

    .line 305
    :cond_5
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    if-gt v4, v6, :cond_6

    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    if-le v4, v6, :cond_7

    .line 306
    :cond_6
    iput v6, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    .line 307
    iput v6, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    .line 311
    :cond_7
    const-string v4, "netscramble"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Layout board "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 312
    const-string v6, "cells "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    mul-int/2addr v4, v5

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/gp/netscramblefull/BoardView;->paddingX:I

    .line 316
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    mul-int/2addr v4, v5

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/gp/netscramblefull/BoardView;->paddingY:I

    .line 319
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_2
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v0, v4, :cond_8

    .line 328
    iget-object v4, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    invoke-virtual {v4}, Lcom/gp/netscramblefull/NetScramble;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    invoke-static {v4, v5, v6, p3}, Lcom/gp/netscramblefull/Cell;->initPixmaps(Landroid/content/res/Resources;IILandroid/graphics/Bitmap$Config;)V

    goto/16 :goto_0

    .line 320
    :cond_8
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_3
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v2, v4, :cond_9

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 321
    :cond_9
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->paddingX:I

    add-int v1, v4, v5

    .line 322
    .local v1, "xPos":I
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->paddingY:I

    add-int v3, v4, v5

    .line 323
    .local v3, "yPos":I
    iget-object v4, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->cellWidth:I

    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->cellHeight:I

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/gp/netscramblefull/Cell;->setGeometry(IIII)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected appStart()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method protected appStop()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method autosolve()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1230
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-eqz v7, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/gp/netscramblefull/BoardView;->autosolveStop()V

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->solvedState:Landroid/os/Bundle;

    .line 1236
    .local v3, "solution":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1240
    new-instance v4, Lcom/gp/netscramblefull/BoardView$GameState;

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    iget v8, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    iget-object v9, p0, Lcom/gp/netscramblefull/BoardView;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-direct {v4, p0, v7, v8, v9}, Lcom/gp/netscramblefull/BoardView$GameState;-><init>(Lcom/gp/netscramblefull/BoardView;IILcom/gp/netscramblefull/BoardView$Skill;)V

    .line 1241
    .local v4, "state":Lcom/gp/netscramblefull/BoardView$GameState;
    invoke-direct {p0, v3, v4}, Lcom/gp/netscramblefull/BoardView;->restoreBoard(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1245
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    .line 1249
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 1252
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v5, v7, :cond_3

    .line 1257
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    iget-object v8, v4, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1258
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    iget-object v8, v4, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v8}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v8, v4, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {v8}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v8

    aput-boolean v12, v7, v8

    .line 1263
    :cond_2
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1278
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/gp/netscramblefull/BoardView;->lastProgMove:J

    .line 1279
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    invoke-virtual {v7, v12}, Lcom/gp/netscramblefull/NetScramble;->selectAutosolveMode(Z)V

    goto :goto_0

    .line 1253
    :cond_3
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_2
    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v6, v7, :cond_4

    .line 1252
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1254
    :cond_4
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    aget-object v7, v7, v5

    aput-boolean v13, v7, v6

    .line 1253
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1264
    .end local v6    # "y":I
    :cond_5
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gp/netscramblefull/Cell;

    .line 1265
    .local v0, "cell":Lcom/gp/netscramblefull/Cell;
    iget-object v7, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v7}, Lcom/gp/netscramblefull/BoardView;->solveCell(Lcom/gp/netscramblefull/Cell;Ljava/util/LinkedList;)V

    .line 1267
    sget-object v7, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v8, v7

    move v9, v13

    :goto_3
    if-ge v9, v8, :cond_2

    aget-object v1, v7, v9

    .line 1268
    .local v1, "d":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/Cell;->hasConnection(Lcom/gp/netscramblefull/Cell$Dir;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1269
    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/Cell;->next(Lcom/gp/netscramblefull/Cell$Dir;)Lcom/gp/netscramblefull/Cell;

    move-result-object v2

    .line 1270
    .local v2, "next":Lcom/gp/netscramblefull/Cell;
    if-eqz v2, :cond_6

    iget-object v10, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    invoke-virtual {v2}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v2}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v11

    aget-boolean v10, v10, v11

    if-nez v10, :cond_6

    .line 1271
    iget-object v10, p0, Lcom/gp/netscramblefull/BoardView;->connectingCells:Ljava/util/LinkedList;

    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1272
    iget-object v10, p0, Lcom/gp/netscramblefull/BoardView;->isConnected:[[Z

    invoke-virtual {v2}, Lcom/gp/netscramblefull/Cell;->x()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v2}, Lcom/gp/netscramblefull/Cell;->y()I

    move-result v11

    aput-boolean v12, v10, v11

    .line 1267
    .end local v2    # "next":Lcom/gp/netscramblefull/Cell;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method autosolveStop()V
    .locals 2

    .prologue
    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    .line 1288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gp/netscramblefull/BoardView;->lastProgMove:J

    .line 1289
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/NetScramble;->selectAutosolveMode(Z)V

    .line 1290
    return-void
.end method

.method cellRotate(Lcom/gp/netscramblefull/Cell;I)V
    .locals 3
    .param p1, "cell"    # Lcom/gp/netscramblefull/Cell;
    .param p2, "dirn"    # I

    .prologue
    .line 1150
    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->dirs()Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v0

    .line 1151
    .local v0, "d":Lcom/gp/netscramblefull/Cell$Dir;
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    sget-object v2, Lcom/gp/netscramblefull/NetScramble$Sound;->CLICK:Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-virtual {v1, v2}, Lcom/gp/netscramblefull/NetScramble;->postSound(Lcom/gp/netscramblefull/NetScramble$Sound;)V

    .line 1153
    invoke-direct {p0, p1}, Lcom/gp/netscramblefull/BoardView;->blink(Lcom/gp/netscramblefull/Cell;)V

    .line 1166
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    sget-object v2, Lcom/gp/netscramblefull/NetScramble$Sound;->TURN:Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-virtual {v1, v2}, Lcom/gp/netscramblefull/NetScramble;->postSound(Lcom/gp/netscramblefull/NetScramble$Sound;)V

    .line 1159
    mul-int/lit8 v1, p2, 0x5a

    invoke-virtual {p1, v1}, Lcom/gp/netscramblefull/Cell;->rotate(I)V

    .line 1162
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->updateConnections()Z

    .line 1165
    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    invoke-virtual {v1, p1}, Lcom/gp/netscramblefull/NetScramble;->cellClicked(Lcom/gp/netscramblefull/Cell;)V

    goto :goto_0
.end method

.method cellToggleLock(Lcom/gp/netscramblefull/Cell;)V
    .locals 3
    .param p1, "cell"    # Lcom/gp/netscramblefull/Cell;

    .prologue
    .line 1177
    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->dirs()Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v0

    .line 1178
    .local v0, "d":Lcom/gp/netscramblefull/Cell$Dir;
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    if-ne v0, v1, :cond_1

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    sget-object v2, Lcom/gp/netscramblefull/NetScramble$Sound;->CLICK:Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-virtual {v1, v2}, Lcom/gp/netscramblefull/NetScramble;->postSound(Lcom/gp/netscramblefull/NetScramble$Sound;)V

    .line 1180
    invoke-direct {p0, p1}, Lcom/gp/netscramblefull/BoardView;->blink(Lcom/gp/netscramblefull/Cell;)V

    .line 1186
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/gp/netscramblefull/Cell;->setLocked(Z)V

    .line 1185
    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    sget-object v2, Lcom/gp/netscramblefull/NetScramble$Sound;->POP:Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-virtual {v1, v2}, Lcom/gp/netscramblefull/NetScramble;->postSound(Lcom/gp/netscramblefull/NetScramble$Sound;)V

    goto :goto_0

    .line 1184
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected doDraw(Landroid/graphics/Canvas;J)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "now"    # J

    .prologue
    const/4 v5, 0x0

    .line 876
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v1, v3, :cond_1

    .line 881
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->backingBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 886
    iget-boolean v3, p0, Lcom/gp/netscramblefull/BoardView;->drawBlips:Z

    if-eqz v3, :cond_0

    .line 887
    iget-wide v3, p0, Lcom/gp/netscramblefull/BoardView;->blipsLastAdvance:J

    sub-long v3, p2, v3

    long-to-float v3, v3

    const/high16 v4, 0x43960000    # 300.0f

    div-float v0, v3, v4

    .line 888
    .local v0, "frac":F
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v1, v3, :cond_3

    .line 892
    .end local v0    # "frac":F
    :cond_0
    return-void

    .line 877
    :cond_1
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_2
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v2, v3, :cond_2

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    :cond_2
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/gp/netscramblefull/BoardView;->backingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4, p2, p3}, Lcom/gp/netscramblefull/Cell;->doDraw(Landroid/graphics/Canvas;J)V

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 889
    .end local v2    # "y":I
    .restart local v0    # "frac":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "y":I
    :goto_3
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v2, v3, :cond_4

    .line 888
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 890
    :cond_4
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, p3, v0}, Lcom/gp/netscramblefull/Cell;->doDrawBlips(Landroid/graphics/Canvas;JF)V

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected doUpdate(J)V
    .locals 13
    .param p1, "now"    # J

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v10, 0x0

    .line 784
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/gp/netscramblefull/BoardView;->lastProgMove:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x320

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 785
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 787
    invoke-virtual {p0}, Lcom/gp/netscramblefull/BoardView;->autosolveStop()V

    .line 816
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 817
    .local v0, "changedCell":Lcom/gp/netscramblefull/Cell;
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v4, v6, :cond_7

    .line 823
    iget-boolean v6, p0, Lcom/gp/netscramblefull/BoardView;->drawBlips:Z

    if-eqz v6, :cond_1

    .line 824
    iget-wide v6, p0, Lcom/gp/netscramblefull/BoardView;->blipsLastAdvance:J

    sub-long v6, p1, v6

    cmp-long v6, v6, v11

    if-ltz v6, :cond_1

    .line 825
    const/4 v4, 0x0

    :goto_2
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v4, v6, :cond_a

    .line 828
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->blipCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/gp/netscramblefull/BoardView;->blipCount:I

    .line 829
    const/4 v4, 0x0

    :goto_3
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v4, v6, :cond_c

    .line 832
    iget-wide v6, p0, Lcom/gp/netscramblefull/BoardView;->blipsLastAdvance:J

    add-long/2addr v6, v11

    iput-wide v6, p0, Lcom/gp/netscramblefull/BoardView;->blipsLastAdvance:J

    .line 833
    iget-wide v6, p0, Lcom/gp/netscramblefull/BoardView;->blipsLastAdvance:J

    cmp-long v6, v6, p1

    if-gez v6, :cond_1

    .line 834
    iput-wide p1, p0, Lcom/gp/netscramblefull/BoardView;->blipsLastAdvance:J

    .line 839
    :cond_1
    if-eqz v0, :cond_3

    .line 840
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->updateConnections()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 841
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    sget-object v7, Lcom/gp/netscramblefull/NetScramble$Sound;->CONNECT:Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-virtual {v6, v7}, Lcom/gp/netscramblefull/NetScramble;->postSound(Lcom/gp/netscramblefull/NetScramble$Sound;)V

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/gp/netscramblefull/BoardView;->isSolved()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 846
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    :goto_4
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    if-lt v4, v6, :cond_e

    .line 850
    invoke-direct {p0, v0}, Lcom/gp/netscramblefull/BoardView;->blink(Lcom/gp/netscramblefull/Cell;)V

    .line 851
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    sget-object v7, Lcom/gp/netscramblefull/NetScramble$State;->SOLVED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v6, v7}, Lcom/gp/netscramblefull/NetScramble;->postState(Lcom/gp/netscramblefull/NetScramble$State;)V

    .line 852
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    sget-object v7, Lcom/gp/netscramblefull/NetScramble$Sound;->WIN:Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-virtual {v6, v7}, Lcom/gp/netscramblefull/NetScramble;->postSound(Lcom/gp/netscramblefull/NetScramble$Sound;)V

    .line 855
    :cond_3
    return-void

    .line 790
    .end local v0    # "changedCell":Lcom/gp/netscramblefull/Cell;
    .end local v4    # "x":I
    :cond_4
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 791
    .local v3, "move":[I
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget v7, v3, v10

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v7, v3, v7

    aget-object v2, v6, v7

    .line 792
    .local v2, "mc":Lcom/gp/netscramblefull/Cell;
    const/4 v6, 0x2

    aget v1, v3, v6

    .line 797
    .local v1, "dirn":I
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    if-eq v2, v6, :cond_5

    .line 798
    invoke-direct {p0, v2}, Lcom/gp/netscramblefull/BoardView;->setFocus(Lcom/gp/netscramblefull/Cell;)V

    .line 799
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 810
    :goto_5
    iput-wide p1, p0, Lcom/gp/netscramblefull/BoardView;->lastProgMove:J

    goto :goto_0

    .line 800
    :cond_5
    invoke-virtual {v2}, Lcom/gp/netscramblefull/Cell;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 801
    invoke-virtual {v2, v10}, Lcom/gp/netscramblefull/Cell;->setLocked(Z)V

    .line 802
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_5

    .line 805
    :cond_6
    invoke-virtual {v2, v10}, Lcom/gp/netscramblefull/Cell;->setBlind(Z)V

    .line 806
    const-wide/16 v6, 0x15e

    invoke-virtual {v2, v1, v6, v7}, Lcom/gp/netscramblefull/Cell;->rotate(IJ)V

    .line 807
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->updateConnections()Z

    goto :goto_5

    .line 818
    .end local v1    # "dirn":I
    .end local v2    # "mc":Lcom/gp/netscramblefull/Cell;
    .end local v3    # "move":[I
    .restart local v0    # "changedCell":Lcom/gp/netscramblefull/Cell;
    .restart local v4    # "x":I
    :cond_7
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_6
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v5, v6, :cond_8

    .line 817
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 819
    :cond_8
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    invoke-virtual {v6, p1, p2}, Lcom/gp/netscramblefull/Cell;->doUpdate(J)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 820
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v4

    aget-object v0, v6, v5

    .line 818
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 826
    .end local v5    # "y":I
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "y":I
    :goto_7
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v5, v6, :cond_b

    .line 825
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 827
    :cond_b
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    iget v7, p0, Lcom/gp/netscramblefull/BoardView;->blipCount:I

    invoke-virtual {v6, v7}, Lcom/gp/netscramblefull/Cell;->advanceBlips(I)V

    .line 826
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 830
    .end local v5    # "y":I
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "y":I
    :goto_8
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v5, v6, :cond_d

    .line 829
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 831
    :cond_d
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/gp/netscramblefull/Cell;->transferBlips()V

    .line 830
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 847
    .end local v5    # "y":I
    :cond_e
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    .restart local v5    # "y":I
    :goto_9
    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    if-lt v5, v6, :cond_f

    .line 846
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 848
    :cond_f
    iget-object v6, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    invoke-virtual {v6, v10}, Lcom/gp/netscramblefull/Cell;->setBlind(Z)V

    .line 847
    add-int/lit8 v5, v5, 0x1

    goto :goto_9
.end method

.method getBoardHeight()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/gp/netscramblefull/BoardView;->boardHeight:I

    return v0
.end method

.method getBoardWidth()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/gp/netscramblefull/BoardView;->boardWidth:I

    return v0
.end method

.method declared-synchronized isSolved()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 721
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    .local v1, "x":I
    :goto_0
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v3, :cond_0

    move v3, v4

    .line 731
    :goto_1
    monitor-exit p0

    return v3

    .line 722
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    .local v2, "y":I
    :goto_2
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    if-lt v2, v3, :cond_1

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    :cond_1
    iget-object v3, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v3, v3, v1

    aget-object v0, v3, v2

    .line 726
    .local v0, "cell":Lcom/gp/netscramblefull/Cell;
    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->numDirs()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 727
    const/4 v3, 0x0

    goto :goto_1

    .line 722
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 721
    .end local v0    # "cell":Lcom/gp/netscramblefull/Cell;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 912
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 913
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->parentApp:Lcom/gp/netscramblefull/NetScramble;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/NetScramble;->onBackPressed()V

    move v0, v2

    .line 968
    :goto_0
    return v0

    .line 918
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v3

    .line 968
    goto :goto_0

    .line 922
    :sswitch_0
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->pressDown()V

    move v0, v2

    .line 923
    goto :goto_0

    .line 925
    :sswitch_1
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {p0, v0, v2}, Lcom/gp/netscramblefull/BoardView;->cellRotate(Lcom/gp/netscramblefull/Cell;I)V

    :cond_1
    move v0, v2

    .line 927
    goto :goto_0

    .line 931
    :sswitch_2
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {p0, v0, v4}, Lcom/gp/netscramblefull/BoardView;->cellRotate(Lcom/gp/netscramblefull/Cell;I)V

    :cond_2
    move v0, v2

    .line 933
    goto :goto_0

    .line 937
    :sswitch_3
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {p0, v0, v2}, Lcom/gp/netscramblefull/BoardView;->cellRotate(Lcom/gp/netscramblefull/Cell;I)V

    :cond_3
    move v0, v2

    .line 939
    goto :goto_0

    .line 942
    :sswitch_4
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_4

    .line 943
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->focusedCell:Lcom/gp/netscramblefull/Cell;

    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/BoardView;->cellToggleLock(Lcom/gp/netscramblefull/Cell;)V

    :cond_4
    move v0, v2

    .line 944
    goto :goto_0

    .line 947
    :sswitch_5
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->pauseGame()V

    move v0, v2

    .line 948
    goto :goto_0

    .line 951
    :sswitch_6
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_5

    .line 952
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->U___:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-direct {p0, v0, v3, v4}, Lcom/gp/netscramblefull/BoardView;->moveFocus(Lcom/gp/netscramblefull/Cell$Dir;II)V

    :cond_5
    move v0, v2

    .line 953
    goto :goto_0

    .line 955
    :sswitch_7
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_6

    .line 956
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->_R__:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-direct {p0, v0, v2, v3}, Lcom/gp/netscramblefull/BoardView;->moveFocus(Lcom/gp/netscramblefull/Cell$Dir;II)V

    :cond_6
    move v0, v2

    .line 957
    goto :goto_0

    .line 959
    :sswitch_8
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_7

    .line 960
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->__D_:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-direct {p0, v0, v3, v2}, Lcom/gp/netscramblefull/BoardView;->moveFocus(Lcom/gp/netscramblefull/Cell$Dir;II)V

    :cond_7
    move v0, v2

    .line 961
    goto :goto_0

    .line 963
    :sswitch_9
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_8

    .line 964
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->___L:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-direct {p0, v0, v4, v3}, Lcom/gp/netscramblefull/BoardView;->moveFocus(Lcom/gp/netscramblefull/Cell$Dir;II)V

    :cond_8
    move v0, v2

    .line 965
    goto :goto_0

    .line 918
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0xb -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_5
        0x13 -> :sswitch_6
        0x14 -> :sswitch_8
        0x15 -> :sswitch_9
        0x16 -> :sswitch_7
        0x17 -> :sswitch_0
        0x29 -> :sswitch_3
        0x2a -> :sswitch_2
        0x2c -> :sswitch_5
        0x34 -> :sswitch_3
        0x36 -> :sswitch_2
        0x3e -> :sswitch_4
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 982
    packed-switch p1, :pswitch_data_0

    .line 989
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 985
    :pswitch_0
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->pressUp()V

    .line 986
    const/4 v0, 0x1

    goto :goto_0

    .line 982
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1014
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/gp/netscramblefull/BoardView;->findCell(FF)Lcom/gp/netscramblefull/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/netscramblefull/BoardView;->pressedCell:Lcom/gp/netscramblefull/Cell;

    .line 1017
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->pressedCell:Lcom/gp/netscramblefull/Cell;

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->programmedMoves:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->pressedCell:Lcom/gp/netscramblefull/Cell;

    invoke-direct {p0, v0}, Lcom/gp/netscramblefull/BoardView;->setFocus(Lcom/gp/netscramblefull/Cell;)V

    .line 1020
    :cond_0
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->pressDown()V

    .line 1029
    :cond_1
    :goto_0
    return v2

    .line 1022
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->pressedCell:Lcom/gp/netscramblefull/Cell;

    if-eqz v0, :cond_1

    .line 1024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gp/netscramblefull/BoardView;->pressedCell:Lcom/gp/netscramblefull/Cell;

    .line 1025
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->pressUp()V

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1002
    const/4 v0, 0x0

    return v0
.end method

.method restoreState(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$Skill;)Z
    .locals 4
    .param p1, "map"    # Landroid/os/Bundle;
    .param p2, "skill"    # Lcom/gp/netscramblefull/BoardView$Skill;

    .prologue
    const-string v3, "solvedState"

    .line 1383
    iput-object p2, p0, Lcom/gp/netscramblefull/BoardView;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 1384
    invoke-direct {p0, p2}, Lcom/gp/netscramblefull/BoardView;->resetBoard(Lcom/gp/netscramblefull/BoardView$Skill;)V

    .line 1387
    new-instance v1, Lcom/gp/netscramblefull/BoardView$GameState;

    iget-object v2, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    invoke-direct {v1, p0, v2}, Lcom/gp/netscramblefull/BoardView$GameState;-><init>(Lcom/gp/netscramblefull/BoardView;[[Lcom/gp/netscramblefull/Cell;)V

    .line 1388
    .local v1, "state":Lcom/gp/netscramblefull/BoardView$GameState;
    invoke-direct {p0, p1, v1}, Lcom/gp/netscramblefull/BoardView;->restoreBoard(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$GameState;)Z

    move-result v0

    .line 1389
    .local v0, "ok":Z
    iget-object v2, v1, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    iput-object v2, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    .line 1390
    iget-object v2, v1, Lcom/gp/netscramblefull/BoardView$GameState;->focus:Lcom/gp/netscramblefull/Cell;

    invoke-direct {p0, v2}, Lcom/gp/netscramblefull/BoardView;->setFocus(Lcom/gp/netscramblefull/Cell;)V

    .line 1393
    if-eqz v0, :cond_0

    const-string v2, "solvedState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1394
    const-string v2, "solvedState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/gp/netscramblefull/BoardView;->solvedState:Landroid/os/Bundle;

    .line 1395
    iget-object v2, p0, Lcom/gp/netscramblefull/BoardView;->solvedState:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 1398
    :cond_0
    :goto_0
    return v0

    .line 1395
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method protected saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1338
    invoke-direct {p0, p1}, Lcom/gp/netscramblefull/BoardView;->saveBoard(Landroid/os/Bundle;)V

    .line 1341
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->solvedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1342
    const-string v0, "solvedState"

    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView;->solvedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1343
    :cond_0
    return-void
.end method

.method setAnimEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/gp/netscramblefull/BoardView;->drawBlips:Z

    .line 374
    return-void
.end method

.method setSolved()V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView;->rootCell:Lcom/gp/netscramblefull/Cell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/Cell;->setSolved(Z)V

    .line 1213
    return-void
.end method

.method public setupBoard(Lcom/gp/netscramblefull/BoardView$Skill;)V
    .locals 9
    .param p1, "sk"    # Lcom/gp/netscramblefull/BoardView$Skill;

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/gp/netscramblefull/BoardView;->autosolveStop()V

    .line 385
    iput-object p1, p0, Lcom/gp/netscramblefull/BoardView;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 388
    invoke-direct {p0, p1}, Lcom/gp/netscramblefull/BoardView;->resetBoard(Lcom/gp/netscramblefull/BoardView$Skill;)V

    .line 391
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->boardWidth:I

    iget v6, p0, Lcom/gp/netscramblefull/BoardView;->boardHeight:I

    mul-int/2addr v5, v6

    int-to-double v5, v5

    const-wide v7, 0x3feb333333333333L    # 0.85

    mul-double/2addr v5, v7

    double-to-int v1, v5

    .line 394
    .local v1, "minCells":I
    const/4 v2, 0x0

    .local v2, "tries":I
    const/4 v0, 0x0

    .line 395
    .local v0, "cells":I
    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/16 v5, 0xa

    if-lt v2, v5, :cond_1

    .line 397
    :cond_0
    const-string v5, "netscramble"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Created net in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tries with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 398
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cells (min "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/gp/netscramblefull/BoardView;->solvedState:Landroid/os/Bundle;

    .line 402
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->solvedState:Landroid/os/Bundle;

    invoke-direct {p0, v5}, Lcom/gp/netscramblefull/BoardView;->saveBoard(Landroid/os/Bundle;)V

    .line 406
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    .local v3, "x":I
    :goto_1
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    if-lt v3, v5, :cond_2

    .line 415
    invoke-direct {p0}, Lcom/gp/netscramblefull/BoardView;->updateConnections()Z

    .line 418
    const/4 v3, 0x0

    :goto_2
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->gridWidth:I

    if-lt v3, v5, :cond_5

    .line 421
    return-void

    .line 396
    .end local v3    # "x":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/gp/netscramblefull/BoardView;->createNet(Lcom/gp/netscramblefull/BoardView$Skill;)I

    move-result v0

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .restart local v3    # "x":I
    :cond_2
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    .local v4, "y":I
    :goto_3
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    if-lt v4, v5, :cond_3

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 408
    :cond_3
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    sget-object v6, Lcom/gp/netscramblefull/BoardView;->rng:Ljava/util/Random;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x5a

    invoke-virtual {v5, v6}, Lcom/gp/netscramblefull/Cell;->rotate(I)V

    .line 409
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/gp/netscramblefull/Cell;->numDirs()I

    move-result v5

    iget v6, p1, Lcom/gp/netscramblefull/BoardView$Skill;->blind:I

    if-lt v5, v6, :cond_4

    .line 410
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/gp/netscramblefull/Cell;->setBlind(Z)V

    .line 407
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 419
    .end local v4    # "y":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "y":I
    :goto_4
    iget v5, p0, Lcom/gp/netscramblefull/BoardView;->gridHeight:I

    if-lt v4, v5, :cond_6

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 420
    :cond_6
    iget-object v5, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    .line 419
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method unconnectedCells()I
    .locals 6

    .prologue
    .line 749
    const/4 v1, 0x0

    .line 751
    .local v1, "unused":I
    iget v2, p0, Lcom/gp/netscramblefull/BoardView;->boardStartX:I

    .local v2, "x":I
    :goto_0
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->boardEndX:I

    if-lt v2, v4, :cond_0

    .line 759
    return v1

    .line 752
    :cond_0
    iget v3, p0, Lcom/gp/netscramblefull/BoardView;->boardStartY:I

    .local v3, "y":I
    :goto_1
    iget v4, p0, Lcom/gp/netscramblefull/BoardView;->boardEndY:I

    if-lt v3, v4, :cond_1

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    :cond_1
    iget-object v4, p0, Lcom/gp/netscramblefull/BoardView;->cellMatrix:[[Lcom/gp/netscramblefull/Cell;

    aget-object v4, v4, v2

    aget-object v0, v4, v3

    .line 754
    .local v0, "cell":Lcom/gp/netscramblefull/Cell;
    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->dirs()Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v4

    sget-object v5, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 755
    add-int/lit8 v1, v1, 0x1

    .line 752
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
