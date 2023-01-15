.class Lcom/picvision/seaweedweather/main$1;
.super Landroid/os/Handler;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    sparse-switch v15, :sswitch_data_0

    .line 475
    .end local p1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    iget-object v15, v15, Lcom/picvision/seaweedweather/main;->img:Lcom/picvision/seaweedweather/views/MyImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/picvision/seaweedweather/main;->weatherId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/picvision/seaweedweather/main;->isHmove:Z

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/picvision/seaweedweather/views/MyImageView;->setImage(IZ)V

    goto :goto_0

    .line 182
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    invoke-static {v15}, Lcom/picvision/seaweedweather/main;->access$0(Lcom/picvision/seaweedweather/main;)Landroid/app/Dialog;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    invoke-static {v15}, Lcom/picvision/seaweedweather/main;->access$0(Lcom/picvision/seaweedweather/main;)Landroid/app/Dialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1    # "msg":Landroid/os/Message;
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v16 .. v17}, Lcom/picvision/seaweedweather/main;->access$1(Lcom/picvision/seaweedweather/main;I)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 201
    .local v12, "updateViews":Landroid/widget/RemoteViews;
    if-eqz v12, :cond_0

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 204
    .local v10, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    const-class v17, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v15}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v15

    invoke-virtual {v10, v15, v12}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 209
    .end local v10    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v12    # "updateViews":Landroid/widget/RemoteViews;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/ProgressDialog;

    .line 210
    .local v6, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 213
    .end local v6    # "dialog":Landroid/app/ProgressDialog;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/ProgressDialog;

    .line 214
    .restart local v6    # "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 217
    .end local v6    # "dialog":Landroid/app/ProgressDialog;
    :sswitch_4
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    const v17, 0x7f060019

    invoke-virtual/range {v16 .. v17}, Lcom/picvision/seaweedweather/main;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    const v17, 0x7f06001b

    invoke-virtual/range {v16 .. v17}, Lcom/picvision/seaweedweather/main;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 220
    const v16, 0x7f06001a

    new-instance v17, Lcom/picvision/seaweedweather/main$1$1;

    invoke-direct/range {v17 .. v18}, Lcom/picvision/seaweedweather/main$1$1;-><init>(Lcom/picvision/seaweedweather/main$1;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 227
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 230
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/picvision/seaweedweather/utils/Util;->createProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/picvision/seaweedweather/main;->access$2(Lcom/picvision/seaweedweather/main;Landroid/app/Dialog;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    invoke-static {v15}, Lcom/picvision/seaweedweather/main;->access$0(Lcom/picvision/seaweedweather/main;)Landroid/app/Dialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 241
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    invoke-static {v15}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 243
    .local v4, "bun":Landroid/os/Bundle;
    const-string v15, "there"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 246
    .local v14, "value":[Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/picvision/seaweedweather/main;->downCountNum:I

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    iget-object v15, v15, Lcom/picvision/seaweedweather/main;->downCount:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 250
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v15, 0x3

    if-ge v8, v15, :cond_0

    .line 251
    new-instance v7, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-direct {v7}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;-><init>()V

    .line 252
    .local v7, "download":Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
    aget-object v15, v14, v8

    if-eqz v15, :cond_2

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    move-object v0, v15

    iget v0, v0, Lcom/picvision/seaweedweather/main;->downCountNum:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/picvision/seaweedweather/main;->downCountNum:I

    .line 254
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "http://211.95.79.112/weatherServer/GetWeather.jsp?cityid="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v16, v14, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&version=1.0.0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "/data/data/com.picvision.seaweedweather/weather"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".xml"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v15, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;-><init>(Lcom/picvision/seaweedweather/main;I)V

    invoke-virtual {v7, v15}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->setOnDownloadCompleteListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;)V

    .line 250
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 289
    .end local v4    # "bun":Landroid/os/Bundle;
    .end local v7    # "download":Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
    .end local v8    # "i":I
    .end local v14    # "value":[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    invoke-static {v15}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 291
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v15, "AgeId"

    const/16 v16, 0x0

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, "age_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    iget-object v15, v15, Lcom/picvision/seaweedweather/main;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "http://211.95.79.112/weatherServer/GetProducts.jsp?version=2.0.0&gender="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "/data/data/com.picvision.seaweedweather/test.xml"

    invoke-virtual/range {v15 .. v17}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    iget-object v15, v15, Lcom/picvision/seaweedweather/main;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v16, Lcom/picvision/seaweedweather/main$1$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/main$1$2;-><init>(Lcom/picvision/seaweedweather/main$1;)V

    invoke-virtual/range {v15 .. v16}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->setOnDownloadCompleteListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;)V

    goto/16 :goto_0

    .line 395
    .end local v3    # "age_id":I
    .end local v5    # "bundle":Landroid/os/Bundle;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    invoke-static {v15}, Lcom/picvision/seaweedweather/main;->access$0(Lcom/picvision/seaweedweather/main;)Landroid/app/Dialog;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    invoke-static {v15}, Lcom/picvision/seaweedweather/main;->access$0(Lcom/picvision/seaweedweather/main;)Landroid/app/Dialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 400
    :sswitch_9
    new-instance v15, Lcom/picvision/seaweedweather/main$1$3;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/main$1$3;-><init>(Lcom/picvision/seaweedweather/main$1;)V

    .line 414
    invoke-virtual {v15}, Lcom/picvision/seaweedweather/main$1$3;->start()V

    goto/16 :goto_0

    .line 417
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 418
    .local v13, "updateinfor":Ljava/lang/String;
    const-string v15, "\\|"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, "information":[Ljava/lang/String;
    const-string v15, "10"

    const/16 v16, 0x0

    aget-object v16, v9, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "11"

    const/16 v16, 0x0

    aget-object v16, v9, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 420
    :cond_3
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v16, "\u66f4\u65b0\u63d0\u793a"

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const-string v16, "\u6709\u66f4\u65b0,\u786e\u5b9a\u662f\u5426\u66f4\u65b0\uff1f"

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 421
    const-string v16, "\u786e\u5b9a"

    new-instance v17, Lcom/picvision/seaweedweather/main$1$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/picvision/seaweedweather/main$1$4;-><init>(Lcom/picvision/seaweedweather/main$1;[Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 434
    const-string v16, "\u5426"

    new-instance v17, Lcom/picvision/seaweedweather/main$1$5;

    invoke-direct/range {v17 .. v18}, Lcom/picvision/seaweedweather/main$1$5;-><init>(Lcom/picvision/seaweedweather/main$1;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 439
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 442
    :cond_4
    const-string v15, "01"

    const/16 v16, 0x0

    aget-object v16, v9, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "11"

    const/16 v16, 0x0

    aget-object v16, v9, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 443
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/picvision/seaweedweather/main;->access$4(Lcom/picvision/seaweedweather/main;Z)V

    goto/16 :goto_0

    .line 445
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/picvision/seaweedweather/main;->access$4(Lcom/picvision/seaweedweather/main;Z)V

    goto/16 :goto_0

    .line 450
    .end local v9    # "information":[Ljava/lang/String;
    .end local v13    # "updateinfor":Ljava/lang/String;
    :sswitch_b
    new-instance v15, Lcom/picvision/seaweedweather/main$1$6;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/main$1$6;-><init>(Lcom/picvision/seaweedweather/main$1;)V

    .line 468
    invoke-virtual {v15}, Lcom/picvision/seaweedweather/main$1$6;->start()V

    goto/16 :goto_0

    .line 471
    :sswitch_c
    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object v0, v11

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 472
    .local v11, "nowtime":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main$1;->this$0:Lcom/picvision/seaweedweather/main;

    move-object v15, v0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x64

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0x64 -> :sswitch_4
    .end sparse-switch
.end method
