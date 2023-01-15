.class public Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;
.super Landroid/app/Activity;
.source "EditSaveActivity.java"


# instance fields
.field private final me:Landroid/app/Activity;

.field private onDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object p0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->me:Landroid/app/Activity;

    .line 38
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$1;

    invoke-direct {v0, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->onDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->me:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->hideAlarmControls()V

    return-void
.end method

.method static synthetic access$2(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->showAlarmControls()V

    return-void
.end method

.method private hideAlarmControls()V
    .locals 2

    .prologue
    .line 64
    const v1, 0x7f0a0004

    invoke-virtual {p0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    .local v0, "alarmControls":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    return-void
.end method

.method private showAlarmControls()V
    .locals 2

    .prologue
    .line 69
    const v1, 0x7f0a0004

    invoke-virtual {p0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 70
    .local v0, "alarmControls":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/high16 v2, 0x7f030000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->setContentView(I)V

    .line 78
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v17

    .line 79
    .local v17, "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    const/high16 v2, 0x7f0a0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 80
    .local v15, "imageView":Landroid/widget/ImageButton;
    const v2, 0x7f0a0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 82
    .local v4, "noteTitle":Landroid/widget/EditText;
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getOpenNoteMode()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    move-result-object v2

    sget-object v3, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->NEW:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    if-ne v2, v3, :cond_2

    .line 83
    const v2, 0x7f06000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    .local v13, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget v14, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 95
    .local v14, "height":I
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 98
    .local v18, "width":I
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    div-int/lit8 v3, v18, 0x2

    .line 99
    div-int/lit8 v19, v14, 0x2

    const/16 v20, 0x1

    .line 97
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 100
    .local v10, "bmpScaled":Landroid/graphics/Bitmap;
    invoke-virtual {v15, v10}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    new-instance v2, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;Landroid/widget/EditText;)V

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v2, 0x7f0a0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 117
    .local v5, "alarmSwitch":Landroid/widget/CheckBox;
    new-instance v2, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$3;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)V

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    const v2, 0x7f0a0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/DatePicker;

    .line 129
    .local v7, "alarmDate":Landroid/widget/DatePicker;
    const v2, 0x7f0a0006

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TimePicker;

    .line 130
    .local v8, "alarmTime":Landroid/widget/TimePicker;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 131
    const v2, 0x7f0a0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 133
    .local v6, "editNoteAlarmModes":Landroid/widget/Spinner;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 134
    .local v11, "c":Ljava/util/Calendar;
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getAlarmDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 135
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getAlarmDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 137
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->SETT_ALARM_MODE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "alarmMode":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 140
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBRO:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 151
    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->showAlarmControls()V

    .line 157
    .end local v9    # "alarmMode":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->onDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 158
    const/16 v2, 0xb

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 159
    const/16 v2, 0xc

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 161
    const v2, 0x7f0a0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 162
    .local v16, "saveBtn":Landroid/widget/Button;
    new-instance v2, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v2, 0x7f0a0009

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 247
    .local v12, "cancelBtn":Landroid/widget/Button;
    new-instance v2, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$5;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void

    .line 85
    .end local v5    # "alarmSwitch":Landroid/widget/CheckBox;
    .end local v6    # "editNoteAlarmModes":Landroid/widget/Spinner;
    .end local v7    # "alarmDate":Landroid/widget/DatePicker;
    .end local v8    # "alarmTime":Landroid/widget/TimePicker;
    .end local v10    # "bmpScaled":Landroid/graphics/Bitmap;
    .end local v11    # "c":Ljava/util/Calendar;
    .end local v12    # "cancelBtn":Landroid/widget/Button;
    .end local v13    # "dm":Landroid/util/DisplayMetrics;
    .end local v14    # "height":I
    .end local v16    # "saveBtn":Landroid/widget/Button;
    .end local v18    # "width":I
    :cond_2
    const v2, 0x7f06000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 143
    .restart local v5    # "alarmSwitch":Landroid/widget/CheckBox;
    .restart local v6    # "editNoteAlarmModes":Landroid/widget/Spinner;
    .restart local v7    # "alarmDate":Landroid/widget/DatePicker;
    .restart local v8    # "alarmTime":Landroid/widget/TimePicker;
    .restart local v9    # "alarmMode":Ljava/lang/String;
    .restart local v10    # "bmpScaled":Landroid/graphics/Bitmap;
    .restart local v11    # "c":Ljava/util/Calendar;
    .restart local v13    # "dm":Landroid/util/DisplayMetrics;
    .restart local v14    # "height":I
    .restart local v18    # "width":I
    :cond_3
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->SOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_1

    .line 146
    :cond_4
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBROANDSOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_1

    .line 154
    .end local v9    # "alarmMode":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->hideAlarmControls()V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method
