.class Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode:[I


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

.field private final synthetic val$inputModeBtn:Landroid/widget/ImageButton;

.field private final synthetic val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode()[I
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->values()[Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->FINGER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->RUBBER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->TEXT:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->VIEW:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    iput-object p3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$inputModeBtn:Landroid/widget/ImageButton;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->getFingerInputMode()Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$inputModeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->TEXT:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->setFingerInputMode(Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$inputModeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->RUBBER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->setFingerInputMode(Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$inputModeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->FINGER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->setFingerInputMode(Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
