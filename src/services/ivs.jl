# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: ivs
using AWS.Compat
using AWS.UUIDs

"""
    batch_get_channel(arns)
    batch_get_channel(arns, params::Dict{String,<:Any})

Performs GetChannel on multiple ARNs simultaneously.

# Arguments
- `arns`: Array of ARNs, one per channel.

"""
batch_get_channel(arns; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/BatchGetChannel", Dict{String, Any}("arns"=>arns); aws_config=aws_config)
batch_get_channel(arns, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/BatchGetChannel", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arns"=>arns), params)); aws_config=aws_config)

"""
    batch_get_stream_key(arns)
    batch_get_stream_key(arns, params::Dict{String,<:Any})

Performs GetStreamKey on multiple ARNs simultaneously.

# Arguments
- `arns`: Array of ARNs, one per channel.

"""
batch_get_stream_key(arns; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/BatchGetStreamKey", Dict{String, Any}("arns"=>arns); aws_config=aws_config)
batch_get_stream_key(arns, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/BatchGetStreamKey", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arns"=>arns), params)); aws_config=aws_config)

"""
    create_channel()
    create_channel(params::Dict{String,<:Any})

Creates a new channel and an associated stream key to start streaming.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authorized"`: Whether the channel is authorized. Default: false.
- `"latencyMode"`: Channel latency mode. Default: LOW.
- `"name"`: Channel name.
- `"tags"`: See Channeltags.
- `"type"`: Channel type, which determines the allowable resolution and bitrate. If you
  exceed the allowable resolution or bitrate, the stream probably will disconnect
  immediately. Valid values:    STANDARD: Multiple qualities are generated from the original
  input, to automatically give viewers the best experience for their devices and network
  conditions. Vertical resolution can be up to 1080 and bitrate can be up to 8.5 Mbps.
  BASIC: Amazon IVS delivers the original input to viewers. The viewer’s video-quality
  choice is limited to the original input. Vertical resolution can be up to 480 and bitrate
  can be up to 1.5 Mbps.   Default: STANDARD.
"""
create_channel(; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/CreateChannel"; aws_config=aws_config)
create_channel(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/CreateChannel", params; aws_config=aws_config)

"""
    create_stream_key(channel_arn)
    create_stream_key(channel_arn, params::Dict{String,<:Any})

Creates a stream key, used to initiate a stream, for the specified channel ARN. Note that
CreateChannel creates a stream key. If you subsequently use CreateStreamKey on the same
channel, it will fail because a stream key already exists and there is a limit of 1 stream
key per channel. To reset the stream key on a channel, use DeleteStreamKey and then
CreateStreamKey.

# Arguments
- `channel_arn`: ARN of the channel for which to create the stream key.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`: See Channeltags.
"""
create_stream_key(channelArn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/CreateStreamKey", Dict{String, Any}("channelArn"=>channelArn); aws_config=aws_config)
create_stream_key(channelArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/CreateStreamKey", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("channelArn"=>channelArn), params)); aws_config=aws_config)

"""
    delete_channel(arn)
    delete_channel(arn, params::Dict{String,<:Any})

Deletes the specified channel and its associated stream keys.

# Arguments
- `arn`: ARN of the channel to be deleted.

"""
delete_channel(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/DeleteChannel", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
delete_channel(arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/DeleteChannel", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    delete_playback_key_pair(arn)
    delete_playback_key_pair(arn, params::Dict{String,<:Any})

Deletes a specified authorization key pair. This invalidates future viewer tokens generated
using the key pair’s privateKey.

# Arguments
- `arn`: ARN of the key pair to be deleted.

"""
delete_playback_key_pair(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/DeletePlaybackKeyPair", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
delete_playback_key_pair(arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/DeletePlaybackKeyPair", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    delete_stream_key(arn)
    delete_stream_key(arn, params::Dict{String,<:Any})

Deletes the stream key for the specified ARN, so it can no longer be used to stream.

# Arguments
- `arn`: ARN of the stream key to be deleted.

"""
delete_stream_key(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/DeleteStreamKey", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
delete_stream_key(arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/DeleteStreamKey", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    get_channel(arn)
    get_channel(arn, params::Dict{String,<:Any})

Gets the channel configuration for the specified channel ARN. See also BatchGetChannel.

# Arguments
- `arn`: ARN of the channel for which the configuration is to be retrieved.

"""
get_channel(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/GetChannel", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
get_channel(arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/GetChannel", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    get_playback_key_pair(arn)
    get_playback_key_pair(arn, params::Dict{String,<:Any})

Gets a specified playback authorization key pair and returns the arn and fingerprint. The
privateKey held by the caller can be used to generate viewer authorization tokens, to grant
viewers access to authorized channels.

# Arguments
- `arn`: ARN of the key pair to be returned.

"""
get_playback_key_pair(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/GetPlaybackKeyPair", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
get_playback_key_pair(arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/GetPlaybackKeyPair", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    get_stream(channel_arn)
    get_stream(channel_arn, params::Dict{String,<:Any})

Gets information about the active (live) stream on a specified channel.

# Arguments
- `channel_arn`: Channel ARN for stream to be accessed.

"""
get_stream(channelArn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/GetStream", Dict{String, Any}("channelArn"=>channelArn); aws_config=aws_config)
get_stream(channelArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/GetStream", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("channelArn"=>channelArn), params)); aws_config=aws_config)

"""
    get_stream_key(arn)
    get_stream_key(arn, params::Dict{String,<:Any})

Gets stream-key information for a specified ARN.

# Arguments
- `arn`: ARN for the stream key to be retrieved.

"""
get_stream_key(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/GetStreamKey", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
get_stream_key(arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/GetStreamKey", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    import_playback_key_pair(public_key_material)
    import_playback_key_pair(public_key_material, params::Dict{String,<:Any})

Imports the public portion of a new key pair and returns its arn and fingerprint. The
privateKey can then be used to generate viewer authorization tokens, to grant viewers
access to authorized channels.

# Arguments
- `public_key_material`: The public portion of a customer-generated key pair.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"name"`: An arbitrary string (a nickname) assigned to a playback key pair that helps the
  customer identify that resource. The value does not need to be unique.
- `"tags"`: Any tags provided with the request are added to the playback key pair tags.
"""
import_playback_key_pair(publicKeyMaterial; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ImportPlaybackKeyPair", Dict{String, Any}("publicKeyMaterial"=>publicKeyMaterial); aws_config=aws_config)
import_playback_key_pair(publicKeyMaterial, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ImportPlaybackKeyPair", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("publicKeyMaterial"=>publicKeyMaterial), params)); aws_config=aws_config)

"""
    list_channels()
    list_channels(params::Dict{String,<:Any})

Gets summary information about all channels in your account, in the AWS region where the
API request is processed. This list can be filtered to match a specified string.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filterByName"`: Filters the channel list to match the specified name.
- `"maxResults"`: Maximum number of channels to return.
- `"nextToken"`: The first channel to retrieve. This is used for pagination; see the
  nextToken response field.
"""
list_channels(; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ListChannels"; aws_config=aws_config)
list_channels(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ListChannels", params; aws_config=aws_config)

"""
    list_playback_key_pairs()
    list_playback_key_pairs(params::Dict{String,<:Any})

Gets summary information about playback key pairs.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The first key pair to retrieve. This is used for pagination; see the
  nextToken response field.
- `"nextToken"`: Maximum number of key pairs to return.
"""
list_playback_key_pairs(; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ListPlaybackKeyPairs"; aws_config=aws_config)
list_playback_key_pairs(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ListPlaybackKeyPairs", params; aws_config=aws_config)

"""
    list_stream_keys(channel_arn)
    list_stream_keys(channel_arn, params::Dict{String,<:Any})

Gets summary information about stream keys for the specified channel.

# Arguments
- `channel_arn`: Channel ARN used to filter the list.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of streamKeys to return.
- `"nextToken"`: The first stream key to retrieve. This is used for pagination; see the
  nextToken response field.
"""
list_stream_keys(channelArn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ListStreamKeys", Dict{String, Any}("channelArn"=>channelArn); aws_config=aws_config)
list_stream_keys(channelArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ListStreamKeys", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("channelArn"=>channelArn), params)); aws_config=aws_config)

"""
    list_streams()
    list_streams(params::Dict{String,<:Any})

Gets summary information about live streams in your account, in the AWS region where the
API request is processed.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of streams to return.
- `"nextToken"`: The first stream to retrieve. This is used for pagination; see the
  nextToken response field.
"""
list_streams(; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ListStreams"; aws_config=aws_config)
list_streams(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/ListStreams", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Gets information about AWS tags for the specified ARN.

# Arguments
- `resource_arn`: The ARN of the resource to be retrieved.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of tags to return.
- `"nextToken"`: The first tag to retrieve. This is used for pagination; see the nextToken
  response field.
"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("GET", "/tags/$(resourceArn)", params; aws_config=aws_config)

"""
    put_metadata(channel_arn, metadata)
    put_metadata(channel_arn, metadata, params::Dict{String,<:Any})

Inserts metadata into an RTMPS stream for the specified channel. A maximum of 5 requests
per second per channel is allowed, each with a maximum 1KB payload.

# Arguments
- `channel_arn`: ARN of the channel into which metadata is inserted. This channel must have
  an active stream.
- `metadata`: Metadata to insert into the stream. Maximum: 1 KB per request.

"""
put_metadata(channelArn, metadata; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/PutMetadata", Dict{String, Any}("channelArn"=>channelArn, "metadata"=>metadata); aws_config=aws_config)
put_metadata(channelArn, metadata, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/PutMetadata", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("channelArn"=>channelArn, "metadata"=>metadata), params)); aws_config=aws_config)

"""
    stop_stream(channel_arn)
    stop_stream(channel_arn, params::Dict{String,<:Any})

Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction
with DeleteStreamKey to prevent further streaming to a channel.  Many streaming
client-software libraries automatically reconnect a dropped RTMPS session, so to stop the
stream permanently, you may want to first revoke the streamKey attached to the channel.

# Arguments
- `channel_arn`: ARN of the channel for which the stream is to be stopped.

"""
stop_stream(channelArn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/StopStream", Dict{String, Any}("channelArn"=>channelArn); aws_config=aws_config)
stop_stream(channelArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/StopStream", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("channelArn"=>channelArn), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds or updates tags for the AWS resource with the specified ARN.

# Arguments
- `resource_arn`: ARN of the resource for which tags are to be added or updated.
- `tags`: Array of tags to be added or updated.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes tags from the resource with the specified ARN.

# Arguments
- `resource_arn`: ARN of the resource for which tags are to be removed.
- `tag_keys`: Array of tags to be removed.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_channel(arn)
    update_channel(arn, params::Dict{String,<:Any})

Updates a channel's configuration. This does not affect an ongoing stream of this channel.
You must stop and restart the stream for the changes to take effect.

# Arguments
- `arn`: ARN of the channel to be updated.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authorized"`: Whether the channel is authorized. Default: false.
- `"latencyMode"`: Channel latency mode. Default: LOW.
- `"name"`: Channel name.
- `"type"`: Channel type, which determines the allowable resolution and bitrate. If you
  exceed the allowable resolution or bitrate, the stream probably will disconnect
  immediately. Valid values:    STANDARD: Multiple qualities are generated from the original
  input, to automatically give viewers the best experience for their devices and network
  conditions. Vertical resolution can be up to 1080 and bitrate can be up to 8.5 Mbps.
  BASIC: Amazon IVS delivers the original input to viewers. The viewer’s video-quality
  choice is limited to the original input. Vertical resolution can be up to 480 and bitrate
  can be up to 1.5 Mbps.   Default: STANDARD.
"""
update_channel(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/UpdateChannel", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
update_channel(arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = ivs("POST", "/UpdateChannel", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)