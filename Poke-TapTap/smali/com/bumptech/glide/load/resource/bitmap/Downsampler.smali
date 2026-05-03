.class public final Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    }
.end annotation


# static fields
.field public static final ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECODE_FORMAT:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

.field public static final FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICO_MIME_TYPE:Ljava/lang/String; = "image/x-ico"

.field private static final NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/PreferredColorSpace;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final WBMP_MIME_TYPE:Ljava/lang/String; = "image/vnd.wap.wbmp"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    .line 56
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 66
    nop

    .line 67
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    invoke-static {v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    .line 76
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    .line 89
    nop

    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v2, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v2

    sput-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    .line 109
    nop

    .line 111
    nop

    .line 110
    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    invoke-static {v2, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 115
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "image/vnd.wap.wbmp"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "image/x-ico"

    aput-object v4, v2, v3

    .line 116
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    .line 117
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 129
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 131
    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 130
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;

    .line 135
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 147
    .local p1, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 148
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    .line 149
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 150
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 151
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 152
    return-void
.end method

.method private static adjustTargetDensityForError(D)I
    .locals 7
    .param p0, "adjustedScaleFactor"    # D

    .line 658
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDensityMultiplier(D)I

    move-result v0

    .line 659
    .local v0, "densityMultiplier":I
    int-to-double v1, v0

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v1

    .line 660
    .local v1, "targetDensity":I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 661
    .local v2, "scaleFactorWithError":F
    float-to-double v3, v2

    div-double v3, p0, v3

    .line 662
    .local v3, "difference":D
    int-to-double v5, v1

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v5

    return v5
.end method

.method private calculateConfig(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V
    .locals 6
    .param p1, "imageReader"    # Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .param p2, "format"    # Lcom/bumptech/glide/load/DecodeFormat;
    .param p3, "isHardwareConfigAllowed"    # Z
    .param p4, "isExifOrientationRequired"    # Z
    .param p5, "optionsWithScaling"    # Landroid/graphics/BitmapFactory$Options;
    .param p6, "targetWidth"    # I
    .param p7, "targetHeight"    # I

    .line 700
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move v4, p3

    move v5, p4

    move-object v3, p5

    move v1, p6

    move v2, p7

    .end local p3    # "isHardwareConfigAllowed":Z
    .end local p4    # "isExifOrientationRequired":Z
    .end local p5    # "optionsWithScaling":Landroid/graphics/BitmapFactory$Options;
    .end local p6    # "targetWidth":I
    .end local p7    # "targetHeight":I
    .local v1, "targetWidth":I
    .local v2, "targetHeight":I
    .local v3, "optionsWithScaling":Landroid/graphics/BitmapFactory$Options;
    .local v4, "isHardwareConfigAllowed":Z
    .local v5, "isExifOrientationRequired":Z
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->setHardwareConfigIfAllowed(IILandroid/graphics/BitmapFactory$Options;ZZ)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 706
    return-void

    .line 710
    :cond_0
    sget-object p3, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p2, p3, :cond_4

    .line 716
    const/4 p3, 0x0

    .line 718
    .local p3, "hasAlpha":Z
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, p4

    .line 728
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    move-object p4, v0

    .line 720
    .local p4, "e":Ljava/io/IOException;
    const/4 p5, 0x3

    const-string p6, "Downsampler"

    invoke-static {p6, p5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 721
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p6, p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    .end local p4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    nop

    .line 731
    if-eqz p3, :cond_2

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_2
    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    iput-object p4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 732
    iget-object p4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object p5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p4, p5, :cond_3

    .line 733
    const/4 p4, 0x1

    iput-boolean p4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 735
    :cond_3
    return-void

    .line 712
    .end local p3    # "hasAlpha":Z
    :cond_4
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p3, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 713
    return-void
.end method

.method private static calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 25
    .param p0, "imageType"    # Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .param p1, "imageReader"    # Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .param p2, "decodeCallbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .param p5, "degreesToRotate"    # I
    .param p6, "sourceWidth"    # I
    .param p7, "sourceHeight"    # I
    .param p8, "targetWidth"    # I
    .param p9, "targetHeight"    # I
    .param p10, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    const-string v7, "]"

    const-string v8, "Downsampler"

    const-string/jumbo v9, "x"

    if-lez p6, :cond_f

    if-gtz p7, :cond_0

    move/from16 v14, p6

    move/from16 v15, p7

    goto/16 :goto_7

    .line 488
    :cond_0
    move/from16 v10, p6

    .line 489
    .local v10, "orientedSourceWidth":I
    move/from16 v11, p7

    .line 494
    .local v11, "orientedSourceHeight":I
    invoke-static/range {p5 .. p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isRotationRequired(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 495
    move/from16 v10, p7

    .line 496
    move/from16 v11, p6

    .line 499
    :cond_1
    nop

    .line 500
    invoke-virtual {v1, v10, v11, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v12

    .line 503
    .local v12, "exactScaleFactor":F
    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-lez v13, :cond_e

    .line 521
    nop

    .line 522
    invoke-virtual {v1, v10, v11, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v7

    .line 524
    .local v7, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    if-eqz v7, :cond_d

    .line 528
    int-to-float v13, v10

    mul-float/2addr v13, v12

    float-to-double v13, v13

    invoke-static {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v13

    .line 529
    .local v13, "outWidth":I
    int-to-float v14, v11

    mul-float/2addr v14, v12

    float-to-double v14, v14

    invoke-static {v14, v15}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v14

    .line 531
    .local v14, "outHeight":I
    div-int v15, v10, v13

    .line 532
    .local v15, "widthScaleFactor":I
    move/from16 v16, v13

    .end local v13    # "outWidth":I
    .local v16, "outWidth":I
    div-int v13, v11, v14

    .line 538
    .local v13, "heightScaleFactor":I
    move/from16 v17, v14

    .end local v14    # "outHeight":I
    .local v17, "outHeight":I
    sget-object v14, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v7, v14, :cond_2

    .line 539
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_0

    .line 540
    :cond_2
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    :goto_0
    nop

    .line 544
    .local v14, "scaleFactor":I
    nop

    .line 548
    move/from16 v18, v13

    .end local v13    # "heightScaleFactor":I
    .local v18, "heightScaleFactor":I
    invoke-static {v14}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v13

    move/from16 v19, v14

    .end local v14    # "scaleFactor":I
    .local v19, "scaleFactor":I
    const/4 v14, 0x1

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 549
    .local v13, "powerOfTwoSampleSize":I
    move/from16 v20, v14

    sget-object v14, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v7, v14, :cond_3

    int-to-float v14, v13

    const/high16 v21, 0x3f800000    # 1.0f

    div-float v21, v21, v12

    cmpg-float v14, v14, v21

    if-gez v14, :cond_3

    .line 551
    shl-int/lit8 v13, v13, 0x1

    .line 560
    :cond_3
    iput v13, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 563
    sget-object v14, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-object/from16 v21, v7

    .end local v7    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .local v21, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    if-ne v0, v14, :cond_5

    .line 567
    const/16 v14, 0x8

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 568
    .local v14, "nativeScaling":I
    const/16 v22, 0x0

    int-to-float v7, v10

    move/from16 v23, v7

    int-to-float v7, v14

    div-float v7, v23, v7

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 569
    .local v2, "powerOfTwoWidth":I
    int-to-float v3, v11

    int-to-float v7, v14

    div-float/2addr v3, v7

    move v7, v2

    .end local v2    # "powerOfTwoWidth":I
    .local v7, "powerOfTwoWidth":I
    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 570
    .local v2, "powerOfTwoHeight":I
    div-int/lit8 v3, v13, 0x8

    .line 571
    .local v3, "secondaryScaling":I
    if-lez v3, :cond_4

    .line 572
    div-int/2addr v7, v3

    .line 573
    div-int/2addr v2, v3

    move v3, v2

    move v2, v7

    goto :goto_1

    .line 571
    :cond_4
    move v3, v2

    move v2, v7

    .line 575
    .end local v7    # "powerOfTwoWidth":I
    .end local v14    # "nativeScaling":I
    .local v2, "powerOfTwoWidth":I
    .local v3, "powerOfTwoHeight":I
    :goto_1
    move-object/from16 v14, p3

    goto/16 :goto_4

    .end local v2    # "powerOfTwoWidth":I
    .end local v3    # "powerOfTwoHeight":I
    :cond_5
    const/16 v22, 0x0

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v0, v2, :cond_a

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v2, :cond_6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p3

    goto :goto_3

    .line 578
    :cond_6
    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 579
    nop

    .line 580
    int-to-float v2, v10

    int-to-float v3, v13

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 581
    .restart local v2    # "powerOfTwoWidth":I
    int-to-float v3, v11

    int-to-float v7, v13

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v14, p3

    .restart local v3    # "powerOfTwoHeight":I
    goto :goto_4

    .line 586
    .end local v2    # "powerOfTwoWidth":I
    .end local v3    # "powerOfTwoHeight":I
    :cond_7
    rem-int v2, v10, v13

    if-nez v2, :cond_9

    rem-int v2, v11, v13

    if-eqz v2, :cond_8

    goto :goto_2

    .line 598
    :cond_8
    div-int v2, v10, v13

    .line 599
    .restart local v2    # "powerOfTwoWidth":I
    div-int v3, v11, v13

    move-object/from16 v14, p3

    .restart local v3    # "powerOfTwoHeight":I
    goto :goto_4

    .line 590
    .end local v2    # "powerOfTwoWidth":I
    .end local v3    # "powerOfTwoHeight":I
    :cond_9
    :goto_2
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p3

    invoke-static {v2, v6, v3, v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    move-result-object v7

    .line 595
    .local v7, "dimensions":[I
    aget v23, v7, v22

    .line 596
    .local v23, "powerOfTwoWidth":I
    aget v7, v7, v20

    .line 597
    .local v7, "powerOfTwoHeight":I
    move v3, v7

    move/from16 v2, v23

    goto :goto_4

    .line 575
    .end local v7    # "powerOfTwoHeight":I
    .end local v23    # "powerOfTwoWidth":I
    :cond_a
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p3

    .line 576
    :goto_3
    int-to-float v7, v10

    int-to-float v2, v13

    div-float/2addr v7, v2

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 577
    .restart local v2    # "powerOfTwoWidth":I
    int-to-float v3, v11

    int-to-float v7, v13

    div-float/2addr v3, v7

    move v7, v2

    .end local v2    # "powerOfTwoWidth":I
    .local v7, "powerOfTwoWidth":I
    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v3, v2

    move v2, v7

    .line 602
    .end local v7    # "powerOfTwoWidth":I
    .restart local v2    # "powerOfTwoWidth":I
    .restart local v3    # "powerOfTwoHeight":I
    :goto_4
    nop

    .line 603
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v7

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v10    # "orientedSourceWidth":I
    .end local v11    # "orientedSourceHeight":I
    .local v23, "orientedSourceWidth":I
    .local v24, "orientedSourceHeight":I
    float-to-double v10, v7

    .line 608
    .local v10, "adjustedScaleFactor":D
    nop

    .line 609
    invoke-static {v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->adjustTargetDensityForError(D)I

    move-result v7

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 610
    invoke-static {v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDensityMultiplier(D)I

    move-result v7

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 612
    invoke-static {v6}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 613
    move/from16 v7, v20

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_5

    .line 615
    :cond_b
    move/from16 v7, v22

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 618
    :goto_5
    const/4 v7, 0x2

    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calculate scaling, source: ["

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v14, p6

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v20, v15

    move/from16 v15, p7

    .end local v15    # "widthScaleFactor":I
    .local v20, "widthScaleFactor":I
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "], degreesToRotate: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", target: ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "], power of two scaled: ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "], exact scale factor: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", power of 2 sample size: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", adjusted scale factor: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", target density: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", density: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 618
    .end local v20    # "widthScaleFactor":I
    .restart local v15    # "widthScaleFactor":I
    :cond_c
    move/from16 v14, p6

    move/from16 v20, v15

    move/from16 v15, p7

    .line 650
    .end local v15    # "widthScaleFactor":I
    .restart local v20    # "widthScaleFactor":I
    :goto_6
    return-void

    .line 525
    .end local v2    # "powerOfTwoWidth":I
    .end local v3    # "powerOfTwoHeight":I
    .end local v13    # "powerOfTwoSampleSize":I
    .end local v16    # "outWidth":I
    .end local v17    # "outHeight":I
    .end local v18    # "heightScaleFactor":I
    .end local v19    # "scaleFactor":I
    .end local v20    # "widthScaleFactor":I
    .end local v21    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .end local v23    # "orientedSourceWidth":I
    .end local v24    # "orientedSourceHeight":I
    .local v7, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .local v10, "orientedSourceWidth":I
    .restart local v11    # "orientedSourceHeight":I
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot round with null rounding"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    .end local v7    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    :cond_e
    move/from16 v14, p6

    move/from16 v15, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot scale with factor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", source: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], target: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    .end local v10    # "orientedSourceWidth":I
    .end local v11    # "orientedSourceHeight":I
    .end local v12    # "exactScaleFactor":F
    :cond_f
    move/from16 v14, p6

    move/from16 v15, p7

    .line 474
    :goto_7
    const/4 v0, 0x3

    invoke-static {v8, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine dimensions for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with target ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 474
    :cond_10
    move-object/from16 v2, p0

    .line 485
    :goto_8
    return-void
.end method

.method private decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 14
    .param p1, "imageReader"    # Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .param p5, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/ImageReader;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    move-object/from16 v1, p4

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const/high16 v2, 0x10000

    const-class v3, [B

    invoke-interface {v0, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    .line 273
    .local v2, "bytesForOptions":[B
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 274
    .local v5, "bitmapFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    iput-object v2, v5, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 276
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bumptech/glide/load/DecodeFormat;

    .line 277
    .local v7, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 278
    .local v8, "preferredColorSpace":Lcom/bumptech/glide/load/PreferredColorSpace;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 279
    .local v6, "downsampleStrategy":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 280
    .local v12, "fixBitmapToRequestedDimensions":Z
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 281
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 284
    .local v9, "isHardwareConfigAllowed":Z
    nop

    .line 285
    move-object v3, p0

    move-object v4, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v13, p5

    :try_start_0
    invoke-direct/range {v3 .. v13}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeFromWrappedStreams(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v4}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-static {v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 299
    iget-object v10, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v10, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 296
    return-object v4

    .line 298
    .end local v0    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 299
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v4, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 300
    throw v0
.end method

.method private decodeFromWrappedStreams(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 30
    .param p1, "imageReader"    # Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .param p4, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;
    .param p5, "preferredColorSpace"    # Lcom/bumptech/glide/load/PreferredColorSpace;
    .param p6, "isHardwareConfigAllowed"    # Z
    .param p7, "requestedWidth"    # I
    .param p8, "requestedHeight"    # I
    .param p9, "fixBitmapToRequestedDimensions"    # Z
    .param p10, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move-object/from16 v12, p5

    move-object/from16 v3, p10

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v13

    .line 317
    .local v13, "startTime":J
    iget-object v2, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v1, v5, v3, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    move-result-object v15

    .line 318
    .local v15, "sourceDimensions":[I
    const/16 v16, 0x0

    aget v7, v15, v16

    .line 319
    .local v7, "sourceWidth":I
    const/4 v2, 0x1

    aget v8, v15, v2

    .line 320
    .local v8, "sourceHeight":I
    iget-object v4, v5, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 326
    .local v4, "sourceMimeType":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v7, v6, :cond_1

    if-ne v8, v6, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v17, p6

    goto :goto_1

    .line 327
    :cond_1
    :goto_0
    const/4 v6, 0x0

    move/from16 v17, v6

    .line 330
    .end local p6    # "isHardwareConfigAllowed":Z
    .local v17, "isHardwareConfigAllowed":Z
    :goto_1
    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->getImageOrientation()I

    move-result v6

    .line 331
    .local v6, "orientation":I
    move v9, v6

    .end local v6    # "orientation":I
    .local v9, "orientation":I
    invoke-static {v9}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v6

    .line 332
    .local v6, "degreesToRotate":I
    invoke-static {v9}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->isExifOrientationRequired(I)Z

    move-result v18

    .line 335
    .local v18, "isExifOrientationRequired":Z
    const/high16 v10, -0x80000000

    move/from16 v11, p7

    if-ne v11, v10, :cond_3

    .line 336
    invoke-static {v6}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isRotationRequired(I)Z

    move-result v19

    if-eqz v19, :cond_2

    move/from16 v19, v8

    goto :goto_2

    :cond_2
    move/from16 v19, v7

    goto :goto_2

    .line 337
    :cond_3
    move/from16 v19, v11

    :goto_2
    nop

    .line 339
    .local v19, "targetWidth":I
    move-wide/from16 v20, v13

    move/from16 v13, p8

    .end local v13    # "startTime":J
    .local v20, "startTime":J
    if-ne v13, v10, :cond_5

    .line 340
    invoke-static {v6}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isRotationRequired(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v7

    goto :goto_3

    :cond_4
    move v10, v8

    goto :goto_3

    .line 341
    :cond_5
    move v10, v13

    :goto_3
    nop

    .line 343
    .local v10, "targetHeight":I
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v1

    .line 345
    .local v1, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    move-object v14, v4

    .end local v4    # "sourceMimeType":Ljava/lang/String;
    .local v14, "sourceMimeType":Ljava/lang/String;
    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move/from16 p6, v2

    move-object v11, v5

    move v13, v9

    move/from16 v9, v19

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .end local v19    # "targetWidth":I
    .local v9, "targetWidth":I
    .local v13, "orientation":I
    invoke-static/range {v1 .. v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V

    .line 357
    move v11, v8

    move v8, v7

    move v7, v10

    move v10, v11

    move v11, v6

    move v6, v9

    move-object v9, v3

    .end local v9    # "targetWidth":I
    .local v6, "targetWidth":I
    .local v7, "targetHeight":I
    .local v8, "sourceWidth":I
    .local v10, "sourceHeight":I
    .local v11, "degreesToRotate":I
    move-object/from16 v5, p2

    move-object/from16 v2, p4

    move/from16 v19, v11

    move/from16 v3, v17

    move/from16 v4, v18

    move-object v11, v1

    move-object/from16 v1, p1

    .end local v1    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .end local v17    # "isHardwareConfigAllowed":Z
    .end local v18    # "isExifOrientationRequired":Z
    .local v3, "isHardwareConfigAllowed":Z
    .local v4, "isExifOrientationRequired":Z
    .local v11, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .local v19, "degreesToRotate":I
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateConfig(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V

    .line 366
    move/from16 v23, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v22, v7

    .end local v3    # "isHardwareConfigAllowed":Z
    .end local v4    # "isExifOrientationRequired":Z
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .local v17, "isExifOrientationRequired":Z
    .local v18, "targetWidth":I
    .local v22, "targetHeight":I
    .local v23, "isHardwareConfigAllowed":Z
    move/from16 v24, p6

    .line 368
    .local v24, "isKitKatOrGreater":Z
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const-string v4, "Downsampler"

    move/from16 v6, p6

    if-eq v2, v6, :cond_7

    if-eqz v24, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v28, v11

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    goto/16 :goto_8

    :cond_7
    :goto_4
    invoke-direct {v0, v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 371
    if-ltz v8, :cond_8

    if-ltz v10, :cond_8

    if-eqz p9, :cond_8

    if-eqz v24, :cond_8

    .line 375
    move/from16 v2, v18

    .line 376
    .local v2, "expectedWidth":I
    move/from16 v7, v22

    move-object/from16 v28, v11

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    .local v7, "expectedHeight":I
    goto/16 :goto_7

    .line 379
    .end local v2    # "expectedWidth":I
    .end local v7    # "expectedHeight":I
    :cond_8
    invoke-static {v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v2, v2

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    goto :goto_5

    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 380
    .local v2, "densityMultiplier":F
    :goto_5
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 381
    .local v7, "sampleSize":I
    int-to-float v6, v8

    int-to-float v3, v7

    div-float/2addr v6, v3

    move-object v3, v14

    move-object/from16 v25, v15

    .end local v14    # "sourceMimeType":Ljava/lang/String;
    .end local v15    # "sourceDimensions":[I
    .local v3, "sourceMimeType":Ljava/lang/String;
    .local v25, "sourceDimensions":[I
    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v6, v14

    .line 382
    .local v6, "downsampledWidth":I
    int-to-float v14, v10

    int-to-float v15, v7

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 383
    .local v14, "downsampledHeight":I
    int-to-float v15, v6

    mul-float/2addr v15, v2

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 384
    .local v15, "expectedWidth":I
    move-object/from16 v26, v3

    .end local v3    # "sourceMimeType":Ljava/lang/String;
    .local v26, "sourceMimeType":Ljava/lang/String;
    int-to-float v3, v14

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 386
    .local v3, "expectedHeight":I
    move/from16 v27, v6

    const/4 v6, 0x2

    .end local v6    # "downsampledWidth":I
    .local v27, "downsampledWidth":I
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v11

    .end local v11    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .local v28, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    const-string v11, "Calculated target ["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v11, "x"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v29, v3

    .end local v3    # "expectedHeight":I
    .local v29, "expectedHeight":I
    const-string v3, "] for source ["

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "], sampleSize: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", targetDensity: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", density: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", density multiplier: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 386
    .end local v28    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .end local v29    # "expectedHeight":I
    .restart local v3    # "expectedHeight":I
    .restart local v11    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :cond_a
    move/from16 v29, v3

    move-object/from16 v28, v11

    .line 411
    .end local v2    # "densityMultiplier":F
    .end local v3    # "expectedHeight":I
    .end local v7    # "sampleSize":I
    .end local v11    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .end local v14    # "downsampledHeight":I
    .end local v27    # "downsampledWidth":I
    .restart local v28    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .restart local v29    # "expectedHeight":I
    :goto_6
    move v2, v15

    move/from16 v7, v29

    .end local v15    # "expectedWidth":I
    .end local v29    # "expectedHeight":I
    .local v2, "expectedWidth":I
    .local v7, "expectedHeight":I
    :goto_7
    if-lez v2, :cond_c

    if-lez v7, :cond_c

    .line 412
    iget-object v3, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v5, v3, v2, v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    goto :goto_8

    .line 368
    .end local v2    # "expectedWidth":I
    .end local v7    # "expectedHeight":I
    .end local v25    # "sourceDimensions":[I
    .end local v26    # "sourceMimeType":Ljava/lang/String;
    .end local v28    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .restart local v11    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .local v14, "sourceMimeType":Ljava/lang/String;
    .local v15, "sourceDimensions":[I
    :cond_b
    move-object/from16 v28, v11

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    .line 416
    .end local v11    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .end local v14    # "sourceMimeType":Ljava/lang/String;
    .end local v15    # "sourceDimensions":[I
    .restart local v25    # "sourceDimensions":[I
    .restart local v26    # "sourceMimeType":Ljava/lang/String;
    .restart local v28    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :cond_c
    :goto_8
    if-eqz v12, :cond_11

    .line 417
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_f

    .line 418
    sget-object v2, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    if-ne v12, v2, :cond_d

    iget-object v2, v5, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v2, :cond_d

    iget-object v2, v5, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 421
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v16, 0x1

    goto :goto_9

    :cond_d
    nop

    .line 422
    .local v16, "isP3Eligible":Z
    :goto_9
    nop

    .line 423
    if-eqz v16, :cond_e

    sget-object v2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_a

    :cond_e
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_a
    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    iput-object v2, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .end local v16    # "isP3Eligible":Z
    goto :goto_b

    .line 424
    :cond_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_10

    .line 425
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    iput-object v2, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_c

    .line 424
    :cond_10
    :goto_b
    nop

    .line 429
    :cond_11
    :goto_c
    iget-object v2, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v1, v5, v9, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 430
    .local v2, "downsampled":Landroid/graphics/Bitmap;
    iget-object v3, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v9, v3, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 432
    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 433
    move/from16 v6, p8

    move-object v4, v2

    move-object v3, v5

    move v1, v10

    move-object/from16 v2, v26

    move/from16 v5, p7

    move-object v10, v0

    move v0, v8

    move-wide/from16 v7, v20

    .end local v8    # "sourceWidth":I
    .end local v10    # "sourceHeight":I
    .end local v20    # "startTime":J
    .end local v26    # "sourceMimeType":Ljava/lang/String;
    .local v0, "sourceWidth":I
    .local v1, "sourceHeight":I
    .local v2, "sourceMimeType":Ljava/lang/String;
    .local v4, "downsampled":Landroid/graphics/Bitmap;
    .local v7, "startTime":J
    invoke-static/range {v0 .. v8}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V

    move-object v14, v2

    .end local v2    # "sourceMimeType":Ljava/lang/String;
    .restart local v14    # "sourceMimeType":Ljava/lang/String;
    goto :goto_d

    .line 432
    .end local v0    # "sourceWidth":I
    .end local v1    # "sourceHeight":I
    .end local v4    # "downsampled":Landroid/graphics/Bitmap;
    .end local v7    # "startTime":J
    .end local v14    # "sourceMimeType":Ljava/lang/String;
    .local v2, "downsampled":Landroid/graphics/Bitmap;
    .restart local v8    # "sourceWidth":I
    .restart local v10    # "sourceHeight":I
    .restart local v20    # "startTime":J
    .restart local v26    # "sourceMimeType":Ljava/lang/String;
    :cond_12
    move-object v4, v2

    move v1, v10

    move-object/from16 v14, v26

    move-object v10, v0

    move v0, v8

    move-wide/from16 v7, v20

    .line 444
    .end local v2    # "downsampled":Landroid/graphics/Bitmap;
    .end local v8    # "sourceWidth":I
    .end local v10    # "sourceHeight":I
    .end local v20    # "startTime":J
    .end local v26    # "sourceMimeType":Ljava/lang/String;
    .restart local v0    # "sourceWidth":I
    .restart local v1    # "sourceHeight":I
    .restart local v4    # "downsampled":Landroid/graphics/Bitmap;
    .restart local v7    # "startTime":J
    .restart local v14    # "sourceMimeType":Ljava/lang/String;
    :goto_d
    const/4 v2, 0x0

    .line 445
    .local v2, "rotated":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_13

    .line 448
    iget-object v3, v10, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 450
    iget-object v3, v10, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v3, v4, v13}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 451
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 452
    iget-object v3, v10, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 456
    :cond_13
    return-object v2
.end method

.method private static decodeStream(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "imageReader"    # Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    const-string v0, "Downsampler"

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_0

    .line 769
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onObtainBounds()V

    .line 770
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->stopGrowingBuffers()V

    .line 775
    :cond_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 776
    .local v1, "sourceWidth":I
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 777
    .local v2, "sourceHeight":I
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 779
    .local v3, "outMimeType":Ljava/lang/String;
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 781
    :try_start_0
    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 803
    nop

    .line 805
    return-object v0

    .line 802
    .end local v0    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v4

    .line 783
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 784
    :try_start_1
    invoke-static {v4, v1, v2, v3, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v5

    .line 785
    .local v5, "bitmapAssertionException":Ljava/io/IOException;
    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 786
    const-string v6, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 793
    :try_start_2
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 795
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 795
    return-object v0

    .line 796
    :catch_1
    move-exception v0

    .line 797
    .local v0, "resetException":Ljava/io/IOException;
    nop

    .end local v1    # "sourceWidth":I
    .end local v2    # "sourceHeight":I
    .end local v3    # "outMimeType":Ljava/lang/String;
    .end local p0    # "imageReader":Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "callbacks":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .end local p3    # "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    :try_start_3
    throw v5

    .line 800
    .end local v0    # "resetException":Ljava/io/IOException;
    .restart local v1    # "sourceWidth":I
    .restart local v2    # "sourceHeight":I
    .restart local v3    # "outMimeType":Ljava/lang/String;
    .restart local p0    # "imageReader":Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .restart local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p2    # "callbacks":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .restart local p3    # "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    :cond_2
    nop

    .end local v1    # "sourceWidth":I
    .end local v2    # "sourceHeight":I
    .end local v3    # "outMimeType":Ljava/lang/String;
    .end local p0    # "imageReader":Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "callbacks":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .end local p3    # "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 802
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "bitmapAssertionException":Ljava/io/IOException;
    .restart local v1    # "sourceWidth":I
    .restart local v2    # "sourceHeight":I
    .restart local v3    # "outMimeType":Ljava/lang/String;
    .restart local p0    # "imageReader":Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .restart local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p2    # "callbacks":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .restart local p3    # "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 803
    throw v0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 859
    if-nez p0, :cond_0

    .line 860
    const/4 v0, 0x0

    return-object v0

    .line 864
    :cond_0
    nop

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    nop

    .line 867
    .local v0, "sizeString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 868
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 870
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 872
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    return-object v1
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v0

    .line 928
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 929
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 930
    .local v2, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    if-nez v2, :cond_0

    .line 932
    :try_start_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v1

    .line 933
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 936
    :cond_0
    monitor-exit v0

    return-object v2

    .line 930
    .end local v2    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 927
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static getDensityMultiplier(D)I
    .locals 4
    .param p0, "adjustedScaleFactor"    # D

    .line 666
    nop

    .line 669
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    div-double/2addr v0, p0

    :goto_0
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v0, v2

    .line 667
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 666
    return v0
.end method

.method private static getDimensions(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I
    .locals 2
    .param p0, "imageReader"    # Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "decodeCallbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 752
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 754
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private static getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 853
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isRotationRequired(I)Z
    .locals 1
    .param p0, "degreesToRotate"    # I

    .line 976
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isScaling(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 2
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 809
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V
    .locals 3
    .param p0, "sourceWidth"    # I
    .param p1, "sourceHeight"    # I
    .param p2, "outMimeType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "result"    # Landroid/graphics/Bitmap;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I
    .param p7, "startTime"    # J

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 826
    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with inBitmap "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 834
    invoke-static {p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], sample size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 847
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    invoke-static {p7, p8}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    const-string v1, "Downsampler"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method

.method private static newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3
    .param p0, "e"    # Ljava/lang/IllegalArgumentException;
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "outMimeType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 886
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outMimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 895
    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 886
    return-object v0
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .line 940
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 941
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v0

    .line 942
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 943
    monitor-exit v0

    .line 944
    return-void

    .line 943
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 949
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 950
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 951
    const/4 v2, 0x1

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 952
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 953
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 954
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 955
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 956
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 957
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 958
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 959
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 961
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 962
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 963
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 964
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 965
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 966
    return-void
.end method

.method private static round(D)I
    .locals 2
    .param p0, "value"    # D

    .line 675
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 903
    const/4 v0, 0x0

    .line 905
    .local v0, "expectedConfig":Landroid/graphics/Bitmap$Config;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 906
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 907
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 914
    :cond_1
    if-nez v0, :cond_2

    .line 920
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 923
    :cond_2
    invoke-interface {p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 924
    return-void
.end method

.method private shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .locals 1
    .param p1, "imageType"    # Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 681
    nop

    .line 682
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public decode(Landroid/os/ParcelFileDescriptor;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, p1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p2    # "outWidth":I
    .end local p3    # "outHeight":I
    .end local p4    # "options":Lcom/bumptech/glide/load/Options;
    .local v2, "outWidth":I
    .local v3, "outHeight":I
    .local v4, "options":Lcom/bumptech/glide/load/Options;
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p2

    return-object p2
.end method

.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "outWidth":I
    .end local p3    # "outHeight":I
    .end local p4    # "options":Lcom/bumptech/glide/load/Options;
    .local v1, "is":Ljava/io/InputStream;
    .local v2, "outWidth":I
    .local v3, "outHeight":I
    .local v4, "options":Lcom/bumptech/glide/load/Options;
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .param p5, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, p1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;-><init>(Ljava/io/InputStream;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "requestedWidth":I
    .end local p3    # "requestedHeight":I
    .end local p4    # "options":Lcom/bumptech/glide/load/Options;
    .end local p5    # "callbacks":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .local v2, "requestedWidth":I
    .local v3, "requestedHeight":I
    .local v4, "options":Lcom/bumptech/glide/load/Options;
    .local v5, "callbacks":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p2

    return-object p2
.end method

.method public decode(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, p1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p2    # "requestedWidth":I
    .end local p3    # "requestedHeight":I
    .end local p4    # "options":Lcom/bumptech/glide/load/Options;
    .local v2, "requestedWidth":I
    .local v3, "requestedHeight":I
    .local v4, "options":Lcom/bumptech/glide/load/Options;
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p2

    return-object p2
.end method

.method decode(Ljava/io/File;IILcom/bumptech/glide/load/Options;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, p1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;-><init>(Ljava/io/File;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p2    # "requestedWidth":I
    .end local p3    # "requestedHeight":I
    .end local p4    # "options":Lcom/bumptech/glide/load/Options;
    .local v2, "requestedWidth":I
    .local v3, "requestedHeight":I
    .local v4, "options":Lcom/bumptech/glide/load/Options;
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    .line 250
    return-void
.end method

.method decode([BIILcom/bumptech/glide/load/Options;)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, p1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;-><init>([BLjava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p2    # "requestedWidth":I
    .end local p3    # "requestedHeight":I
    .end local p4    # "options":Lcom/bumptech/glide/load/Options;
    .local v2, "requestedWidth":I
    .local v3, "requestedHeight":I
    .local v4, "options":Lcom/bumptech/glide/load/Options;
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    .line 239
    return-void
.end method

.method public handles(Landroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .param p1, "source"    # Landroid/os/ParcelFileDescriptor;

    .line 165
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->isSupported()Z

    move-result v0

    return v0
.end method

.method public handles(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public handles(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 161
    const/4 v0, 0x1

    return v0
.end method
