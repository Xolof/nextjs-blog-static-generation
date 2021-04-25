import { getStrapiURL } from "./api";

export function getStrapiMedia(media) {
  const imageUrl = media.url.startsWith("/")
    ? "http://localhost:1337" + media.url //getStrapiURL(media.url)
    : media.url;

  return imageUrl;
}
