import Rails from '@rails/ujs';

export function start() {
  require('@fortawesome/fontawesome-free/css/all.css');
  require('@fortawesome/fontawesome-free/css/v4-shims.css');
  require.context('../images/', true);

  try {
    Rails.start();
  } catch (e) {
    // If called twice
  }
};
