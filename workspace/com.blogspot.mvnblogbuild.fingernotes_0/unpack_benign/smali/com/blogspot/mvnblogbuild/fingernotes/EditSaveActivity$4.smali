.class Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;
.super Ljava/lang/Object;
.source "EditSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

.field private final synthetic val$alarmDate:Landroid/widget/DatePicker;

.field private final synthetic val$alarmSwitch:Landroid/widget/CheckBox;

.field private final synthetic val$alarmTime:Landroid/widget/TimePicker;

.field private final synthetic val$editNoteAlarmModes:Landroid/widget/Spinner;

.field private final synthetic val$noteTitle:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$noteTitle:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmSwitch:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$editNoteAlarmModes:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmDate:Landroid/widget/DatePicker;

    iput-object p6, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmTime:Landroid/widget/TimePicker;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;)Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v18

    .line 166
    .local v18, "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    move-result-object v16

    .line 167
    .local v16, "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    const/4 v4, 0x0

    .line 169
    .local v4, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$noteTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setTitle(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->generateUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setFileName(Ljava/lang/String;)V

    .line 178
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$editNoteAlarmModes:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vibration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->SETT_ALARM_MODE:Ljava/lang/String;

    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBRO:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_1
    new-instance v15, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmDate:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmDate:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmDate:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-direct {v15, v1, v2, v3}, Ljava/util/Date;-><init>(III)V

    .line 188
    .local v15, "alarmDateUP":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmTime:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/util/Date;->setHours(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$alarmTime:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 190
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setAlarmDate(Ljava/util/Date;)V

    .line 197
    .end local v15    # "alarmDateUP":Ljava/util/Date;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v1

    .line 198
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 197
    invoke-static {v1, v4, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->saveBinaryData(Landroid/app/Activity;Ljava/lang/String;[B)Z

    move-result v17

    .line 200
    .local v17, "isFileSaved":Z
    if-eqz v17, :cond_5

    .line 202
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x60

    const/16 v3, 0x60

    .line 201
    invoke-static {v1, v2, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 205
    .local v6, "noteIcon":Landroid/graphics/Bitmap;
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getNoteId()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    .line 206
    invoke-virtual/range {v16 .. v16}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getDBConnector()Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    move-result-object v1

    .line 207
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getAlarmDate()Ljava/util/Date;

    move-result-object v3

    .line 210
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getSettings()Lorg/json/JSONObject;

    move-result-object v5

    .line 206
    invoke-virtual/range {v1 .. v6}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->insert(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONObject;Landroid/graphics/Bitmap;)V

    .line 223
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->clearNoteProfile()V

    .line 225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 226
    .local v14, "ad":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    const-string v1, "OK"

    new-instance v2, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;)V

    invoke-virtual {v14, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 237
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 243
    .end local v6    # "noteIcon":Landroid/graphics/Bitmap;
    .end local v14    # "ad":Landroid/app/AlertDialog;
    :goto_4
    return-void

    .line 175
    .end local v17    # "isFileSaved":Z
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getFileName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 182
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->val$editNoteAlarmModes:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->SETT_ALARM_MODE:Ljava/lang/String;

    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->SOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    :cond_2
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->SETT_ALARM_MODE:Ljava/lang/String;

    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBROANDSOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setAlarmDate(Ljava/util/Date;)V

    .line 193
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->SETT_ALARM_MODE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->removeSettingValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 214
    .restart local v6    # "noteIcon":Landroid/graphics/Bitmap;
    .restart local v17    # "isFileSaved":Z
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getDBConnector()Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    move-result-object v7

    .line 215
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getNoteId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 216
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 217
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getAlarmDate()Ljava/util/Date;

    move-result-object v10

    .line 219
    invoke-virtual/range {v18 .. v18}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getSettings()Lorg/json/JSONObject;

    move-result-object v12

    move-object v11, v4

    move-object v13, v6

    .line 214
    invoke-virtual/range {v7 .. v13}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->update(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONObject;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 240
    .end local v6    # "noteIcon":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v1

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->showMessage(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
