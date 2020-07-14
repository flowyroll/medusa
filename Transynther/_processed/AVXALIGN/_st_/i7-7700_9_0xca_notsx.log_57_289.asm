.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x17aaf, %rdi
nop
nop
nop
inc %r12
mov (%rdi), %rax
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1a6f7, %rsi
lea addresses_D_ht+0x1cd9f, %rdi
nop
nop
sub $22999, %rdx
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $18784, %r8
lea addresses_normal_ht+0x2b4b, %rcx
nop
add $36934, %rdi
movw $0x6162, (%rcx)
nop
add %rax, %rax
lea addresses_UC_ht+0x75ef, %rsi
lea addresses_normal_ht+0x3f4f, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
xor $20589, %r11
mov $3, %rcx
rep movsw
nop
dec %rdx
lea addresses_UC_ht+0x5def, %rdx
nop
dec %r11
movl $0x61626364, (%rdx)
nop
nop
nop
nop
add $60743, %rax
lea addresses_WT_ht+0x151ef, %rdx
nop
sub %rcx, %rcx
mov (%rdx), %esi
nop
nop
sub $60231, %r8
lea addresses_WC_ht+0xaa4a, %rsi
lea addresses_WC_ht+0x17e4f, %rdi
nop
nop
nop
nop
nop
and $37371, %rax
mov $22, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xb9ef, %rax
nop
nop
nop
dec %rdi
mov (%rax), %rdx
nop
nop
nop
nop
nop
cmp $30123, %rdx
lea addresses_WT_ht+0x1bf5f, %rsi
lea addresses_D_ht+0x1d1ef, %rdi
add $17976, %r11
mov $2, %rcx
rep movsl
nop
nop
nop
xor $64574, %r11
lea addresses_WC_ht+0x1adef, %rsi
lea addresses_WT_ht+0xddef, %rdi
clflush (%rsi)
sub %rdx, %rdx
mov $57, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $39533, %rsi
lea addresses_UC_ht+0x174ef, %rsi
lea addresses_D_ht+0x17f7f, %rdi
nop
nop
nop
add %r12, %r12
mov $125, %rcx
rep movsb
nop
add $6663, %rdx
lea addresses_normal_ht+0x18d28, %rsi
lea addresses_WC_ht+0x15917, %rdi
xor %r8, %r8
mov $96, %rcx
rep movsl
nop
nop
nop
and $27592, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rdx

// Load
mov $0x3203da0000000677, %r14
nop
nop
nop
nop
nop
dec %rbp
mov (%r14), %ax
nop
nop
nop
xor $47249, %r14

// Store
lea addresses_A+0xb70f, %r11
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r11)
nop
inc %rax

// Store
lea addresses_US+0x1c029, %r11
dec %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
inc %rax

// Load
lea addresses_US+0x1296f, %r10
nop
nop
nop
nop
xor $39632, %rdx
mov (%r10), %r13w
nop
nop
xor $1782, %r11

// Faulty Load
lea addresses_WT+0x15ef, %rdx
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rdx), %r13d
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'39': 57}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
