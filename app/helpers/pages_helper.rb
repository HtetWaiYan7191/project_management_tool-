# frozen_string_literal: true

module PagesHelper
  def cards
    [{
      title: 'Annoucement',
      card_type: 'annoucement',
      description: 'Post Annoucement, pitch ideas and gather feedback while keeping discussions organized and on-topic',
      link: annoucements_path,
      svg: '<svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" viewBox="0 0 47.5 47.5" width="100" height="100" enable-background="new 0 0 47.5 47.5" id="file">
                    <defs>
                        <clipPath id="a">
                            <path d="M0 38h38V0H0v38Z"></path>
                        </clipPath>
                    </defs>
                    <g clip-path="url(#a)" transform="matrix(1.25 0 0 -1.25 0 47.5)">
                        <path d="M0 0a4 4 0 0 1 4-4h24a4 4 0 0 1 4 4v17a4 4 0 0 1-4 4h-9c-3.562 0-3 5-8.437 5H4a4 4 0 0 1-4-4V0Z" transform="translate(1 8)" fill="#269" fill-opacity="1" fill-rule="nonzero" stroke="none"></path>
                        <path d="M0 0h-6.562C-12 0-11.438-5-15-5h-9a4 4 0 0 1-4-4v-10a1 1 0 1 0-2 0 4 4 0 0 1 4-4H0a4 4 0 0 1 4 4v15a4 4 0 0 1-4 4" transform="translate(31 27)" fill="#55acee" fill-opacity="1" fill-rule="nonzero" stroke="none"></path>
                    </g>
                </svg>'
    },
     {
       title: 'To-dos',
       card_type: 'to_do',
       description: 'Organize work across teams to get things done on time. Assign tasks, set due dates, and discuss.',
       link: to_dos_path,
       svg: '<svg width="100px" height="100px" viewBox="-5.6 -5.6 27.20 27.20" xmlns="http://www.w3.org/2000/svg" fill="#66bb6a" stroke="#66bb6a" transform="matrix(1, 0, 0, 1, 0, 0)" stroke-width="0.00016"><g id="SVGRepo_bgCarrier" stroke-width="0" transform="translate(0.6399999999999997,0.6399999999999997), scale(0.92)"><rect x="-5.6" y="-5.6" width="27.20" height="27.20" rx="13.6" fill="#66bb6a" strokewidth="0"></rect></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.096"></g><g id="SVGRepo_iconCarrier"> <path fill="#fafafa" fill-rule="evenodd" d="M4,4 L9,4 C9.55228,4 10,3.55228 10,3 C10,2.44772 9.55228,2 9,2 L4,2 C2.89543,2 2,2.89543 2,4 L2,12 C2,13.1046 2.89543,14 4,14 L12,14 C13.1046,14 14,13.1046 14,12 L14,10 C14,9.44771 13.5523,9 13,9 C12.4477,9 12,9.44771 12,10 L12,12 L4,12 L4,4 Z M15.2071,2.29289 C14.8166,1.90237 14.1834,1.90237 13.7929,2.29289 L8.5,7.58579 L7.70711,6.79289 C7.31658,6.40237 6.68342,6.40237 6.29289,6.79289 C5.90237,7.18342 5.90237,7.81658 6.29289,8.20711 L7.79289,9.70711 C7.98043,9.89464 8.23478,10 8.5,10 C8.76522,10 9.01957,9.89464 9.20711,9.70711 L15.2071,3.70711 C15.5976,3.31658 15.5976,2.68342 15.2071,2.29289 Z"></path> </g></svg>'
     },
     {
       title: 'Events',
       card_type: 'event',
       description: 'Highlight your important events and never miss you event again !',
       link: events_path,
       svg: '<svg fill="#e27474" version="1.1" id="Capa_1" width="100" height="100"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 610.398 610.398" xml:space="preserve" stroke="#e27474"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <path d="M159.567,0h-15.329c-1.956,0-3.811,0.411-5.608,0.995c-8.979,2.912-15.616,12.498-15.616,23.997v10.552v27.009v14.052 c0,2.611,0.435,5.078,1.066,7.44c2.702,10.146,10.653,17.552,20.158,17.552h15.329c11.724,0,21.224-11.188,21.224-24.992V62.553 V35.544V24.992C180.791,11.188,171.291,0,159.567,0z"></path> <path d="M461.288,0h-15.329c-11.724,0-21.224,11.188-21.224,24.992v10.552v27.009v14.052c0,13.804,9.5,24.992,21.224,24.992 h15.329c11.724,0,21.224-11.188,21.224-24.992V62.553V35.544V24.992C482.507,11.188,473.007,0,461.288,0z"></path> <path d="M539.586,62.553h-37.954v14.052c0,24.327-18.102,44.117-40.349,44.117h-15.329c-22.247,0-40.349-19.79-40.349-44.117 V62.553H199.916v14.052c0,24.327-18.102,44.117-40.349,44.117h-15.329c-22.248,0-40.349-19.79-40.349-44.117V62.553H70.818 c-21.066,0-38.15,16.017-38.15,35.764v476.318c0,19.784,17.083,35.764,38.15,35.764h468.763c21.085,0,38.149-15.984,38.149-35.764 V98.322C577.735,78.575,560.671,62.553,539.586,62.553z M527.757,557.9l-446.502-0.172V173.717h446.502V557.9z"></path> <path d="M353.017,266.258h117.428c10.193,0,18.437-10.179,18.437-22.759s-8.248-22.759-18.437-22.759H353.017 c-10.193,0-18.437,10.179-18.437,22.759C334.58,256.074,342.823,266.258,353.017,266.258z"></path> <path d="M353.017,348.467h117.428c10.193,0,18.437-10.179,18.437-22.759c0-12.579-8.248-22.758-18.437-22.758H353.017 c-10.193,0-18.437,10.179-18.437,22.758C334.58,338.288,342.823,348.467,353.017,348.467z"></path> <path d="M353.017,430.676h117.428c10.193,0,18.437-10.18,18.437-22.759s-8.248-22.759-18.437-22.759H353.017 c-10.193,0-18.437,10.18-18.437,22.759S342.823,430.676,353.017,430.676z"></path> <path d="M353.017,512.89h117.428c10.193,0,18.437-10.18,18.437-22.759c0-12.58-8.248-22.759-18.437-22.759H353.017 c-10.193,0-18.437,10.179-18.437,22.759C334.58,502.71,342.823,512.89,353.017,512.89z"></path> <path d="M145.032,266.258H262.46c10.193,0,18.436-10.179,18.436-22.759s-8.248-22.759-18.436-22.759H145.032 c-10.194,0-18.437,10.179-18.437,22.759C126.596,256.074,134.838,266.258,145.032,266.258z"></path> <path d="M145.032,348.467H262.46c10.193,0,18.436-10.179,18.436-22.759c0-12.579-8.248-22.758-18.436-22.758H145.032 c-10.194,0-18.437,10.179-18.437,22.758C126.596,338.288,134.838,348.467,145.032,348.467z"></path> <path d="M145.032,430.676H262.46c10.193,0,18.436-10.18,18.436-22.759s-8.248-22.759-18.436-22.759H145.032 c-10.194,0-18.437,10.18-18.437,22.759S134.838,430.676,145.032,430.676z"></path> <path d="M145.032,512.89H262.46c10.193,0,18.436-10.18,18.436-22.759c0-12.58-8.248-22.759-18.436-22.759H145.032 c-10.194,0-18.437,10.179-18.437,22.759C126.596,502.71,134.838,512.89,145.032,512.89z"></path> </g> </g> </g></svg>'
     },
     {
       title: 'Chat',
       card_type: 'chat',
       description: 'Chat casually with people, ask questions, connect with your team, and share news without ceremony',
       link: messages_path,
       svg: '<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="none" viewBox="0 0 26 24" id="chat">
  <g filter="url(#a)">
    <path fill="#FF6B51" d="M5.46667 18.4972V13.4308C1.96822 13.2175 1.85401 10.6127 1.854 9.07467C1.854 8.5825 1.86156 7.52185 1.94689 4.36472C2.03222 1.20758 4.32614 0.898273 5.46667 0.898269H16.4526C20.9324 0.73828 19.8771 4.379 19.9876 8.66035C20.083 12.3589 18.5375 13.3146 16.383 13.3146L11.4396 13.4308C10.7463 14.1419 9.00778 16.0862 7.22656 17.8039C5.65198 19.3223 5.46667 19.0875 5.46667 18.4972Z"></path>
    <path stroke="#FF6B51" stroke-width=".15" d="M5.46667 18.4972V13.4308C1.96822 13.2175 1.85401 10.6127 1.854 9.07467C1.854 8.5825 1.86156 7.52185 1.94689 4.36472C2.03222 1.20758 4.32614 0.898273 5.46667 0.898269H16.4526C20.9324 0.73828 19.8771 4.379 19.9876 8.66035C20.083 12.3589 18.5375 13.3146 16.383 13.3146L11.4396 13.4308C10.7463 14.1419 9.00778 16.0862 7.22656 17.8039C5.65198 19.3223 5.46667 19.0875 5.46667 18.4972Z"></path>
  </g>
  <g filter="url(#b)">
    <path fill="#FF6B51" d="M14.0915 15.1159H11.3739L9.66345 16.7952H13.391L17.3562 20.6887C18.6004 21.83 19.0326 20.4036 19.0326 19.5908V16.7952H20.3442C23.3548 16.7952 24.095 14.4025 24.1454 12.7151C24.1958 11.0276 23.9917 5.85316 23.9464 5.20964C23.8478 3.80862 21.8268 3.4718 21.1231 3.4718V5.20964C22.5121 5.20964 22.4299 6.02107 22.4299 6.79635V12.3204C22.4299 14.6373 21.7697 15.1159 20.3442 15.1159H17.2697L17.3388 18.4323L14.0915 15.1159Z"></path>
    <path stroke="#FF6B51" stroke-width=".15" d="M14.0915 15.1159H11.3739L9.66345 16.7952H13.391L17.3562 20.6887C18.6004 21.83 19.0326 20.4036 19.0326 19.5908V16.7952H20.3442C23.3548 16.7952 24.095 14.4025 24.1454 12.7151C24.1958 11.0276 23.9917 5.85316 23.9464 5.20964C23.8478 3.80862 21.8268 3.4718 21.1231 3.4718V5.20964C22.5121 5.20964 22.4299 6.02107 22.4299 6.79635V12.3204C22.4299 14.6373 21.7697 15.1159 20.3442 15.1159H17.2697L17.3388 18.4323L14.0915 15.1159Z"></path>
  </g>
  <g filter="url(#c)">
    <circle cx="14.961" cy="7.042" r="1.275" fill="#FDDFDD"></circle>
    <circle cx="14.961" cy="7.042" r="1.2" stroke="#FDDFDD" stroke-width=".15"></circle>
  </g>
  <g filter="url(#d)">
    <circle cx="6.916" cy="7.042" r="1.275" fill="#FDDFDD"></circle>
    <circle cx="6.916" cy="7.042" r="1.2" stroke="#FDDFDD" stroke-width=".15"></circle>
  </g>
  <g filter="url(#e)">
    <circle cx="10.921" cy="7.042" r="1.275" fill="#FDDFDD"></circle>
    <circle cx="10.921" cy="7.042" r="1.2" stroke="#FDDFDD" stroke-width=".15"></circle>
  </g>
  <defs>
    <filter id="a" width="20.318" height="20.208" x=".779" y=".818" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse">
      <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
      <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"></feColorMatrix>
      <feOffset dy="1"></feOffset>
      <feGaussianBlur stdDeviation=".5"></feGaussianBlur>
      <feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"></feColorMatrix>
      <feBlend in2="BackgroundImageFix" result="effect1_dropShadow"></feBlend>
      <feBlend in="SourceGraphic" in2="effect1_dropShadow" result="shape"></feBlend>
    </filter>
    <filter id="b" width="16.748" height="19.793" x="8.48" y="3.397" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse">
      <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
      <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"></feColorMatrix>
      <feOffset dy="1"></feOffset>
      <feGaussianBlur stdDeviation=".5"></feGaussianBlur>
      <feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"></feColorMatrix>
      <feBlend in2="BackgroundImageFix" result="effect1_dropShadow"></feBlend>
      <feBlend in="SourceGraphic" in2="effect1_dropShadow" result="shape"></feBlend>
    </filter>
    <filter id="c" width="4.551" height="4.551" x="12.685" y="5.767" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse">
      <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
      <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"></feColorMatrix>
      <feOffset dy="1"></feOffset>
      <feGaussianBlur stdDeviation=".5"></feGaussianBlur>
      <feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"></feColorMatrix>
      <feBlend in2="BackgroundImageFix" result="effect1_dropShadow"></feBlend>
      <feBlend in="SourceGraphic" in2="effect1_dropShadow" result="shape"></feBlend>
    </filter>
    <filter id="d" width="4.551" height="4.551" x="4.64" y="5.767" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse">
      <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
      <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"></feColorMatrix>
      <feOffset dy="1"></feOffset>
      <feGaussianBlur stdDeviation=".5"></feGaussianBlur>
      <feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"></feColorMatrix>
      <feBlend in2="BackgroundImageFix" result="effect1_dropShadow"></feBlend>
      <feBlend in="SourceGraphic" in2="effect1_dropShadow" result="shape"></feBlend>
    </filter>
    <filter id="e" width="4.551" height="4.551" x="8.645" y="5.767" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse">
      <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
      <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"></feColorMatrix>
      <feOffset dy="1"></feOffset>
      <feGaussianBlur stdDeviation=".5"></feGaussianBlur>
      <feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"></feColorMatrix>
      <feBlend in2="BackgroundImageFix" result="effect1_dropShadow"></feBlend>
      <feBlend in="SourceGraphic" in2="effect1_dropShadow" result="shape"></feBlend>
    </filter>
  </defs>
</svg>'

     }, {
       title: 'Cards',
       card_type: 'card',
       description: 'Centralized place to organized and share docs, spreadsheets, images and other files',
       link: boards_path,
       svg: '<svg id="SvgjsSvg1016" width="100" height="100" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1017"></defs><g id="SvgjsG1018"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="100" height="100"><path fill="#a1eebd" d="M3.757 0C2.79 0 2.003.787 2.003 1.754V12.27c0 .967.787 1.751 1.754 1.751h4.515c.007 0 .012-.006.02-.007a3.254 3.254 0 0 0 2.982 1.963 3.254 3.254 0 0 0 3.25-3.25 3.254 3.254 0 0 0-2.021-3.004V4.27c0-.008-.007-.014-.008-.023a.246.246 0 0 0-.064-.176l-4-4c-.052-.05-.122-.063-.192-.06C8.23.01 8.222 0 8.212 0H3.757Zm0 .5h4.246v2.262c0 .959.781 1.738 1.74 1.738h2.26v5.066a3.187 3.187 0 0 0-.729-.09 3.254 3.254 0 0 0-3.25 3.25c0 .277.045.54.11.795H3.757a1.256 1.256 0 0 1-1.254-1.253V1.754C2.503 1.063 3.066.5 3.757.5Zm4.746.393L11.628 4H9.74a1.24 1.24 0 0 1-1.238-1.238V.892zm2.77 9.084a2.753 2.753 0 0 1 2.75 2.75 2.752 2.752 0 0 1-2.75 2.75 2.752 2.752 0 0 1-2.75-2.75 2.753 2.753 0 0 1 2.75-2.75zM11 11.23v1.245H9.755v.5H11v1.248h.5v-1.248h1.246v-.5h-1.246V11.23h-.5z" class="color231f20 svgShape"></path></svg></g></svg>'
     }]
  end
end
