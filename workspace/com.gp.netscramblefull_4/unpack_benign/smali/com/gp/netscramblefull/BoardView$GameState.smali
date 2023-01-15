.class Lcom/gp/netscramblefull/BoardView$GameState;
.super Ljava/lang/Object;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/BoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameState"
.end annotation


# instance fields
.field focus:Lcom/gp/netscramblefull/Cell;

.field matrix:[[Lcom/gp/netscramblefull/Cell;

.field root:Lcom/gp/netscramblefull/Cell;

.field final synthetic this$0:Lcom/gp/netscramblefull/BoardView;


# direct methods
.method constructor <init>(Lcom/gp/netscramblefull/BoardView;IILcom/gp/netscramblefull/BoardView$Skill;)V
    .locals 21
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "skill"    # Lcom/gp/netscramblefull/BoardView$Skill;

    .prologue
    .line 1617
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gp/netscramblefull/BoardView$GameState;->this$0:Lcom/gp/netscramblefull/BoardView;

    .line 1580
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1619
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    .line 1620
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gp/netscramblefull/BoardView$GameState;->focus:Lcom/gp/netscramblefull/Cell;

    .line 1621
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    .line 1581
    filled-new-array/range {p2 .. p3}, [I

    move-result-object v19

    const-class v20, Lcom/gp/netscramblefull/Cell;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/gp/netscramblefull/Cell;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    .line 1582
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 1591
    invoke-static/range {p1 .. p1}, Lcom/gp/netscramblefull/BoardView;->access$4(Lcom/gp/netscramblefull/BoardView;)Lcom/gp/netscramblefull/BoardView$Screen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/netscramblefull/BoardView$Screen;->getBoardWidth(Lcom/gp/netscramblefull/BoardView$Skill;II)I

    move-result v10

    .line 1592
    .local v10, "bw":I
    invoke-static/range {p1 .. p1}, Lcom/gp/netscramblefull/BoardView;->access$4(Lcom/gp/netscramblefull/BoardView;)Lcom/gp/netscramblefull/BoardView$Screen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/netscramblefull/BoardView$Screen;->getBoardHeight(Lcom/gp/netscramblefull/BoardView$Skill;II)I

    move-result v7

    .line 1593
    .local v7, "bh":I
    sub-int v19, p2, v10

    div-int/lit8 v8, v19, 0x2

    .line 1594
    .local v8, "bsx":I
    add-int v5, v8, v10

    .line 1595
    .local v5, "bex":I
    sub-int v19, p3, v7

    div-int/lit8 v9, v19, 0x2

    .line 1596
    .local v9, "bsy":I
    add-int v6, v9, v7

    .line 1598
    .local v6, "bey":I
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/gp/netscramblefull/BoardView$Skill;->wrapped:Z

    move/from16 v16, v0

    .line 1600
    .local v16, "wrap":Z
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    return-void

    .line 1583
    .end local v5    # "bex":I
    .end local v6    # "bey":I
    .end local v7    # "bh":I
    .end local v8    # "bsx":I
    .end local v9    # "bsy":I
    .end local v10    # "bw":I
    .end local v16    # "wrap":Z
    .end local v17    # "x":I
    :cond_0
    const/16 v17, 0x0

    .restart local v17    # "x":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 1582
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1584
    :cond_1
    new-instance v11, Lcom/gp/netscramblefull/Cell;

    invoke-static/range {p1 .. p1}, Lcom/gp/netscramblefull/BoardView;->access$3(Lcom/gp/netscramblefull/BoardView;)Lcom/gp/netscramblefull/NetScramble;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gp/netscramblefull/Cell;-><init>(Lcom/gp/netscramblefull/NetScramble;Lcom/gp/netscramblefull/BoardView;II)V

    .line 1585
    .local v11, "cell":Lcom/gp/netscramblefull/Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    aput-object v11, v19, v18

    .line 1583
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1601
    .end local v11    # "cell":Lcom/gp/netscramblefull/Cell;
    .restart local v5    # "bex":I
    .restart local v6    # "bey":I
    .restart local v7    # "bh":I
    .restart local v8    # "bsx":I
    .restart local v9    # "bsy":I
    .restart local v10    # "bw":I
    .restart local v16    # "wrap":Z
    :cond_2
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_3

    .line 1600
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1602
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    aget-object v19, v19, v18

    if-eqz v16, :cond_c

    sget-object v20, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    :goto_4
    invoke-virtual/range {v19 .. v20}, Lcom/gp/netscramblefull/Cell;->reset(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 1605
    const/4 v14, 0x0

    .local v14, "r":Lcom/gp/netscramblefull/Cell;
    move-object v13, v14

    .local v13, "l":Lcom/gp/netscramblefull/Cell;
    move-object v12, v14

    .local v12, "d":Lcom/gp/netscramblefull/Cell;
    move-object v15, v14

    .line 1606
    .local v15, "u":Lcom/gp/netscramblefull/Cell;
    if-nez v16, :cond_4

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_5

    .line 1607
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    move/from16 v0, v18

    move v1, v9

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/gp/netscramblefull/BoardView;->access$5(III)I

    move-result v20

    aget-object v15, v19, v20

    .line 1608
    :cond_5
    if-nez v16, :cond_6

    const/16 v19, 0x1

    sub-int v19, v6, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 1609
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    move/from16 v0, v18

    move v1, v9

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/gp/netscramblefull/BoardView;->access$6(III)I

    move-result v20

    aget-object v12, v19, v20

    .line 1610
    :cond_7
    if-nez v16, :cond_8

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_9

    .line 1611
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/gp/netscramblefull/BoardView;->access$5(III)I

    move-result v20

    aget-object v19, v19, v20

    aget-object v13, v19, v18

    .line 1612
    :cond_9
    if-nez v16, :cond_a

    const/16 v19, 0x1

    sub-int v19, v5, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 1613
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/gp/netscramblefull/BoardView;->access$6(III)I

    move-result v20

    aget-object v19, v19, v20

    aget-object v14, v19, v18

    .line 1614
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    aget-object v19, v19, v18

    move-object/from16 v0, v19

    move-object v1, v15

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gp/netscramblefull/Cell;->setNeighbours(Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;)V

    .line 1601
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 1602
    .end local v12    # "d":Lcom/gp/netscramblefull/Cell;
    .end local v13    # "l":Lcom/gp/netscramblefull/Cell;
    .end local v14    # "r":Lcom/gp/netscramblefull/Cell;
    .end local v15    # "u":Lcom/gp/netscramblefull/Cell;
    :cond_c
    sget-object v20, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    goto/16 :goto_4
.end method

.method constructor <init>(Lcom/gp/netscramblefull/BoardView;[[Lcom/gp/netscramblefull/Cell;)V
    .locals 1
    .param p2, "m"    # [[Lcom/gp/netscramblefull/Cell;

    .prologue
    const/4 v0, 0x0

    .line 1577
    iput-object p1, p0, Lcom/gp/netscramblefull/BoardView$GameState;->this$0:Lcom/gp/netscramblefull/BoardView;

    .line 1575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1619
    iput-object v0, p0, Lcom/gp/netscramblefull/BoardView$GameState;->root:Lcom/gp/netscramblefull/Cell;

    .line 1620
    iput-object v0, p0, Lcom/gp/netscramblefull/BoardView$GameState;->focus:Lcom/gp/netscramblefull/Cell;

    .line 1621
    iput-object v0, p0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    .line 1576
    iput-object p2, p0, Lcom/gp/netscramblefull/BoardView$GameState;->matrix:[[Lcom/gp/netscramblefull/Cell;

    return-void
.end method
