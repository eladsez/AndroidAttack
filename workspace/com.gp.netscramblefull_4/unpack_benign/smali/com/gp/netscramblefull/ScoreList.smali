.class public Lcom/gp/netscramblefull/ScoreList;
.super Landroid/app/Activity;
.source "ScoreList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private dateString(J)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 247
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 248
    const-string v1, "--"

    .line 252
    :goto_0
    return-object v1

    .line 249
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const/4 v1, 0x1

    move v0, v1

    .line 251
    .local v0, "flags":I
    :goto_1
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 252
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 250
    .end local v0    # "flags":I
    :cond_1
    const/16 v1, 0x10

    move v0, v1

    goto :goto_1
.end method

.method private resetScores()V
    .locals 4

    .prologue
    .line 261
    const-string v2, "scores"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/gp/netscramblefull/ScoreList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    .local v1, "scorePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    invoke-direct {p0}, Lcom/gp/netscramblefull/ScoreList;->showScores()V

    .line 267
    return-void
.end method

.method private showScores()V
    .locals 32

    .prologue
    .line 146
    const-string v26, "scores"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/gp/netscramblefull/ScoreList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 147
    .local v14, "scorePrefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/gp/netscramblefull/BoardView$Skill;->values()[Lcom/gp/netscramblefull/BoardView$Skill;

    move-result-object v19

    .line 150
    .local v19, "skillVals":[Lcom/gp/netscramblefull/BoardView$Skill;
    const v26, 0x7f050013

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/ScoreList;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableLayout;

    .line 153
    .local v8, "clicksTable":Landroid/widget/TableLayout;
    invoke-virtual {v8}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    .line 154
    .local v4, "cc":I
    const/16 v26, 0x2

    move v0, v4

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 155
    const/16 v26, 0x1

    sub-int v12, v4, v26

    .local v12, "i":I
    :goto_0
    const/16 v26, 0x2

    move v0, v12

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    .line 158
    .end local v12    # "i":I
    :cond_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x0

    :goto_1
    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    .line 197
    const v26, 0x7f05001a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/ScoreList;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TableLayout;

    .line 200
    .local v25, "timeTable":Landroid/widget/TableLayout;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v21

    .line 201
    .local v21, "tc":I
    const/16 v26, 0x2

    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    .line 202
    const/16 v26, 0x1

    sub-int v12, v21, v26

    .restart local v12    # "i":I
    :goto_2
    const/16 v26, 0x2

    move v0, v12

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 205
    .end local v12    # "i":I
    :cond_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 243
    return-void

    .line 156
    .end local v21    # "tc":I
    .end local v25    # "timeTable":Landroid/widget/TableLayout;
    .restart local v12    # "i":I
    :cond_2
    invoke-virtual {v8, v12}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 155
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 158
    .end local v12    # "i":I
    :cond_3
    aget-object v17, v19, v27

    .line 159
    .local v17, "skill":Lcom/gp/netscramblefull/BoardView$Skill;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "size"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 160
    .local v16, "sizeName":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "clicks"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "clickName":Ljava/lang/String;
    const/16 v28, -0x1

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 164
    .local v15, "size":I
    const/16 v28, -0x1

    move-object v0, v14

    move-object v1, v6

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 165
    .local v7, "clicks":I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "Date"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-wide/16 v29, 0x0

    move-object v0, v14

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 168
    .local v9, "date":J
    new-instance v13, Landroid/widget/TableRow;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 169
    .local v13, "row":Landroid/widget/TableRow;
    invoke-virtual {v8, v13}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 172
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    .local v18, "skillLab":Landroid/widget/TextView;
    const/high16 v28, 0x41800000    # 16.0f

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    const/high16 v28, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    move-object/from16 v0, v17

    iget v0, v0, Lcom/gp/netscramblefull/BoardView$Skill;->label:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/ScoreList;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 176
    .local v20, "stext":Ljava/lang/String;
    if-lez v15, :cond_4

    .line 177
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 178
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 182
    new-instance v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v5, "clickLab":Landroid/widget/TextView;
    const/high16 v28, 0x41800000    # 16.0f

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    const/high16 v28, -0x1000000

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    if-gez v7, :cond_5

    const-string v28, "--"

    :goto_4
    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v13, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 189
    new-instance v11, Landroid/widget/TextView;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v11, "dateLab":Landroid/widget/TextView;
    const/high16 v28, 0x41800000    # 16.0f

    move-object v0, v11

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    const/high16 v28, -0x1000000

    move-object v0, v11

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/gp/netscramblefull/ScoreList;->dateString(J)Ljava/lang/String;

    move-result-object v28

    move-object v0, v11

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v13, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 158
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 185
    .end local v11    # "dateLab":Landroid/widget/TextView;
    :cond_5
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_4

    .line 203
    .end local v5    # "clickLab":Landroid/widget/TextView;
    .end local v6    # "clickName":Ljava/lang/String;
    .end local v7    # "clicks":I
    .end local v9    # "date":J
    .end local v13    # "row":Landroid/widget/TableRow;
    .end local v15    # "size":I
    .end local v16    # "sizeName":Ljava/lang/String;
    .end local v17    # "skill":Lcom/gp/netscramblefull/BoardView$Skill;
    .end local v18    # "skillLab":Landroid/widget/TextView;
    .end local v20    # "stext":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v21    # "tc":I
    .restart local v25    # "timeTable":Landroid/widget/TableLayout;
    :cond_6
    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 202
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_2

    .line 205
    .end local v12    # "i":I
    :cond_7
    aget-object v17, v19, v27

    .line 206
    .restart local v17    # "skill":Lcom/gp/netscramblefull/BoardView$Skill;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "size"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 207
    .restart local v16    # "sizeName":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "time"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 210
    .local v24, "timeName":Ljava/lang/String;
    const/16 v28, -0x1

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 211
    .restart local v15    # "size":I
    const/16 v28, -0x1

    move-object v0, v14

    move-object/from16 v1, v24

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 212
    .local v22, "time":I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "Date"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-wide/16 v29, 0x0

    move-object v0, v14

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 215
    .restart local v9    # "date":J
    new-instance v13, Landroid/widget/TableRow;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 216
    .restart local v13    # "row":Landroid/widget/TableRow;
    move-object/from16 v0, v25

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 219
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 220
    .restart local v18    # "skillLab":Landroid/widget/TextView;
    const/high16 v28, 0x41800000    # 16.0f

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    const/high16 v28, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    move-object/from16 v0, v17

    iget v0, v0, Lcom/gp/netscramblefull/BoardView$Skill;->label:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/ScoreList;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 223
    .restart local v20    # "stext":Ljava/lang/String;
    if-lez v15, :cond_8

    .line 224
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 225
    :cond_8
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 229
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v23, "timeLab":Landroid/widget/TextView;
    const/high16 v28, 0x41800000    # 16.0f

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    const/high16 v28, -0x1000000

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    if-gez v22, :cond_9

    const-string v28, "--"

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 237
    new-instance v11, Landroid/widget/TextView;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 238
    .restart local v11    # "dateLab":Landroid/widget/TextView;
    const/high16 v28, 0x41800000    # 16.0f

    move-object v0, v11

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 239
    const/high16 v28, -0x1000000

    move-object v0, v11

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/gp/netscramblefull/ScoreList;->dateString(J)Ljava/lang/String;

    move-result-object v28

    move-object v0, v11

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v13, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 205
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 233
    .end local v11    # "dateLab":Landroid/widget/TextView;
    :cond_9
    const-string v28, "%2d:%02d"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    div-int/lit8 v31, v22, 0x3c

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    rem-int/lit8 v31, v22, 0x3c

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    goto :goto_5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/gp/netscramblefull/ScoreList;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/ScoreList;->requestWindowFeature(I)Z

    .line 76
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/ScoreList;->setContentView(I)V

    .line 79
    invoke-direct {p0}, Lcom/gp/netscramblefull/ScoreList;->showScores()V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 112
    invoke-virtual {p0}, Lcom/gp/netscramblefull/ScoreList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 113
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 131
    :pswitch_0
    invoke-direct {p0}, Lcom/gp/netscramblefull/ScoreList;->resetScores()V

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x7f050036
        :pswitch_0
    .end packed-switch
.end method
