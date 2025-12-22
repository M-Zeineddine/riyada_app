// package: riyada.courts
// file: court_service.proto

/* tslint:disable */
/* eslint-disable */

import * as jspb from "google-protobuf";

export class Court extends jspb.Message { 
    getId(): string;
    setId(value: string): Court;
    getName(): string;
    setName(value: string): Court;
    getLocation(): string;
    setLocation(value: string): Court;
    getPricePerHour(): number;
    setPricePerHour(value: number): Court;
    getImageUrl(): string;
    setImageUrl(value: string): Court;
    getDistanceKm(): number;
    setDistanceKm(value: number): Court;
    getSport(): string;
    setSport(value: string): Court;
    clearAmenitiesList(): void;
    getAmenitiesList(): Array<string>;
    setAmenitiesList(value: Array<string>): Court;
    addAmenities(value: string, index?: number): string;
    getLat(): number;
    setLat(value: number): Court;
    getLng(): number;
    setLng(value: number): Court;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Court.AsObject;
    static toObject(includeInstance: boolean, msg: Court): Court.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: Court, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Court;
    static deserializeBinaryFromReader(message: Court, reader: jspb.BinaryReader): Court;
}

export namespace Court {
    export type AsObject = {
        id: string,
        name: string,
        location: string,
        pricePerHour: number,
        imageUrl: string,
        distanceKm: number,
        sport: string,
        amenitiesList: Array<string>,
        lat: number,
        lng: number,
    }
}

export class ListCourtsRequest extends jspb.Message { 
    getQuery(): string;
    setQuery(value: string): ListCourtsRequest;
    getSport(): string;
    setSport(value: string): ListCourtsRequest;
    getSort(): SortOrder;
    setSort(value: SortOrder): ListCourtsRequest;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): ListCourtsRequest.AsObject;
    static toObject(includeInstance: boolean, msg: ListCourtsRequest): ListCourtsRequest.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: ListCourtsRequest, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): ListCourtsRequest;
    static deserializeBinaryFromReader(message: ListCourtsRequest, reader: jspb.BinaryReader): ListCourtsRequest;
}

export namespace ListCourtsRequest {
    export type AsObject = {
        query: string,
        sport: string,
        sort: SortOrder,
    }
}

export class ListCourtsResponse extends jspb.Message { 
    clearCourtsList(): void;
    getCourtsList(): Array<Court>;
    setCourtsList(value: Array<Court>): ListCourtsResponse;
    addCourts(value?: Court, index?: number): Court;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): ListCourtsResponse.AsObject;
    static toObject(includeInstance: boolean, msg: ListCourtsResponse): ListCourtsResponse.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: ListCourtsResponse, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): ListCourtsResponse;
    static deserializeBinaryFromReader(message: ListCourtsResponse, reader: jspb.BinaryReader): ListCourtsResponse;
}

export namespace ListCourtsResponse {
    export type AsObject = {
        courtsList: Array<Court.AsObject>,
    }
}

export enum SortOrder {
    SORT_UNSPECIFIED = 0,
    NEARBY = 1,
    PRICE_LOW = 2,
    PRICE_HIGH = 3,
}
