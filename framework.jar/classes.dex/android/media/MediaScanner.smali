.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String; = null

.field private static final DATE_MODIFIED_AUDIO_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_VIDEO_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final ID_AUDIO_COLUMN_INDEX:I = 0x0

.field private static final ID_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_VIDEO_COLUMN_INDEX:I = 0x0

.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final MYSOUNDS_DIR:Ljava/lang/String; = "/my_sounds/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_AUDIO_COLUMN_INDEX:I = 0x1

.field private static final PATH_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PATH_VIDEO_COLUMN_INDEX:I = 0x1

.field private static final PLAYLISTS_PROJECTION:[Ljava/lang/String; = null

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final VIDEO_PROJECTION:[Ljava/lang/String; = null

.field private static final VOICERECORDER_DIR:Ljava/lang/String; = "/voicerecorder/"

.field private static mNumScanfiles:I

.field private static mNumTotalfiles:I

.field private static mPercent:I

.field private static mPreUpdateTime:J



# instance fields
.field private bScanningForBatch:Z

.field private cpOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private entryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private genreRowIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private genreUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field isFinalized:Z

.field private mAudioUri:Landroid/net/Uri;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGenreCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGenresUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private nFilesForUpdate:I

.field private final nMaxBatchSize:I

.field private nUpdatedFiles:I



# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_id"

    .line 127
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 210
    const/4 v0, -0x1

    sput v0, Landroid/media/MediaScanner;->mPercent:I

    .line 211
    const/4 v0, -0x1

    sput v0, Landroid/media/MediaScanner;->mNumTotalfiles:I

    .line 212
    const/4 v0, -0x1

    sput v0, Landroid/media/MediaScanner;->mNumScanfiles:I

    .line 214
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/MediaScanner;->mPreUpdateTime:J

    .line 219
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    .line 229
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 239
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 249
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 255
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 263
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 280
    const/16 v0, 0x7e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string v1, "Country"

    aput-object v1, v0, v4

    const-string v1, "Dance"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->cpOperations:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->entryList:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->genreUriList:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->genreRowIDList:Ljava/util/ArrayList;

    .line 202
    iput-boolean v2, p0, Landroid/media/MediaScanner;->bScanningForBatch:Z

    .line 203
    const/16 v0, 0x64

    iput v0, p0, Landroid/media/MediaScanner;->nMaxBatchSize:I

    .line 204
    iput v2, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    .line 205
    iput v2, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    .line 448
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 499
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 2022
    iput-boolean v2, p0, Landroid/media/MediaScanner;->isFinalized:Z

    .line 482
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 483
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 484
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 485
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 487
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 488
    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/media/MediaScanner;->bScanningForBatch:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->cpOperations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->entryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->genreUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->genreRowIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    return v0
.end method

.method static synthetic access$3108(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    return v0
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 124
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 124
    sget v0, Landroid/media/MediaScanner;->mNumTotalfiles:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 124
    sput p0, Landroid/media/MediaScanner;->mNumTotalfiles:I

    return p0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 124
    sget v0, Landroid/media/MediaScanner;->mNumScanfiles:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 124
    sput p0, Landroid/media/MediaScanner;->mNumScanfiles:I

    return p0
.end method

.method static synthetic access$708()I
    .registers 2

    .prologue
    .line 124
    sget v0, Landroid/media/MediaScanner;->mNumScanfiles:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/media/MediaScanner;->mNumScanfiles:I

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 124
    sget v0, Landroid/media/MediaScanner;->mPercent:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 124
    sput p0, Landroid/media/MediaScanner;->mPercent:I

    return p0
.end method

.method static synthetic access$900()J
    .registers 2

    .prologue
    .line 124
    sget-wide v0, Landroid/media/MediaScanner;->mPreUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$902(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    sput-wide p0, Landroid/media/MediaScanner;->mPreUpdateTime:J

    return-wide p0
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 22
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1752
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1753
    .local v8, entryLength:I
    :goto_4
    if-lez v8, :cond_19

    const/4 v13, 0x1

    sub-int v13, v8, v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_19

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 1756
    :cond_19
    const/4 v13, 0x3

    if-ge v8, v13, :cond_1e

    const/4 v13, 0x0

    .line 1809
    :goto_1d
    return v13

    .line 1757
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_2d

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1761
    :cond_2d
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1762
    .local v6, ch1:C
    const/16 v13, 0x2f

    if-eq v6, v13, :cond_57

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_ab

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_ab

    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_ab

    :cond_57
    const/4 v13, 0x1

    move v9, v13

    .line 1765
    .local v9, fullPath:Z
    :goto_59
    if-nez v9, :cond_72

    .line 1766
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1771
    :cond_72
    const/4 v3, 0x0

    .line 1774
    .local v3, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v4, 0x0

    .line 1776
    .local v4, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1777
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_81
    :goto_81
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_99

    .line 1778
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1779
    .local v5, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v12, v5, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1781
    .local v12, path:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ae

    .line 1782
    move-object v3, v5

    .line 1794
    .end local v5       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;,
    .end local v12       #path:Ljava/lang/String;,
    :cond_99
    if-eqz v3, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v13, v0

    iget-object v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_bc

    .line 1795
    :cond_a8
    const/4 v13, 0x0

    goto/16 :goto_1d

    .line 1762
    .end local v3       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;,
    .end local v4       #bestMatchLength:I,
    .end local v9       #fullPath:Z,
    .end local v10       #iterator:Ljava/util/Iterator;,, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_ab
    const/4 v13, 0x0

    move v9, v13

    goto :goto_59

    .line 1786
    .restart local v3       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;,
    .restart local v4       #bestMatchLength:I,
    .restart local v5       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;,
    .restart local v9       #fullPath:Z,
    .restart local v10       #iterator:Ljava/util/Iterator;,, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v12       #path:Ljava/lang/String;,
    :cond_ae
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1787
    .local v11, matchLength:I
    if-le v11, v4, :cond_81

    .line 1788
    move-object v3, v5

    .line 1789
    move v4, v11

    goto :goto_81

    .line 1800
    .end local v5       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;,
    .end local v11       #matchLength:I,
    .end local v12       #path:Ljava/lang/String;,
    :cond_bc
    :try_start_bc
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1801
    const-string/jumbo v13, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1802
    const-string v13, "audio_id"

    iget-wide v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_e9} :catch_ec

    .line 1809
    const/4 v13, 0x1

    goto/16 :goto_1d

    .line 1804
    :catch_ec
    move-exception v13

    move-object v7, v13

    .line 1805
    .local v7, e:Landroid/os/RemoteException;
    const-string v13, "MediaScanner"

    const-string v14, "RemoteException in MediaScanner.addPlayListEntry()"

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1806
    const/4 v13, 0x0

    goto/16 :goto_1d
.end method

.method private clearBuffer()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Landroid/media/MediaScanner;->cpOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v0, p0, Landroid/media/MediaScanner;->entryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Landroid/media/MediaScanner;->genreUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v0, p0, Landroid/media/MediaScanner;->genreRowIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    return-void
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 1429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_11

    .line 1430
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1431
    const/4 v1, 0x1

    .line 1434
    :goto_d
    return v1

    .line 1429
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1434
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 5
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 1562
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1564
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1565
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1566
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1567
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1569
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1571
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1572
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 1574
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    .line 1575
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1577
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1578
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1581
    :cond_4e
    return-void
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 1723
    const/4 v10, 0x0

    .line 1724
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1725
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1727
    .local v9, end2:I
    :goto_9
    if-lez v8, :cond_43

    if-lez v9, :cond_43

    .line 1728
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1729
    .local v11, slash1:I
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1730
    .local v12, slash2:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1731
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1732
    .local v7, backSlash2:I
    if-le v11, v6, :cond_44

    move v2, v11

    .line 1733
    .local v2, start1:I
    :goto_34
    if-le v12, v7, :cond_46

    move v4, v12

    .line 1734
    .local v4, start2:I
    :goto_37
    if-gez v2, :cond_48

    const/4 v2, 0x0

    .line 1735
    :goto_3a
    if-gez v4, :cond_4b

    const/4 v4, 0x0

    .line 1736
    :goto_3d
    sub-int v5, v8, v2

    .line 1737
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_4e

    .line 1745
    .end local v2       #start1:I,
    .end local v4       #start2:I,
    .end local v5       #length:I,
    .end local v6       #backSlash1:I,
    .end local v7       #backSlash2:I,
    .end local v11       #slash1:I,
    .end local v12       #slash2:I,
    :cond_43
    return v10

    .restart local v6       #backSlash1:I,
    .restart local v7       #backSlash2:I,
    .restart local v11       #slash1:I,
    .restart local v12       #slash2:I,
    :cond_44
    move v2, v6

    .line 1732
    goto :goto_34

    .restart local v2       #start1:I,
    :cond_46
    move v4, v7

    .line 1733
    goto :goto_37

    .line 1734
    .restart local v4       #start2:I,
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 1735
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 1738
    .restart local v5       #length:I,
    :cond_4e
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1739
    add-int/lit8 v10, v10, 0x1

    .line 1740
    const/4 v0, 0x1

    sub-int v8, v2, v0

    .line 1741
    const/4 v0, 0x1

    sub-int v9, v4, v0

    .line 1743
    goto :goto_9
.end method

.method private final native native_finalize()V
.end method

.method private native native_getNumFiles(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .registers 15
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1483
    iget-object v10, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1486
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1487
    .local v0, _cpOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_f
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 1488
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1489
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v7, v1, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1492
    .local v7, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1494
    .local v3, fileMissing:Z
    iget-boolean v10, v1, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    if-nez v10, :cond_29

    .line 1495
    invoke-direct {p0, v7, p1}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 1497
    const/4 v3, 0x1

    .line 1508
    :cond_29
    :goto_29
    if-eqz v3, :cond_f

    .line 1512
    invoke-static {v7}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v6

    .line 1513
    .local v6, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v6, :cond_74

    const/4 v10, 0x0

    move v4, v10

    .line 1515
    .local v4, fileType:I
    :goto_33
    invoke-static {v4}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v10

    if-eqz v10, :cond_78

    .line 1516
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1517
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "_data"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const-string v10, "date_modified"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    iget-object v10, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    iget-wide v11, v1, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1501
    .end local v4       #fileType:I,
    .end local v6       #mediaFileType:Landroid/media/MediaFile$MediaFileType;,
    .end local v9       #values:Landroid/content/ContentValues;,
    :cond_67
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v8, testFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_29

    .line 1503
    const/4 v3, 0x1

    goto :goto_29

    .line 1513
    .end local v8       #testFile:Ljava/io/File;,
    .restart local v6       #mediaFileType:Landroid/media/MediaFile$MediaFileType;,
    :cond_74
    iget v10, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v4, v10

    goto :goto_33

    .line 1529
    .restart local v4       #fileType:I,
    :cond_78
    iget-object v10, v1, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    iget-wide v11, v1, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 1539
    .end local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;,
    .end local v3       #fileMissing:Z,
    .end local v4       #fileType:I,
    .end local v6       #mediaFileType:Landroid/media/MediaFile$MediaFileType;,
    .end local v7       #path:Ljava/lang/String;,
    :cond_8f
    :try_start_8f
    iget-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v10, v0}, Landroid/content/IContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_bd

    .line 1547
    iget-boolean v10, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v10, :cond_9b

    .line 1548
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1551
    :cond_9b
    iget v10, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-nez v10, :cond_b0

    iget-object v10, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v11, "external"

    invoke-static {v11}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 1552
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1555
    :cond_b0
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 1556
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1557
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1558
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1559
    :goto_bc
    return-void

    .line 1540
    :catch_bd
    move-exception v10

    move-object v2, v10

    .line 1541
    .local v2, ex:Ljava/lang/Exception;
    const-string v10, "MediaScanner"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bc
.end method

.method private prescan(Ljava/lang/String;)V
    .registers 17
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1271
    const/4 v12, 0x0

    .line 1272
    .local v12, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1273
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1275
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-nez v0, :cond_71

    .line 1276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1280
    :goto_e
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v0, :cond_77

    .line 1281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1289
    :goto_19
    if-eqz p1, :cond_24

    .line 1290
    :try_start_1b
    const-string v3, "_data=?"

    .line 1291
    const/4 v0, 0x1

    new-array v14, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v14, v0

    .end local v4       #selectionArgs:[Ljava/lang/String;,
    .local v14, selectionArgs:[Ljava/lang/String;
    move-object v4, v14

    .line 1293
    .end local v14       #selectionArgs:[Ljava/lang/String;,
    .restart local v4       #selectionArgs:[Ljava/lang/String;,
    :cond_24
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_6a

    move-result-object v12

    .line 1295
    if-eqz v12, :cond_81

    .line 1297
    :cond_31
    :goto_31
    :try_start_31
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1298
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1299
    .local v7, rowId:J
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1300
    .local v9, path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1305
    .local v10, lastModified:J
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1306
    move-object v13, v9

    .line 1307
    .local v13, key:Ljava/lang/String;
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_57

    .line 1308
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1310
    :cond_57
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    iget-object v6, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_31 .. :try_end_63} :catchall_64

    goto :goto_31

    .line 1315
    .end local v7       #rowId:J,
    .end local v9       #path:Ljava/lang/String;,
    .end local v10       #lastModified:J,
    .end local v13       #key:Ljava/lang/String;,
    :catchall_64
    move-exception v0

    :try_start_65
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1316
    const/4 v12, 0x0

    throw v0
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6a

    .line 1422
    :catchall_6a
    move-exception v0

    if-eqz v12, :cond_70

    .line 1423
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_70
    throw v0

    .line 1278
    :cond_71
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_e

    .line 1283
    :cond_77
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_19

    .line 1315
    :cond_7d
    :try_start_7d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1316
    const/4 v12, 0x0

    .line 1321
    :cond_81
    if-eqz p1, :cond_cb

    .line 1322
    const-string v3, "_data=?"

    .line 1326
    :goto_85
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8f
    .catchall {:try_start_7d .. :try_end_8f} :catchall_6a

    move-result-object v12

    .line 1328
    if-eqz v12, :cond_d1

    .line 1330
    :cond_92
    :goto_92
    :try_start_92
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1331
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1332
    .restart local v7       #rowId:J,
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1333
    .restart local v9       #path:Ljava/lang/String;,
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1338
    .restart local v10       #lastModified:J,
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1339
    move-object v13, v9

    .line 1340
    .restart local v13       #key:Ljava/lang/String;,
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_b8

    .line 1341
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1343
    :cond_b8
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    iget-object v6, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c4
    .catchall {:try_start_92 .. :try_end_c4} :catchall_c5

    goto :goto_92

    .line 1348
    .end local v7       #rowId:J,
    .end local v9       #path:Ljava/lang/String;,
    .end local v10       #lastModified:J,
    .end local v13       #key:Ljava/lang/String;,
    :catchall_c5
    move-exception v0

    :try_start_c6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1349
    const/4 v12, 0x0

    throw v0

    .line 1324
    :cond_cb
    const/4 v3, 0x0

    goto :goto_85

    .line 1348
    :cond_cd
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1349
    const/4 v12, 0x0

    .line 1354
    :cond_d1
    if-eqz p1, :cond_124

    .line 1355
    const-string v3, "_data=?"

    .line 1359
    :goto_d5
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1360
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e2
    .catchall {:try_start_c6 .. :try_end_e2} :catchall_6a

    move-result-object v12

    .line 1362
    if-eqz v12, :cond_12a

    .line 1364
    :try_start_e5
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1365
    :cond_eb
    :goto_eb
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1366
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1367
    .restart local v7       #rowId:J,
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1368
    .restart local v9       #path:Ljava/lang/String;,
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1373
    .restart local v10       #lastModified:J,
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1374
    move-object v13, v9

    .line 1375
    .restart local v13       #key:Ljava/lang/String;,
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_111

    .line 1376
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1378
    :cond_111
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    iget-object v6, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11d
    .catchall {:try_start_e5 .. :try_end_11d} :catchall_11e

    goto :goto_eb

    .line 1383
    .end local v7       #rowId:J,
    .end local v9       #path:Ljava/lang/String;,
    .end local v10       #lastModified:J,
    .end local v13       #key:Ljava/lang/String;,
    :catchall_11e
    move-exception v0

    :try_start_11f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1384
    const/4 v12, 0x0

    throw v0

    .line 1357
    :cond_124
    const/4 v3, 0x0

    goto :goto_d5

    .line 1383
    :cond_126
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1384
    const/4 v12, 0x0

    .line 1388
    :cond_12a
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_17e

    .line 1390
    if-eqz p1, :cond_178

    .line 1391
    const-string v3, "_data=?"

    .line 1395
    :goto_132
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13c
    .catchall {:try_start_11f .. :try_end_13c} :catchall_6a

    move-result-object v12

    .line 1397
    if-eqz v12, :cond_17e

    .line 1399
    :cond_13f
    :goto_13f
    :try_start_13f
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 1400
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1402
    .restart local v9       #path:Ljava/lang/String;,
    if-eqz v9, :cond_13f

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13f

    .line 1403
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1404
    .restart local v7       #rowId:J,
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1406
    .restart local v10       #lastModified:J,
    move-object v13, v9

    .line 1407
    .restart local v13       #key:Ljava/lang/String;,
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_165

    .line 1408
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1410
    :cond_165
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_171
    .catchall {:try_start_13f .. :try_end_171} :catchall_172

    goto :goto_13f

    .line 1415
    .end local v7       #rowId:J,
    .end local v9       #path:Ljava/lang/String;,
    .end local v10       #lastModified:J,
    .end local v13       #key:Ljava/lang/String;,
    :catchall_172
    move-exception v0

    :try_start_173
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1416
    const/4 v12, 0x0

    throw v0

    .line 1393
    :cond_178
    const/4 v3, 0x0

    goto :goto_132

    .line 1415
    :cond_17a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_17d
    .catchall {:try_start_173 .. :try_end_17d} :catchall_6a

    .line 1416
    const/4 v12, 0x0

    .line 1422
    :cond_17e
    if-eqz v12, :cond_183

    .line 1423
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1426
    :cond_183
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 15
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1813
    const/4 v8, 0x0

    .line 1815
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1816
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1817
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v9, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_6f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_57

    .line 1819
    .end local v8       #reader:Ljava/io/BufferedReader;,
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1820
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1821
    .local v5, index:I
    :goto_22
    if-eqz v1, :cond_47

    .line 1823
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_42

    .line 1824
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1825
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1826
    add-int/lit8 v5, v5, 0x1

    .line 1828
    :cond_42
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_45} :catch_82

    move-result-object v1

    goto :goto_22

    :cond_47
    move-object v8, v9

    .line 1835
    .end local v1       #line:Ljava/lang/String;,
    .end local v5       #index:I,
    .end local v9       #reader:Ljava/io/BufferedReader;,
    .restart local v8       #reader:Ljava/io/BufferedReader;,
    :cond_48
    if-eqz v8, :cond_4d

    .line 1836
    :try_start_4a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 1841
    .end local v7       #f:Ljava/io/File;,
    :cond_4d
    :goto_4d
    return-void

    .line 1837
    .restart local v7       #f:Ljava/io/File;,
    :catch_4e
    move-exception v6

    .line 1838
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 1831
    .end local v6       #e:Ljava/io/IOException;,
    .end local v7       #f:Ljava/io/File;,
    :catch_57
    move-exception v0

    move-object v6, v0

    .line 1832
    .restart local v6       #e:Ljava/io/IOException;,
    :goto_59
    :try_start_59
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_6f

    .line 1835
    if-eqz v8, :cond_4d

    .line 1836
    :try_start_62
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_4d

    .line 1837
    :catch_66
    move-exception v6

    .line 1838
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 1834
    .end local v6       #e:Ljava/io/IOException;,
    :catchall_6f
    move-exception v0

    .line 1835
    :goto_70
    if-eqz v8, :cond_75

    .line 1836
    :try_start_72
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 1839
    :cond_75
    :goto_75
    throw v0

    .line 1837
    :catch_76
    move-exception v6

    .line 1838
    .restart local v6       #e:Ljava/io/IOException;,
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 1834
    .end local v6       #e:Ljava/io/IOException;,
    .end local v8       #reader:Ljava/io/BufferedReader;,
    .restart local v7       #f:Ljava/io/File;,
    .restart local v9       #reader:Ljava/io/BufferedReader;,
    :catchall_7f
    move-exception v0

    move-object v8, v9

    .end local v9       #reader:Ljava/io/BufferedReader;,
    .restart local v8       #reader:Ljava/io/BufferedReader;,
    goto :goto_70

    .line 1831
    .end local v8       #reader:Ljava/io/BufferedReader;,
    .restart local v9       #reader:Ljava/io/BufferedReader;,
    :catch_82
    move-exception v0

    move-object v6, v0

    move-object v8, v9

    .end local v9       #reader:Ljava/io/BufferedReader;,
    .restart local v8       #reader:Ljava/io/BufferedReader;,
    goto :goto_59
.end method

.method private processPlayLists()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1941
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_9
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_185

    .line 1942
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1943
    .local v12, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object v0, v12

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1946
    .local v19, path:Ljava/lang/String;
    iget-boolean v5, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v5, :cond_9

    .line 1947
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1948
    .local v24, values:Landroid/content/ContentValues;
    const/16 v5, 0x2f

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1949
    .local v16, lastSlash:I
    if-gez v16, :cond_4a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1951
    :cond_4a
    move-object v0, v12

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v21, v0

    .line 1952
    .local v21, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v21, v7

    if-nez v5, :cond_113

    .line 1955
    const/16 v5, 0x2e

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1956
    .local v15, lastDot:I
    if-gez v15, :cond_105

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    .line 1957
    .local v18, name:Ljava/lang/String;
    :goto_6b
    const-string/jumbo v5, "name"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const-string v5, "_data"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    const-string v5, "date_modified"

    iget-wide v7, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 1961
    .local v23, uri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 1962
    const-string v5, "members"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1975
    .end local v15       #lastDot:I,
    .end local v18       #name:Ljava/lang/String;,
    .local v6, membersUri:Landroid/net/Uri;
    :goto_ae
    const/4 v5, 0x0

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1976
    .local v20, playListDirectory:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v17

    .line 1977
    .local v17, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v17, :cond_154

    const/4 v5, 0x0

    move v13, v5

    .line 1979
    .local v13, fileType:I
    :goto_c1
    const/16 v5, 0x29

    if-ne v13, v5, :cond_15c

    .line 1980
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1986
    :cond_d1
    :goto_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    sget-object v7, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1989
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_e7

    :try_start_e1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_fe

    .line 1990
    :cond_e7
    const-string v5, "MediaScanner"

    const-string/jumbo v6, "playlist is empty - deleting"

    .end local v6       #membersUri:Landroid/net/Uri;,
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_e1 .. :try_end_fe} :catchall_17e

    .line 1994
    :cond_fe
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 1956
    .end local v11       #cursor:Landroid/database/Cursor;,
    .end local v13       #fileType:I,
    .end local v17       #mediaFileType:Landroid/media/MediaFile$MediaFileType;,
    .end local v20       #playListDirectory:Ljava/lang/String;,
    .end local v23       #uri:Landroid/net/Uri;,
    .restart local v15       #lastDot:I,
    :cond_105
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    goto/16 :goto_6b

    .line 1964
    .end local v15       #lastDot:I,
    :cond_113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1967
    .restart local v23       #uri:Landroid/net/Uri;,
    const-string v5, "date_modified"

    iget-wide v7, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1971
    const-string v5, "members"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1972
    .restart local v6       #membersUri:Landroid/net/Uri;,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 1977
    .restart local v17       #mediaFileType:Landroid/media/MediaFile$MediaFileType;,
    .restart local v20       #playListDirectory:Ljava/lang/String;,
    :cond_154
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v5, v0

    move v13, v5

    goto/16 :goto_c1

    .line 1981
    .restart local v13       #fileType:I,
    :cond_15c
    const/16 v5, 0x2a

    if-ne v13, v5, :cond_16e

    .line 1982
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_d1

    .line 1983
    :cond_16e
    const/16 v5, 0x2b

    if-ne v13, v5, :cond_d1

    .line 1984
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_d1

    .line 1994
    .end local v6       #membersUri:Landroid/net/Uri;,
    .restart local v11       #cursor:Landroid/database/Cursor;,
    :catchall_17e
    move-exception v5

    if-eqz v11, :cond_184

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_184
    throw v5

    .line 1998
    .end local v11       #cursor:Landroid/database/Cursor;,
    .end local v12       #entry:Landroid/media/MediaScanner$FileCacheEntry;,
    .end local v13       #fileType:I,
    .end local v16       #lastSlash:I,
    .end local v17       #mediaFileType:Landroid/media/MediaFile$MediaFileType;,
    .end local v19       #path:Ljava/lang/String;,
    .end local v20       #playListDirectory:Ljava/lang/String;,
    .end local v21       #rowId:J,
    .end local v23       #uri:Landroid/net/Uri;,
    .end local v24       #values:Landroid/content/ContentValues;,
    :cond_185
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 17
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1844
    const/4 v10, 0x0

    .line 1846
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1848
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_77
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_5f

    .line 1850
    .end local v10       #reader:Ljava/io/BufferedReader;,
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1851
    .local v9, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1852
    .local v5, index:I
    :goto_22
    if-eqz v9, :cond_4f

    .line 1854
    const-string v0, "File"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1855
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1856
    .local v7, equals:I
    if-lez v7, :cond_4a

    .line 1857
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1858
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1859
    add-int/lit8 v5, v5, 0x1

    .line 1862
    .end local v7       #equals:I,
    :cond_4a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_87
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4d} :catch_8a

    move-result-object v9

    goto :goto_22

    :cond_4f
    move-object v10, v11

    .line 1869
    .end local v5       #index:I,
    .end local v9       #line:Ljava/lang/String;,
    .end local v11       #reader:Ljava/io/BufferedReader;,
    .restart local v10       #reader:Ljava/io/BufferedReader;,
    :cond_50
    if-eqz v10, :cond_55

    .line 1870
    :try_start_52
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 1875
    .end local v8       #f:Ljava/io/File;,
    :cond_55
    :goto_55
    return-void

    .line 1871
    .restart local v8       #f:Ljava/io/File;,
    :catch_56
    move-exception v6

    .line 1872
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1865
    .end local v6       #e:Ljava/io/IOException;,
    .end local v8       #f:Ljava/io/File;,
    :catch_5f
    move-exception v0

    move-object v6, v0

    .line 1866
    .restart local v6       #e:Ljava/io/IOException;,
    :goto_61
    :try_start_61
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_77

    .line 1869
    if-eqz v10, :cond_55

    .line 1870
    :try_start_6a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_55

    .line 1871
    :catch_6e
    move-exception v6

    .line 1872
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1868
    .end local v6       #e:Ljava/io/IOException;,
    :catchall_77
    move-exception v0

    .line 1869
    :goto_78
    if-eqz v10, :cond_7d

    .line 1870
    :try_start_7a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 1873
    :cond_7d
    :goto_7d
    throw v0

    .line 1871
    :catch_7e
    move-exception v6

    .line 1872
    .restart local v6       #e:Ljava/io/IOException;,
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 1868
    .end local v6       #e:Ljava/io/IOException;,
    .end local v10       #reader:Ljava/io/BufferedReader;,
    .restart local v8       #f:Ljava/io/File;,
    .restart local v11       #reader:Ljava/io/BufferedReader;,
    :catchall_87
    move-exception v0

    move-object v10, v11

    .end local v11       #reader:Ljava/io/BufferedReader;,
    .restart local v10       #reader:Ljava/io/BufferedReader;,
    goto :goto_78

    .line 1865
    .end local v10       #reader:Ljava/io/BufferedReader;,
    .restart local v11       #reader:Ljava/io/BufferedReader;,
    :catch_8a
    move-exception v0

    move-object v6, v0

    move-object v10, v11

    .end local v11       #reader:Ljava/io/BufferedReader;,
    .restart local v10       #reader:Ljava/io/BufferedReader;,
    goto :goto_61
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 12
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    const-string v7, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    .line 1917
    const/4 v2, 0x0

    .line 1919
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1920
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1921
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_5f
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_15} :catch_37
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_4b

    .line 1923
    .end local v2       #fis:Ljava/io/FileInputStream;,
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_15
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_6f
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_27} :catch_76
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_72

    move-object v2, v3

    .line 1931
    .end local v3       #fis:Ljava/io/FileInputStream;,
    .restart local v2       #fis:Ljava/io/FileInputStream;,
    :cond_28
    if-eqz v2, :cond_2d

    .line 1932
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 1937
    .end local v1       #f:Ljava/io/File;,
    :cond_2d
    :goto_2d
    return-void

    .line 1933
    .restart local v1       #f:Ljava/io/File;,
    :catch_2e
    move-exception v0

    .line 1934
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 1925
    .end local v0       #e:Ljava/io/IOException;,
    .end local v1       #f:Ljava/io/File;,
    :catch_37
    move-exception v4

    move-object v0, v4

    .line 1926
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_39
    :try_start_39
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5f

    .line 1931
    if-eqz v2, :cond_2d

    .line 1932
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_2d

    .line 1933
    :catch_42
    move-exception v0

    .line 1934
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 1927
    .end local v0       #e:Ljava/io/IOException;,
    :catch_4b
    move-exception v4

    move-object v0, v4

    .line 1928
    .restart local v0       #e:Ljava/io/IOException;,
    :goto_4d
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5f

    .line 1931
    if-eqz v2, :cond_2d

    .line 1932
    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_2d

    .line 1933
    :catch_56
    move-exception v0

    .line 1934
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 1930
    .end local v0       #e:Ljava/io/IOException;,
    :catchall_5f
    move-exception v4

    .line 1931
    :goto_60
    if-eqz v2, :cond_65

    .line 1932
    :try_start_62
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 1935
    :cond_65
    :goto_65
    throw v4

    .line 1933
    :catch_66
    move-exception v0

    .line 1934
    .restart local v0       #e:Ljava/io/IOException;,
    const-string v5, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 1930
    .end local v0       #e:Ljava/io/IOException;,
    .end local v2       #fis:Ljava/io/FileInputStream;,
    .restart local v1       #f:Ljava/io/File;,
    .restart local v3       #fis:Ljava/io/FileInputStream;,
    :catchall_6f
    move-exception v4

    move-object v2, v3

    .end local v3       #fis:Ljava/io/FileInputStream;,
    .restart local v2       #fis:Ljava/io/FileInputStream;,
    goto :goto_60

    .line 1927
    .end local v2       #fis:Ljava/io/FileInputStream;,
    .restart local v3       #fis:Ljava/io/FileInputStream;,
    :catch_72
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3       #fis:Ljava/io/FileInputStream;,
    .restart local v2       #fis:Ljava/io/FileInputStream;,
    goto :goto_4d

    .line 1925
    .end local v2       #fis:Ljava/io/FileInputStream;,
    .restart local v3       #fis:Ljava/io/FileInputStream;,
    :catch_76
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3       #fis:Ljava/io/FileInputStream;,
    .restart local v2       #fis:Ljava/io/FileInputStream;,
    goto :goto_39
.end method

.method private pruneDeadThumbnailFiles()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    const-string v0, "MediaScanner"

    .line 1438
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1439
    .local v8, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "/sdcard/DCIM/.thumbnails"

    .line 1440
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 1441
    .local v10, files:[Ljava/lang/String;
    if-nez v10, :cond_17

    .line 1442
    new-array v10, v1, [Ljava/lang/String;

    .line 1444
    :cond_17
    const/4 v12, 0x0

    .local v12, i:I
    :goto_18
    array-length v0, v10

    if-ge v12, v0, :cond_3a

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1446
    .local v11, fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1444
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 1450
    .end local v11       #fullPathString:Ljava/lang/String;,
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1456
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    if-eqz v6, :cond_7c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1459
    :cond_6e
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1460
    .restart local v11       #fullPathString:Ljava/lang/String;,
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1461
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1464
    .end local v11       #fullPathString:Ljava/lang/String;,
    :cond_7c
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_80
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_8c} :catch_b5

    .line 1468
    .local v9, fileToDelete:Ljava/lang/String;
    :try_start_8c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_94
    .catch Ljava/lang/SecurityException; {:try_start_8c .. :try_end_94} :catch_95
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_94} :catch_b5

    goto :goto_80

    .line 1469
    :catch_95
    move-exception v0

    goto :goto_80

    .line 1473
    .end local v9       #fileToDelete:Ljava/lang/String;,
    :cond_97
    :try_start_97
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    if-eqz v6, :cond_b4

    .line 1475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_b4} :catch_b5

    .line 1480
    .end local v6       #c:Landroid/database/Cursor;,
    .end local v13       #i$:Ljava/util/Iterator;,
    :cond_b4
    :goto_b4
    return-void

    .line 1477
    :catch_b5
    move-exception v0

    goto :goto_b4
.end method

.method private setDefaultRingtoneFileNames()V
    .registers 2

    .prologue
    .line 491
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 493
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 495
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 497
    return-void
.end method


# virtual methods
.method public database_batch_update()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 137
    :try_start_1
    iget-object v9, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v10, p0, Landroid/media/MediaScanner;->cpOperations:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Landroid/content/IContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 139
    .local v0, cpr:[Landroid/content/ContentProviderResult;
    const/4 v3, 0x0

    .line 140
    .local v3, i:I
    iget-object v9, p0, Landroid/media/MediaScanner;->entryList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$FileCacheEntry;

    .line 143
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v1, :cond_4b

    .line 144
    aget-object v9, v0, v3

    iget-object v9, v9, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 145
    .local v5, rowId:J
    iput-wide v5, v1, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 148
    iget-object v9, p0, Landroid/media/MediaScanner;->genreUriList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4b

    iget-object v9, p0, Landroid/media/MediaScanner;->genreRowIDList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_4b

    .line 149
    iget-object v9, p0, Landroid/media/MediaScanner;->genreRowIDList:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v5       #rowId:J,
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 154
    .end local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;,
    :cond_4e
    iget-object v9, p0, Landroid/media/MediaScanner;->cpOperations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v3, 0x0

    .line 156
    iget-object v9, p0, Landroid/media/MediaScanner;->genreUriList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 159
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_8b

    .line 161
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "audio_id"

    iget-object v9, p0, Landroid/media/MediaScanner;->genreRowIDList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    iget-object v9, p0, Landroid/media/MediaScanner;->cpOperations:Ljava/util/ArrayList;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v8       #values:Landroid/content/ContentValues;,
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 168
    .end local v7       #uri:Landroid/net/Uri;,
    :cond_8e
    iget-object v9, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v10, p0, Landroid/media/MediaScanner;->cpOperations:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Landroid/content/IContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_95
    .catchall {:try_start_1 .. :try_end_95} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_95} :catch_a2

    .line 173
    iget v9, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    iget v10, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    .line 174
    iput v13, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    .line 175
    invoke-direct {p0}, Landroid/media/MediaScanner;->clearBuffer()V

    .line 177
    .end local v0       #cpr:[Landroid/content/ContentProviderResult;,
    .end local v3       #i:I,
    .end local v4       #i$:Ljava/util/Iterator;,
    :goto_a1
    return-void

    .line 169
    :catch_a2
    move-exception v9

    move-object v2, v9

    .line 170
    .local v2, ex:Ljava/lang/Exception;
    :try_start_a4
    const-string v9, "MediaScanner"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_b6

    .line 173
    iget v9, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    iget v10, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    .line 174
    iput v13, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    .line 175
    invoke-direct {p0}, Landroid/media/MediaScanner;->clearBuffer()V

    goto :goto_a1

    .line 173
    .end local v2       #ex:Ljava/lang/Exception;,
    :catchall_b6
    move-exception v9

    iget v10, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    iget v11, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    add-int/2addr v10, v11

    iput v10, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    .line 174
    iput v13, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    .line 175
    invoke-direct {p0}, Landroid/media/MediaScanner;->clearBuffer()V

    throw v9
.end method

.method public deleteSingleFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .parameter "filePath"
    .parameter "mMimeType"

    .prologue
    .line 1644
    const/4 v12, 0x0

    .line 1645
    .local v12, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1646
    .local v2, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1647
    .local v7, mFileType:I
    const/4 v13, 0x0

    .local v13, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1648
    .local v10, selectionArgs:[Ljava/lang/String;
    if-nez p2, :cond_14

    .line 1649
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v8

    .line 1650
    .local v8, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v8, :cond_14

    .line 1651
    iget v7, v8, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 1652
    move-object v0, v8

    iget-object v0, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 1657
    .end local v8       #mediaFileType:Landroid/media/MediaFile$MediaFileType;,
    :cond_14
    invoke-static {v7}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    .line 1658
    .local v4, isAudio:Z
    invoke-static {v7}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    .line 1659
    .local v6, isVideo:Z
    invoke-static {v7}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v5

    .line 1660
    .local v5, isImage:Z
    if-eqz v6, :cond_4a

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object v12, v0

    .line 1662
    const-string v13, "_data=?"

    .line 1674
    :goto_29
    if-eqz p1, :cond_32

    .line 1675
    const/4 v14, 0x1

    :try_start_2c
    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p1, v11, v14

    .end local v10       #selectionArgs:[Ljava/lang/String;,
    .local v11, selectionArgs:[Ljava/lang/String;
    move-object v10, v11

    .line 1677
    .end local v11       #selectionArgs:[Ljava/lang/String;,
    .restart local v10       #selectionArgs:[Ljava/lang/String;,
    :cond_32
    const/4 v9, 0x0

    .line 1678
    .local v9, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v14, v0

    invoke-interface {v14, v12, v13, v10}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1679
    if-nez v9, :cond_5e

    .line 1685
    :goto_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_49} :catch_77

    .line 1690
    .end local v9       #result:I,
    :cond_49
    :goto_49
    return-void

    .line 1663
    :cond_4a
    if-eqz v5, :cond_54

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v12, v0

    .line 1665
    const-string v13, "_data=?"

    goto :goto_29

    .line 1666
    :cond_54
    if-eqz v4, :cond_49

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v12, v0

    .line 1668
    const-string v13, "_data=?"

    goto :goto_29

    .line 1682
    .restart local v9       #result:I,
    :cond_5e
    :try_start_5e
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " deleteSingleFile : File deleted from DB successfully = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_76} :catch_77

    goto :goto_3e

    .line 1687
    .end local v9       #result:I,
    :catch_77
    move-exception v14

    move-object v3, v14

    .line 1688
    .local v3, ee:Ljava/lang/Exception;
    const-string v14, "MediaScanner"

    const-string v15, "Exception in MediaScanner.deleteSingleFile()"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 2025
    iget-boolean v0, p0, Landroid/media/MediaScanner;->isFinalized:Z

    if-nez v0, :cond_15

    .line 2027
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2028
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2029
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaScanner;->isFinalized:Z

    .line 2031
    :cond_15
    return-void
.end method

.method public finalizeImmediately()V
    .registers 3

    .prologue
    .line 2033
    iget-boolean v0, p0, Landroid/media/MediaScanner;->isFinalized:Z

    if-nez v0, :cond_15

    .line 2035
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2036
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaScanner;->isFinalized:Z

    .line 2039
    :cond_15
    return-void
.end method

.method public getUpdatedFileSize_database_batch_update()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    return v0
.end method

.method public init_database_batch_update()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Landroid/media/MediaScanner;->clearBuffer()V

    .line 184
    iput v0, p0, Landroid/media/MediaScanner;->nUpdatedFiles:I

    .line 185
    iput v0, p0, Landroid/media/MediaScanner;->nFilesForUpdate:I

    .line 186
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 1585
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1586
    .local v14, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1587
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 1588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1591
    .local v10, prescan:J
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->setScanningForBatch(Z)V

    .line 1592
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaScanner;->init_database_batch_update()V

    .line 1598
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 1599
    .local v7, ext1path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalAddStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1601
    .local v8, ext2path:Ljava/lang/String;
    const-wide/16 v16, 0x0

    sput-wide v16, Landroid/media/MediaScanner;->mPreUpdateTime:J

    .line 1603
    const/16 v16, 0x0

    sput v16, Landroid/media/MediaScanner;->mNumScanfiles:I

    .line 1604
    const/16 v16, -0x1

    sput v16, Landroid/media/MediaScanner;->mNumTotalfiles:I

    .line 1605
    const/16 v16, -0x1

    sput v16, Landroid/media/MediaScanner;->mPercent:I

    .line 1606
    const/16 v16, 0x0

    aget-object v16, p1, v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5e

    const/16 v16, 0x0

    aget-object v16, p1, v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_70

    .line 1607
    :cond_5e
    const/16 v16, 0x0

    aget-object v16, p1, v16

    sget-object v17, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->native_getNumFiles(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    sput v16, Landroid/media/MediaScanner;->mNumTotalfiles:I

    .line 1611
    :cond_70
    const/4 v9, 0x0

    .local v9, i:I
    :goto_71
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_93

    .line 1612
    aget-object v16, p1, v9

    sget-object v17, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1611
    add-int/lit8 v9, v9, 0x1

    goto :goto_71

    .line 1616
    :cond_93
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaScanner;->database_batch_update()V

    .line 1617
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->setScanningForBatch(Z)V

    .line 1620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1621
    .local v12, scan:J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1625
    .local v5, end:J
    const-string v16, "MediaScanner"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " prescan time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v18, v10, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const-string v16, "MediaScanner"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    scan time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v18, v12, v10

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const-string v16, "MediaScanner"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "postscan time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v18, v5, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const-string v16, "MediaScanner"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "   total time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v18, v5, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_12b} :catch_12c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_12b} :catch_13c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12b} :catch_14c

    .line 1639
    .end local v5       #end:J,
    .end local v7       #ext1path:Ljava/lang/String;,
    .end local v8       #ext2path:Ljava/lang/String;,
    .end local v9       #i:I,
    .end local v10       #prescan:J,
    .end local v12       #scan:J,
    .end local v14       #start:J,
    :goto_12b
    return-void

    .line 1630
    :catch_12c
    move-exception v16

    move-object/from16 v4, v16

    .line 1632
    .local v4, e:Landroid/database/SQLException;
    const-string v16, "MediaScanner"

    const-string v17, "SQLException in MediaScanner.scan()"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12b

    .line 1633
    .end local v4       #e:Landroid/database/SQLException;,
    :catch_13c
    move-exception v16

    move-object/from16 v4, v16

    .line 1635
    .local v4, e:Ljava/lang/UnsupportedOperationException;
    const-string v16, "MediaScanner"

    const-string v17, "UnsupportedOperationException in MediaScanner.scan()"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12b

    .line 1636
    .end local v4       #e:Ljava/lang/UnsupportedOperationException;,
    :catch_14c
    move-exception v16

    move-object/from16 v4, v16

    .line 1637
    .local v4, e:Landroid/os/RemoteException;
    const-string v16, "MediaScanner"

    const-string v17, "RemoteException in MediaScanner.scan()"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12b
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 16
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    const/4 v10, 0x0

    const-string v11, "MediaScanner"

    .line 1697
    :try_start_3
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1698
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 1700
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1702
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1703
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is either corrupt or does not exist. Deleting the file from DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaScanner;->deleteSingleFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    const/4 v9, 0x0

    move-object v0, v10

    .line 1717
    .end local v9       #file:Ljava/io/File;,
    :goto_37
    return-object v0

    .line 1713
    .restart local v9       #file:Ljava/io/File;,
    :cond_38
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_4c} :catch_4e

    move-result-object v0

    goto :goto_37

    .line 1715
    .end local v9       #file:Ljava/io/File;,
    :catch_4e
    move-exception v0

    move-object v8, v0

    .line 1716
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v0, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v11, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 1717
    goto :goto_37
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method

.method public setScanningForBatch(Z)V
    .registers 2
    .parameter "_bScanningForBatch"

    .prologue
    .line 179
    iput-boolean p1, p0, Landroid/media/MediaScanner;->bScanningForBatch:Z

    .line 180
    return-void
.end method
