// src/TodoList.js
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './TodoList.css'; // Import the CSS file

function TodoList() {
    const [todos, setTodos] = useState([]);
    const [newTodo, setNewTodo] = useState({ title: '', description: '' });
    const [editingTodo, setEditingTodo] = useState(null);

    useEffect(() => {
        fetchTodos();
    }, []);

    const fetchTodos = () => {
        axios.get('http://localhost:8000/todos/')
            .then(response => setTodos(response.data))
            .catch(error => console.error(error));
    };

    const addTodo = () => {
        if (!newTodo.title || !newTodo.description) {
            alert("Please fill in both the title and description.");
            return;
        }
        axios.post('http://localhost:8000/todos/', newTodo)
            .then(response => {
                setTodos([...todos, response.data]);
                setNewTodo({ title: '', description: '' });
            })
            .catch(error => console.error(error));
    };

    const updateTodo = (id) => {
        axios.put(`http://localhost:8000/todos/${id}`, editingTodo)
            .then(response => {
                setTodos(todos.map(todo => (todo.id === id ? response.data : todo)));
                setEditingTodo(null);
            })
            .catch(error => console.error(error));
    };

    const deleteTodo = (id) => {
        axios.delete(`http://localhost:8000/todos/${id}`)
            .then(() => {
                setTodos(todos.filter(todo => todo.id !== id));
            })
            .catch(error => console.error(error));
    };

    return (
        <div className="container">
            <h1>To-Do List</h1>
            <input
                type="text"
                placeholder="Title"
                value={newTodo.title}
                onChange={e => setNewTodo({ ...newTodo, title: e.target.value })}
            />
            <input
                type="text"
                placeholder="Description"
                value={newTodo.description}
                onChange={e => setNewTodo({ ...newTodo, description: e.target.value })}
            />
            <button onClick={addTodo}>Add Todo</button>
            <ul>
                {todos.map(todo => (
                    <li key={todo.id}>
                        {editingTodo && editingTodo.id === todo.id ? (
                            <div className="editing">
                                <input
                                    type="text"
                                    value={editingTodo.title}
                                    onChange={e => setEditingTodo({ ...editingTodo, title: e.target.value })}
                                />
                                <input
                                    type="text"
                                    value={editingTodo.description}
                                    onChange={e => setEditingTodo({ ...editingTodo, description: e.target.value })}
                                />
                                <button onClick={() => updateTodo(todo.id)}>Save</button>
                                <button onClick={() => setEditingTodo(null)}>Cancel</button>
                            </div>
                        ) : (
                            <div>
                                <span>{todo.title} - {todo.description}</span>
                                <button onClick={() => setEditingTodo(todo)}>Edit</button>
                                <button onClick={() => deleteTodo(todo.id)}>Delete</button>
                            </div>
                        )}
                    </li>
                ))}
            </ul>
        </div>
    );
}

export default TodoList;
