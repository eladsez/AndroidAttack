.class public final Lcom/parse/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_facebook_friend_picker_fragment:[I

.field public static final com_facebook_friend_picker_fragment_multi_select:I = 0x0

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_fetch_user_info:I = 0x1

.field public static final com_facebook_login_view_login_text:I = 0x2

.field public static final com_facebook_login_view_logout_text:I = 0x3

.field public static final com_facebook_picker_fragment:[I

.field public static final com_facebook_picker_fragment_done_button_background:I = 0x6

.field public static final com_facebook_picker_fragment_done_button_text:I = 0x4

.field public static final com_facebook_picker_fragment_extra_fields:I = 0x1

.field public static final com_facebook_picker_fragment_show_pictures:I = 0x0

.field public static final com_facebook_picker_fragment_show_title_bar:I = 0x2

.field public static final com_facebook_picker_fragment_title_bar_background:I = 0x5

.field public static final com_facebook_picker_fragment_title_text:I = 0x3

.field public static final com_facebook_place_picker_fragment:[I

.field public static final com_facebook_place_picker_fragment_radius_in_meters:I = 0x0

.field public static final com_facebook_place_picker_fragment_results_limit:I = 0x1

.field public static final com_facebook_place_picker_fragment_search_text:I = 0x2

.field public static final com_facebook_place_picker_fragment_show_search_box:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010007

    aput v2, v0, v1

    sput-object v0, Lcom/parse/R$styleable;->com_facebook_friend_picker_fragment:[I

    .line 323
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parse/R$styleable;->com_facebook_login_view:[I

    .line 404
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parse/R$styleable;->com_facebook_picker_fragment:[I

    .line 514
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/parse/R$styleable;->com_facebook_place_picker_fragment:[I

    .line 585
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/parse/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 323
    nop

    :array_0
    .array-data 4
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
    .end array-data

    .line 404
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    .line 514
    :array_2
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 585
    :array_3
    .array-data 4
        0x7f010010
        0x7f010011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
