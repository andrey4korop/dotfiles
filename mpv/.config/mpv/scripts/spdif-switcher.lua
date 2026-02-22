local mp = require "mp"
-- Список доступних режимів S/PDIF. Перший елемент - режим за замовчуванням.
local spdif_modes = {

    "no",                      -- Режим 3: Вимкнено
    "ac3"                --dts Режим 2: Обмежений Passthrough (для старих ресиверів)
   -- "ac3,eac3,dts-hd,truehd" -- Режим 1: Повний Passthrough (для сучасних ресиверів)

}
mp.msg.info("cycle_spdif_mode run ")
-- Встановлення початкового індексу. Ви можете змінити це, щоб почати з іншого режиму.
local current_index = 1

-- Функція, яка виконує циклічне перемикання режимів
function cycle_spdif_mode()
    -- Збільшити індекс і забезпечити циклічність
    current_index = current_index % #spdif_modes + 1

    -- Отримати нове значення
    local new_value = spdif_modes[current_index]
    mp.msg.info("cycle_spdif_mode " .. new_value .. " ")
    -- Встановити нову властивість audio-spdif
    mp.set_property("audio-spdif", new_value)

    -- Вивести повідомлення на OSD та в лог
    mp.osd_message("S/PDIF Passthrough: " .. new_value)
    mp.msg.info("S/PDIF mode changed to: " .. new_value)
end

-- Додати гарячу клавішу. Клавіша 's' (від S/PDIF)
mp.add_key_binding(nil, "cycle_spdif_mode", cycle_spdif_mode)
