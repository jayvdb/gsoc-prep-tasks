import Component from '@ember/component';

export default Component.extend({
  init(...args) {
    this._super(...args);
  },
  didInsertElement() {
    this.$().linkify({
      validate: {
        url(value) {
          return /^(http|ftp)s?:\/\//.test(value);
        },
      },
      formatHref(href, type) {
        if (type === 'mention') {
          return `https://github.com/${
            href.substring(1)}`;
        }
        return href;
      },
    });
  },
});
