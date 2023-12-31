.class Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;
.super Ljava/lang/Object;
.source "ThumbFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageThumbnailQuery"
.end annotation


# static fields
.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_SELECTION:Ljava/lang/String; = "kind = 1 AND image_id = ?"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 150
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;->PATH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;->contentResolver:Landroid/content/ContentResolver;

    .line 148
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "imageId":Ljava/lang/String;
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "kind = 1 AND image_id = ?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
