.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x35d0, %rsi
lea addresses_D+0x111d0, %rdi
nop
nop
sub $24328, %rbx
mov $4, %rcx
rep movsw
nop
nop
nop
nop
xor $40915, %rbx

// Load
mov $0x6aa0000000000dd0, %rax
nop
nop
nop
nop
and %rdx, %rdx
mov (%rax), %di

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rax
add %rax, %rax

// Faulty Load
lea addresses_normal+0x119d0, %rax
add $20138, %rsi
mov (%rax), %dx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'34': 11}
34 34 34 34 34 34 34 34 34 34 34
*/
