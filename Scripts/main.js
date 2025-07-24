class LiquidColorAssistant {
  provideColors(editor, context) {
    if (!context.candidates?.length) return [];

    return context.candidates.flatMap((candidate) => {
      const text = candidate.text.trim().toLowerCase();
      let match,
        r,
        g,
        b,
        a = 1;

      // #rgb / #rgba
      if ((match = /^#([0-9a-f]{3,4})$/.exec(text))) {
        const hex = match[1];
        r = parseInt(hex[0] + hex[0], 16) / 255;
        g = parseInt(hex[1] + hex[1], 16) / 255;
        b = parseInt(hex[2] + hex[2], 16) / 255;
        if (hex.length === 4) a = parseInt(hex[3] + hex[3], 16) / 255;
      }

      // #rrggbb / #rrggbbaa
      else if ((match = /^#([0-9a-f]{6}|[0-9a-f]{8})$/.exec(text))) {
        const hex = match[1];
        r = parseInt(hex.slice(0, 2), 16) / 255;
        g = parseInt(hex.slice(2, 4), 16) / 255;
        b = parseInt(hex.slice(4, 6), 16) / 255;
        if (hex.length === 8) a = parseInt(hex.slice(6, 8), 16) / 255;
      }

      // rgb() / rgba()
      else if (
        (match = /^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*([\d.]+))?\)$/.exec(
          text
        ))
      ) {
        r = parseInt(match[1]) / 255;
        g = parseInt(match[2]) / 255;
        b = parseInt(match[3]) / 255;
        if (match[4]) a = parseFloat(match[4]);
      }

      // hsl() / hsla()
      else if (
        (match = /^hsla?\((\d+),\s*(\d+)%?,\s*(\d+)%?(?:,\s*([\d.]+))?\)$/.exec(
          text
        ))
      ) {
        let h = parseInt(match[1]) / 360;
        const s = parseInt(match[2]) / 100;
        const l = parseInt(match[3]) / 100;
        if (match[4]) a = parseFloat(match[4]);

        // HSL to RGB
        const hue2rgb = (p, q, t) => {
          if (t < 0) t += 1;
          if (t > 1) t -= 1;
          if (t < 1 / 6) return p + (q - p) * 6 * t;
          if (t < 1 / 2) return q;
          if (t < 2 / 3) return p + (q - p) * (2 / 3 - t) * 6;
          return p;
        };
        const q = l < 0.5 ? l * (1 + s) : l + s - l * s;
        const p = 2 * l - q;
        r = hue2rgb(p, q, h + 1 / 3);
        g = hue2rgb(p, q, h);
        b = hue2rgb(p, q, h - 1 / 3);
      } else {
        return [];
      }

      try {
        const color = new Color("rgb", [r, g, b, a]);
        return [new ColorInformation(candidate.range, color)];
      } catch (err) {
        return [];
      }
    });
  }
}

nova.assistants.registerColorAssistant(
  ["html.liquid", "css.liquid"],
  new LiquidColorAssistant()
);
