.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3df8, %rsi
lea addresses_UC_ht+0x19b38, %rdi
nop
nop
inc %rax
mov $118, %rcx
rep movsb
nop
nop
nop
nop
add $9650, %rdx
lea addresses_D_ht+0x7654, %rsi
lea addresses_WT_ht+0x97ba, %rdi
nop
nop
nop
nop
nop
sub $13364, %r14
mov $39, %rcx
rep movsq
nop
nop
dec %rdx
lea addresses_D_ht+0x7904, %r14
nop
nop
nop
nop
nop
add $47507, %rsi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x13ab8, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $9936, %r15
mov (%rcx), %di
dec %rcx
lea addresses_D_ht+0x190b8, %rsi
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
nop
cmp $45908, %rdx
lea addresses_A_ht+0x2db8, %rdx
nop
add %r14, %r14
mov (%rdx), %rsi
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x190b8, %rax
nop
nop
and $10038, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rax)
sub $55436, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xe3b8, %rcx
nop
nop
nop
nop
sub %r15, %r15
movl $0x51525354, (%rcx)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_normal+0x1dbf0, %rbx
and $51571, %r8
movb $0x51, (%rbx)
nop
nop
nop
nop
xor %r12, %r12

// REPMOV
mov $0x7b8, %rsi
lea addresses_UC+0x2bf8, %rdi
clflush (%rsi)
nop
inc %rbx
mov $60, %rcx
rep movsb
nop
nop
nop
sub $33443, %r8

// Faulty Load
lea addresses_RW+0x68b8, %r12
nop
nop
and %rdi, %rdi
mov (%r12), %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'32': 229}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
