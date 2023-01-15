.class Lcn/com/picvision/view/AdvertView$3;
.super Landroid/os/Handler;
.source "AdvertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/picvision/view/AdvertView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/picvision/view/AdvertView;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    .line 285
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 45
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 289
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v21

    .line 292
    .local v21, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "handler"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v10, v0

    packed-switch v10, :pswitch_data_0

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 295
    :pswitch_0
    const-string v10, "complete"

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 296
    .local v27, "isComplete1":Z
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v27, :cond_0

    .line 300
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v10, "/sdcard/app/pvmobad"

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .local v20, "builder":Ljava/lang/StringBuilder;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v10, "validate.pdt"

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :try_start_0
    new-instance v25, Ljava/io/FileInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 306
    .local v25, "in":Ljava/io/InputStream;
    const/16 v10, 0x10

    move v0, v10

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 307
    .local v22, "bytes":[B
    const/16 v30, 0x0

    .line 308
    .local v30, "len":B
    new-instance v16, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v10, 0x10

    move-object/from16 v0, v16

    move v1, v10

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 309
    .local v16, "abBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    :goto_1
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v0, v10

    int-to-byte v0, v0

    move/from16 v30, v0

    const/4 v10, -0x1

    move/from16 v0, v30

    move v1, v10

    if-ne v0, v1, :cond_3

    .line 312
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v22

    .line 313
    new-instance v44, Ljava/lang/String;

    const-string v10, "utf-8"

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 314
    .local v44, "validateStr":Ljava/lang/String;
    const/16 v43, 0x0

    .line 315
    .local v43, "validateCode":I
    if-eqz v44, :cond_1

    const-string v10, ""

    move-object/from16 v0, v44

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_1

    .line 317
    :try_start_1
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v43

    .line 322
    :cond_1
    :goto_2
    const/4 v10, 0x1

    move/from16 v0, v43

    move v1, v10

    if-ne v0, v1, :cond_2

    .line 323
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$3(Lcn/com/picvision/view/AdvertView;)Ljava/util/HashMap;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$4(Lcn/com/picvision/view/AdvertView;Ljava/util/HashMap;)V

    .line 325
    :cond_2
    const-string v10, "ValidateSTr"

    move-object v0, v10

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    .line 327
    const/16 v25, 0x0

    .line 328
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    .line 329
    const/16 v16, 0x0

    .line 330
    const/16 v44, 0x0

    .line 331
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 332
    .end local v16    # "abBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v22    # "bytes":[B
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v30    # "len":B
    .end local v43    # "validateCode":I
    .end local v44    # "validateStr":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object/from16 v23, v10

    .line 334
    .local v23, "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 310
    .end local v23    # "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "abBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v22    # "bytes":[B
    .restart local v25    # "in":Ljava/io/InputStream;
    .restart local v30    # "len":B
    :cond_3
    const/4 v10, 0x0

    :try_start_3
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move v2, v10

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 335
    .end local v16    # "abBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v22    # "bytes":[B
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v30    # "len":B
    :catch_1
    move-exception v10

    move-object/from16 v23, v10

    .line 337
    .local v23, "e":Ljava/io/IOException;
    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 318
    .end local v23    # "e":Ljava/io/IOException;
    .restart local v16    # "abBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v22    # "bytes":[B
    .restart local v25    # "in":Ljava/io/InputStream;
    .restart local v30    # "len":B
    .restart local v43    # "validateCode":I
    .restart local v44    # "validateStr":Ljava/lang/String;
    :catch_2
    move-exception v23

    .line 319
    .local v23, "e":Ljava/lang/NumberFormatException;
    const/16 v43, 0x0

    goto :goto_2

    .line 343
    .end local v16    # "abBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v20    # "builder":Ljava/lang/StringBuilder;
    .end local v22    # "bytes":[B
    .end local v23    # "e":Ljava/lang/NumberFormatException;
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v27    # "isComplete1":Z
    .end local v30    # "len":B
    .end local v43    # "validateCode":I
    .end local v44    # "validateStr":Ljava/lang/String;
    :pswitch_1
    const-string v10, "complete"

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    .line 344
    .local v26, "isComplete":Z
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eqz v26, :cond_0

    .line 348
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v10, "/sdcard/app/pvmobad"

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v20    # "builder":Ljava/lang/StringBuilder;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v10, "ad.pex"

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Ljava/io/BufferedInputStream;

    .line 354
    new-instance v12, Ljava/io/FileInputStream;

    .line 355
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 355
    const/16 v13, 0x400

    invoke-direct {v11, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 356
    new-instance v12, Lcn/com/picvision/util/AdHandler;

    invoke-direct {v12}, Lcn/com/picvision/util/AdHandler;-><init>()V

    invoke-static {v11, v12}, Lcn/com/picvision/util/XmlSaxParser;->parser(Ljava/io/BufferedInputStream;Lcn/com/picvision/util/AdHandler;)Lcn/com/picvision/model/Config;

    move-result-object v11

    .line 353
    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$5(Lcn/com/picvision/view/AdvertView;Lcn/com/picvision/model/Config;)V

    .line 357
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 361
    :goto_3
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ad.pex"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$7(Lcn/com/picvision/view/AdvertView;Lcn/com/picvision/model/Config;)V

    goto/16 :goto_0

    .line 358
    :catch_3
    move-exception v10

    move-object/from16 v23, v10

    .line 359
    .local v23, "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 370
    .end local v20    # "builder":Ljava/lang/StringBuilder;
    .end local v23    # "e":Ljava/io/FileNotFoundException;
    .end local v26    # "isComplete":Z
    :pswitch_2
    const-string v10, "complete"

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    .line 371
    .local v28, "iscomplete":Z
    if-eqz v28, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Config;->getType()I

    move-result v17

    .line 375
    .local v17, "adType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v12, v0

    invoke-static {v12}, Lcn/com/picvision/view/AdvertView;->access$8(Lcn/com/picvision/view/AdvertView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$9(Lcn/com/picvision/view/AdvertView;Landroid/widget/RelativeLayout;)V

    .line 376
    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v11

    const v12, 0x3dd55555

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 376
    move-object/from16 v0, v29

    move v1, v10

    move v2, v11

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v29, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x11

    move v0, v10

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$12(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Params;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Params;->getBackground()I

    move-result v19

    .line 390
    .local v19, "background":I
    if-eqz v19, :cond_4

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$12(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Params;

    move-result-object v11

    invoke-virtual {v11}, Lcn/com/picvision/model/Params;->getBackground()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 392
    invoke-static {}, Lcn/com/picvision/view/AdvertView;->access$2()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "background:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .restart local v20    # "builder":Ljava/lang/StringBuilder;
    packed-switch v17, :pswitch_data_1

    .line 763
    :goto_5
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    .line 765
    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$27(Lcn/com/picvision/view/AdvertView;I)V

    .line 766
    const-string v10, "BootView"

    const-string v11, "Advert start"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    .end local v20    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v10

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$12(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Params;

    move-result-object v11

    invoke-virtual {v11}, Lcn/com/picvision/model/Params;->getBackgroundColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_4

    .line 407
    .restart local v20    # "builder":Ljava/lang/StringBuilder;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v10

    const v11, 0x3df77777

    mul-float/2addr v10, v11

    move v0, v10

    float-to-int v0, v0

    move/from16 v33, v0

    .line 408
    .local v33, "lgWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v10

    const v11, 0x3db33333    # 0.0875f

    mul-float/2addr v10, v11

    move v0, v10

    float-to-int v0, v0

    move/from16 v31, v0

    .line 409
    .local v31, "lgHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v10

    const v11, 0x3c4ccccd    # 0.0125f

    mul-float/2addr v10, v11

    move v0, v10

    float-to-int v0, v0

    move/from16 v34, v0

    .line 410
    .local v34, "lgX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v10

    const v11, 0x3c088889

    mul-float/2addr v10, v11

    move v0, v10

    float-to-int v0, v0

    move/from16 v35, v0

    .line 413
    .local v35, "lgY":I
    new-instance v32, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 415
    .local v32, "lgParams":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v35

    move-object/from16 v1, v32

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v35

    move-object/from16 v1, v32

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 416
    move/from16 v0, v34

    move-object/from16 v1, v32

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v34

    move-object/from16 v1, v32

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 417
    const/16 v10, 0x9

    .line 418
    const/4 v11, -0x1

    .line 417
    move-object/from16 v0, v32

    move v1, v10

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v10

    const v11, 0x3f544444

    mul-float/2addr v10, v11

    move v0, v10

    float-to-int v0, v0

    move/from16 v42, v0

    .line 423
    .local v42, "txtWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v10

    const v11, 0x3db33333    # 0.0875f

    mul-float/2addr v10, v11

    move v0, v10

    float-to-int v0, v0

    move/from16 v40, v0

    .line 424
    .local v40, "txtHeight":I
    new-instance v36, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v36

    move/from16 v1, v42

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v36, "linearParams":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v35

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v35

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 427
    move/from16 v0, v34

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v34

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 428
    const/16 v10, 0xb

    .line 429
    const/4 v11, -0x1

    .line 428
    move-object/from16 v0, v36

    move v1, v10

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v12, v0

    invoke-static {v12}, Lcn/com/picvision/view/AdvertView;->access$8(Lcn/com/picvision/view/AdvertView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$13(Lcn/com/picvision/view/AdvertView;Landroid/widget/LinearLayout;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$14(Lcn/com/picvision/view/AdvertView;)Landroid/widget/LinearLayout;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 440
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 442
    .local v41, "txtParams":Landroid/widget/LinearLayout$LayoutParams;
    const v10, 0x3d2aaaab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$10(Lcn/com/picvision/view/AdvertView;)F

    move-result v11

    mul-float/2addr v10, v11

    move v0, v10

    float-to-int v0, v0

    move/from16 v38, v0

    .line 443
    .local v38, "textSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v12, v0

    invoke-static {v12}, Lcn/com/picvision/view/AdvertView;->access$8(Lcn/com/picvision/view/AdvertView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$15(Lcn/com/picvision/view/AdvertView;Landroid/widget/TextView;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v10

    move/from16 v0, v38

    int-to-float v0, v0

    move v11, v0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$12(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Params;

    move-result-object v11

    invoke-virtual {v11}, Lcn/com/picvision/model/Params;->getTextColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v12, v0

    invoke-static {v12}, Lcn/com/picvision/view/AdvertView;->access$8(Lcn/com/picvision/view/AdvertView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$16(Lcn/com/picvision/view/AdvertView;Landroid/widget/TextView;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v10

    move/from16 v0, v38

    int-to-float v0, v0

    move v11, v0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$12(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Params;

    move-result-object v11

    invoke-virtual {v11}, Lcn/com/picvision/model/Params;->getTextColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$14(Lcn/com/picvision/view/AdvertView;)Landroid/widget/LinearLayout;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v11

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$14(Lcn/com/picvision/view/AdvertView;)Landroid/widget/LinearLayout;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v11

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$14(Lcn/com/picvision/view/AdvertView;)Landroid/widget/LinearLayout;

    move-result-object v11

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v12, v0

    invoke-static {v12}, Lcn/com/picvision/view/AdvertView;->access$8(Lcn/com/picvision/view/AdvertView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$17(Lcn/com/picvision/view/AdvertView;Landroid/widget/ImageView;)V

    .line 459
    const/4 v10, 0x2

    move/from16 v0, v17

    move v1, v10

    if-ne v0, v1, :cond_5

    .line 460
    const/4 v10, 0x0

    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 461
    const-string v10, "/sdcard/app/pvmobad"

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Config;->getLogo()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/com/picvision/util/Help;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$18(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v10

    .line 469
    new-instance v11, Ljava/io/BufferedInputStream;

    .line 470
    new-instance v12, Ljava/io/FileInputStream;

    .line 471
    new-instance v13, Ljava/io/File;

    .line 473
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 471
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 469
    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 474
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 468
    invoke-static {v11, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 467
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 478
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$18(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$18(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 481
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/com/picvision/view/AdvertView;->addView(Landroid/view/View;)V

    .line 484
    const/4 v10, 0x2

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$18(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Config;->getBgMusic()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Config;->getBgMusic()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$19(Lcn/com/picvision/view/AdvertView;)I

    move-result v10

    if-nez v10, :cond_7

    .line 490
    new-instance v39, Ljava/util/Timer;

    invoke-direct/range {v39 .. v39}, Ljava/util/Timer;-><init>()V

    .line 491
    .local v39, "timer":Ljava/util/Timer;
    new-instance v37, Lcn/com/picvision/view/AdvertView$3$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/com/picvision/view/AdvertView$3$1;-><init>(Lcn/com/picvision/view/AdvertView$3;)V

    .line 535
    .local v37, "task":Ljava/util/TimerTask;
    const-wide/16 v10, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 537
    .end local v37    # "task":Ljava/util/TimerTask;
    .end local v39    # "timer":Ljava/util/Timer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcn/com/picvision/view/AdvertView;->setVisibility(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$14(Lcn/com/picvision/view/AdvertView;)Landroid/widget/LinearLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Config;->getMessage()Ljava/util/ArrayList;

    move-result-object v18

    .line 545
    .local v18, "adwords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$23(Lcn/com/picvision/view/AdvertView;Z)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Lcn/com/picvision/util/TextThread;

    new-instance v12, Lcn/com/picvision/view/AdvertView$3$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcn/com/picvision/view/AdvertView$3$2;-><init>(Lcn/com/picvision/view/AdvertView$3;Ljava/util/ArrayList;)V

    invoke-direct {v11, v12}, Lcn/com/picvision/util/TextThread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$26(Lcn/com/picvision/view/AdvertView;Lcn/com/picvision/util/TextThread;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v10

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/util/TextThread;->start()V

    .line 596
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .line 597
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3fc00000    # 1.5f

    const/high16 v9, 0x41b00000    # 22.0f

    const/high16 v10, 0x41b00000    # 22.0f

    .line 596
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 598
    .local v4, "bigScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v10, 0x3e8

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 599
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    .line 600
    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v7, 0x0

    const/high16 v8, 0x3fc00000    # 1.5f

    const/4 v9, 0x0

    const/high16 v10, 0x41b00000    # 22.0f

    const/high16 v11, 0x41b00000    # 22.0f

    .line 599
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 601
    .local v5, "smallScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v10, 0x3e8

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 602
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    .line 603
    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x43700000    # 240.0f

    const/high16 v12, 0x41c80000    # 25.0f

    .line 602
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 605
    .local v6, "imgSmallScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v10, 0x3e8

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 606
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    .line 607
    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x43700000    # 240.0f

    const/high16 v13, 0x41c80000    # 25.0f

    .line 606
    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 608
    .local v7, "imgBigScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v15, v0

    new-instance v8, Lcn/com/picvision/view/AdvertView$3$3;

    move-object/from16 v9, p0

    move/from16 v10, v17

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcn/com/picvision/view/AdvertView$3$3;-><init>(Lcn/com/picvision/view/AdvertView$3;ILandroid/view/animation/ScaleAnimation;Landroid/view/animation/ScaleAnimation;Landroid/view/animation/ScaleAnimation;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v15, v8}, Lcn/com/picvision/view/AdvertView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 475
    .end local v4    # "bigScale":Landroid/view/animation/ScaleAnimation;
    .end local v5    # "smallScale":Landroid/view/animation/ScaleAnimation;
    .end local v6    # "imgSmallScale":Landroid/view/animation/ScaleAnimation;
    .end local v7    # "imgBigScale":Landroid/view/animation/ScaleAnimation;
    .end local v18    # "adwords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4
    move-exception v10

    move-object/from16 v23, v10

    .line 476
    .restart local v23    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    .line 647
    .end local v23    # "e":Ljava/io/FileNotFoundException;
    .end local v31    # "lgHeight":I
    .end local v32    # "lgParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v33    # "lgWidth":I
    .end local v34    # "lgX":I
    .end local v35    # "lgY":I
    .end local v36    # "linearParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v38    # "textSize":I
    .end local v40    # "txtHeight":I
    .end local v41    # "txtParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v42    # "txtWidth":I
    :pswitch_5
    const/4 v10, 0x0

    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 648
    const-string v10, "/sdcard/app/pvmobad"

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Config;->getImage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/com/picvision/util/Help;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v12, v0

    invoke-static {v12}, Lcn/com/picvision/view/AdvertView;->access$8(Lcn/com/picvision/view/AdvertView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Lcn/com/picvision/view/AdvertView;->access$28(Lcn/com/picvision/view/AdvertView;Landroid/widget/ImageView;)V

    .line 653
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$29(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v10

    .line 654
    new-instance v11, Ljava/io/BufferedInputStream;

    .line 655
    new-instance v12, Ljava/io/FileInputStream;

    new-instance v13, Ljava/io/File;

    .line 656
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 654
    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 657
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 653
    invoke-static {v11, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 661
    :goto_7
    new-instance v24, Landroid/widget/RelativeLayout$LayoutParams;

    .line 662
    const/4 v10, -0x1

    .line 663
    const/4 v11, -0x1

    .line 661
    move-object/from16 v0, v24

    move v1, v10

    move v2, v11

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 664
    .local v24, "imgParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$29(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v11

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    .line 666
    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f666666    # 0.9f

    const/high16 v13, 0x43700000    # 240.0f

    const/high16 v14, 0x41c80000    # 25.0f

    .line 665
    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 668
    .local v8, "layoutSmallScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 669
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    .line 670
    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f666666    # 0.9f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x43700000    # 240.0f

    const/high16 v15, 0x41c80000    # 25.0f

    .line 669
    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 671
    .local v9, "layoutBigScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v11, v0

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/com/picvision/view/AdvertView;->addView(Landroid/view/View;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    new-instance v11, Lcn/com/picvision/view/AdvertView$3$4;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcn/com/picvision/view/AdvertView$3$4;-><init>(Lcn/com/picvision/view/AdvertView$3;Landroid/view/animation/ScaleAnimation;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v10, v11}, Lcn/com/picvision/view/AdvertView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Config;->getBgMusic()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/picvision/model/Config;->getBgMusic()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$19(Lcn/com/picvision/view/AdvertView;)I

    move-result v10

    if-nez v10, :cond_8

    .line 705
    new-instance v39, Ljava/util/Timer;

    invoke-direct/range {v39 .. v39}, Ljava/util/Timer;-><init>()V

    .line 706
    .restart local v39    # "timer":Ljava/util/Timer;
    new-instance v37, Lcn/com/picvision/view/AdvertView$3$5;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/com/picvision/view/AdvertView$3$5;-><init>(Lcn/com/picvision/view/AdvertView$3;)V

    .line 754
    .restart local v37    # "task":Ljava/util/TimerTask;
    const-wide/16 v10, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 756
    .end local v37    # "task":Ljava/util/TimerTask;
    .end local v39    # "timer":Ljava/util/Timer;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcn/com/picvision/view/AdvertView;->setVisibility(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/picvision/view/AdvertView$3;->this$0:Lcn/com/picvision/view/AdvertView;

    move-object v10, v0

    invoke-static {v10}, Lcn/com/picvision/view/AdvertView;->access$29(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 658
    .end local v8    # "layoutSmallScale":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "layoutBigScale":Landroid/view/animation/ScaleAnimation;
    .end local v24    # "imgParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_5
    move-exception v10

    move-object/from16 v23, v10

    .line 659
    .restart local v23    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_7

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 401
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
