.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x196ac, %rsi
lea addresses_WT_ht+0x32ec, %rdi
nop
nop
nop
cmp $8972, %r14
mov $65, %rcx
rep movsw
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x4bc, %rsi
lea addresses_normal+0x12c34, %rdi
nop
nop
nop
nop
nop
sub $39737, %rbx
mov $40, %rcx
rep movsb
and %rbx, %rbx

// Store
lea addresses_WC+0x10ec, %rsi
nop
nop
nop
xor $47557, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rsi)
inc %r12

// Store
mov $0x5f78d3000000030c, %rdi
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_WC+0x10ec, %rdi
nop
nop
nop
cmp $48306, %rcx
movl $0x51525354, (%rdi)
nop
cmp $47838, %rax

// Faulty Load
lea addresses_WC+0x10ec, %rax
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rax), %di
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'54': 12, '58': 3}
54 54 54 58 58 54 54 54 54 54 54 54 54 58 54
*/
