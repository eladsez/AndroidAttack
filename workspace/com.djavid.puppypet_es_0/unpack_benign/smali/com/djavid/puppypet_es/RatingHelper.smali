.class public Lcom/djavid/puppypet_es/RatingHelper;
.super Ljava/lang/Object;
.source "RatingHelper.java"


# static fields
.field private static final COUNT_APPLAUNCH:Ljava/lang/String; = "app_launch_count"

.field private static final COUNT_RATEDLAUNCH:Ljava/lang/String; = "rated_launch_count"

.field private static final COUNT_REMINDLAUNCH:Ljava/lang/String; = "remind_launch_count"

.field private static final DATE_FIRSTLAUNCH:Ljava/lang/String; = "app_first_launch"

.field private static final DATE_RATEDSTART:Ljava/lang/String; = "rated_start_date"

.field private static final DATE_REMINDSTART:Ljava/lang/String; = "remind_start_date"

.field private static final DAYS_FIRSTPROMPT:I = 0x1

.field private static final DAYS_RATEDPROMPT:I = 0x1e

.field private static final DAYS_REMINDPROMPT:I = 0x2

.field private static final LAUNCHES_FIRSTPROMPT:I = 0x3

.field private static final LAUNCHES_RATED:I = 0x19

.field private static final LAUNCHES_REMIND:I = 0xf

.field private static final RATE_CLICKEDRATE:Ljava/lang/String; = "rate_clickedrated"

.field private static final RATE_DONTSHOW:Ljava/lang/String; = "rate_dontshowagain"

.field private static final RATE_REMIND:Ljava/lang/String; = "rate_remindlater"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->clearFirstLaunchPrefs(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->clearRemindPrefs(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->addRatedPrefs(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic access$3(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->clearRatedPrefs(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic access$4(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->addRemindPrefs(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic access$5(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 71
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->addDontShowPref(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static addDontShowPref(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->clearRemindPrefs(Landroid/content/SharedPreferences$Editor;)V

    .line 73
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->clearRatedPrefs(Landroid/content/SharedPreferences$Editor;)V

    .line 74
    const-string v0, "rate_dontshowagain"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method private static addRatedPrefs(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 66
    const-string v0, "rate_clickedrated"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string v0, "rated_start_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method private static addRemindPrefs(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 60
    const-string v0, "rate_remindlater"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v0, "remind_start_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public static app_launched(Landroid/content/Context;)V
    .locals 26
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 81
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v22, "rate_dontshowagain"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 82
    .local v7, "dontShow":Z
    if-eqz v7, :cond_0

    .line 162
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v22, "app_launch_count"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 86
    .local v5, "appLaunchCount":J
    const-string v22, "remind_launch_count"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 87
    .local v18, "remindLaunchCount":J
    const-string v22, "rated_launch_count"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 88
    .local v13, "ratedLaunchCount":J
    const-string v22, "app_first_launch"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 89
    .local v3, "appFirstLaunchDate":J
    const-string v22, "remind_start_date"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 90
    .local v20, "remindStartDate":J
    const-string v22, "rated_start_date"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 92
    .local v15, "ratedStartDate":J
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 94
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v22, "rate_clickedrated"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 95
    .local v12, "ratedClicked":Z
    if-eqz v12, :cond_4

    .line 96
    const-wide/16 v22, 0x1

    add-long v9, v13, v22

    .line 97
    .local v9, "launches":J
    const-string v22, "rated_launch_count"

    move-object/from16 v0, v22

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-wide/16 v22, 0x0

    cmp-long v22, v15, v22

    if-nez v22, :cond_1

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 101
    const-string v22, "rated_start_date"

    move-object/from16 v0, v22

    move-wide v1, v15

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 104
    :cond_1
    const-wide/16 v22, 0x19

    cmp-long v22, v9, v22

    if-ltz v22, :cond_3

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 106
    const-wide/32 v24, -0x65813800

    add-long v24, v24, v15

    cmp-long v22, v22, v24

    if-ltz v22, :cond_2

    .line 107
    invoke-static {v8}, Lcom/djavid/puppypet_es/RatingHelper;->clearRatedPrefs(Landroid/content/SharedPreferences$Editor;)V

    .line 108
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/djavid/puppypet_es/RatingHelper;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 111
    :cond_2
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 114
    :cond_3
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 119
    .end local v9    # "launches":J
    :cond_4
    const-string v22, "rate_remindlater"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 120
    .local v17, "remindLater":Z
    if-eqz v17, :cond_8

    .line 121
    const-wide/16 v22, 0x1

    add-long v9, v18, v22

    .line 122
    .restart local v9    # "launches":J
    const-string v22, "remind_launch_count"

    move-object/from16 v0, v22

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-nez v22, :cond_5

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 126
    const-string v22, "remind_start_date"

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 129
    :cond_5
    const-wide/16 v22, 0xf

    cmp-long v22, v9, v22

    if-ltz v22, :cond_7

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 131
    const-wide/32 v24, 0xa4cb800

    add-long v24, v24, v20

    cmp-long v22, v22, v24

    if-ltz v22, :cond_6

    .line 132
    invoke-static {v8}, Lcom/djavid/puppypet_es/RatingHelper;->clearRemindPrefs(Landroid/content/SharedPreferences$Editor;)V

    .line 133
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/djavid/puppypet_es/RatingHelper;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 136
    :cond_6
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 139
    :cond_7
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 144
    .end local v9    # "launches":J
    :cond_8
    const-wide/16 v22, 0x1

    add-long v9, v5, v22

    .line 145
    .restart local v9    # "launches":J
    const-string v22, "app_launch_count"

    move-object/from16 v0, v22

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    const-wide/16 v22, 0x0

    cmp-long v22, v3, v22

    if-nez v22, :cond_9

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 149
    const-string v22, "app_first_launch"

    move-object/from16 v0, v22

    invoke-interface {v8, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 152
    :cond_9
    const-wide/16 v22, 0x3

    cmp-long v22, v9, v22

    if-ltz v22, :cond_b

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 154
    const-wide/32 v24, 0x5265c00

    add-long v24, v24, v3

    cmp-long v22, v22, v24

    if-ltz v22, :cond_a

    .line 155
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/djavid/puppypet_es/RatingHelper;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 158
    :cond_a
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 161
    :cond_b
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private static clearFirstLaunchPrefs(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 40
    const-string v0, "app_launch_count"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string v0, "app_first_launch"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method private static clearRatedPrefs(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 53
    const-string v0, "rate_clickedrated"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    const-string v0, "rated_launch_count"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v0, "rated_start_date"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method

.method private static clearRemindPrefs(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 46
    const-string v0, "rate_remindlater"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v0, "remind_launch_count"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    const-string v0, "remind_start_date"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public static showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 165
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 167
    .local v4, "dialog":Landroid/app/Dialog;
    const v9, 0x7f060008

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "appTitle":Ljava/lang/String;
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 171
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/high16 v9, 0x7f030000

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 172
    .local v8, "rateView":Landroid/widget/LinearLayout;
    const/high16 v9, 0x7f070000

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 173
    .local v7, "rateTitle":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Rate "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v9, 0x7f070001

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 175
    .local v6, "rateDesc":Landroid/widget/TextView;
    const/high16 v9, 0x7f060000

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 177
    const v9, 0x7f070002

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 178
    .local v1, "b1":Landroid/widget/Button;
    const v9, 0x7f060001

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(I)V

    .line 179
    new-instance v9, Lcom/djavid/puppypet_es/RatingHelper$1;

    invoke-direct {v9, p1, p0, v4}, Lcom/djavid/puppypet_es/RatingHelper$1;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v9, 0x7f070003

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 195
    .local v2, "b2":Landroid/widget/Button;
    const v9, 0x7f060002

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(I)V

    .line 196
    new-instance v9, Lcom/djavid/puppypet_es/RatingHelper$2;

    invoke-direct {v9, p1, v4}, Lcom/djavid/puppypet_es/RatingHelper$2;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v9, 0x7f070004

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 211
    .local v3, "b3":Landroid/widget/Button;
    const v9, 0x7f060003

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(I)V

    .line 212
    new-instance v9, Lcom/djavid/puppypet_es/RatingHelper$3;

    invoke-direct {v9, p1, v4}, Lcom/djavid/puppypet_es/RatingHelper$3;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 228
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 229
    return-void
.end method
