-- Tabela para armazenar as tarefas
local tasks = {}

-- Função para adicionar uma nova tarefa
local function addTask(title, description, dueDate, priority)
    table.insert(tasks, {title = title, description = description, dueDate = dueDate, priority = priority, completed = false})
end

-- Função para exibir todas as tarefas
local function displayTasks()
    print("Lista de Tarefas:")
    for i, task in ipairs(tasks) do
        print(i .. ". " .. task.title .. " - " .. task.description .. " (Prioridade: " .. task.priority .. ", Data de Vencimento: " .. task.dueDate .. ")")
    end
end

-- Função para marcar uma tarefa como concluída
local function completeTask(index)
    tasks[index].completed = true
end

-- Função principal
local function main()
    -- Exemplo de uso
    addTask("Fazer compras", "Comprar itens essenciais para casa", "2024-06-10", "Alta")
    addTask("Estudar Lua", "Aprender os conceitos básicos da linguagem Lua", "2024-06-15", "Média")

    displayTasks()

    -- Marcar a primeira tarefa como concluída
    completeTask(1)

    displayTasks()
end

-- Chamada da função principal
main()
