.class Lcom/voteforwota/stamper$1;
.super Ljava/util/TimerTask;
.source "stamper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voteforwota/stamper;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voteforwota/stamper;


# direct methods
.method constructor <init>(Lcom/voteforwota/stamper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voteforwota/stamper$1;->this$0:Lcom/voteforwota/stamper;

    .line 44
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 49
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v15, "/sdcard/DCIM/Camera/"

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v6, "f":Ljava/io/File;
    new-instance v8, Lcom/voteforwota/stamper$1$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/voteforwota/stamper$1$1;-><init>(Lcom/voteforwota/stamper$1;)V

    .line 59
    .local v8, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v6, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    .line 64
    .local v12, "prefFiles":[Ljava/io/File;
    array-length v0, v12

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 109
    .end local v6    # "f":Ljava/io/File;
    .end local v8    # "filter":Ljava/io/FilenameFilter;
    .end local v12    # "prefFiles":[Ljava/io/File;
    :goto_1
    return-void

    .line 64
    .restart local v6    # "f":Ljava/io/File;
    .restart local v8    # "filter":Ljava/io/FilenameFilter;
    .restart local v12    # "prefFiles":[Ljava/io/File;
    :cond_0
    aget-object v7, v12, v15

    .line 66
    .local v7, "fg":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voteforwota/stamper$1;->this$0:Lcom/voteforwota/stamper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/voteforwota/stamper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020006

    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 67
    .local v13, "s":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 70
    .local v3, "c":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 71
    .local v5, "cs":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 73
    .local v9, "height":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 74
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 75
    .local v14, "width":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 81
    :goto_2
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v14, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 83
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    .local v4, "comboImage":Landroid/graphics/Canvas;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    const/high16 v17, 0x42c80000    # 100.0f

    const/high16 v18, 0x43960000    # 300.0f

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v10, 0x0

    .line 94
    .local v10, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v10    # "os":Ljava/io/OutputStream;
    .local v11, "os":Ljava/io/OutputStream;
    :try_start_2
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v11

    .line 64
    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v10    # "os":Ljava/io/OutputStream;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "comboImage":Landroid/graphics/Canvas;
    .end local v10    # "os":Ljava/io/OutputStream;
    .end local v14    # "width":I
    :cond_1
    :try_start_3
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    add-int v14, v17, v18

    .line 78
    .restart local v14    # "width":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v9

    goto :goto_2

    .line 102
    .end local v3    # "c":Landroid/graphics/Bitmap;
    .end local v5    # "cs":Landroid/graphics/Bitmap;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "fg":Ljava/io/File;
    .end local v8    # "filter":Ljava/io/FilenameFilter;
    .end local v9    # "height":I
    .end local v12    # "prefFiles":[Ljava/io/File;
    .end local v13    # "s":Landroid/graphics/Bitmap;
    .end local v14    # "width":I
    :catch_0
    move-exception v15

    goto/16 :goto_1

    .line 96
    .restart local v3    # "c":Landroid/graphics/Bitmap;
    .restart local v4    # "comboImage":Landroid/graphics/Canvas;
    .restart local v5    # "cs":Landroid/graphics/Bitmap;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "fg":Ljava/io/File;
    .restart local v8    # "filter":Ljava/io/FilenameFilter;
    .restart local v9    # "height":I
    .restart local v10    # "os":Ljava/io/OutputStream;
    .restart local v12    # "prefFiles":[Ljava/io/File;
    .restart local v13    # "s":Landroid/graphics/Bitmap;
    .restart local v14    # "width":I
    :catch_1
    move-exception v17

    goto :goto_3

    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v17

    move-object v10, v11

    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v10    # "os":Ljava/io/OutputStream;
    goto :goto_3
.end method
