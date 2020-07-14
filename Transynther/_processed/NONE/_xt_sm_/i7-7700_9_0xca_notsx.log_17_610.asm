.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3d15, %rcx
nop
nop
cmp $15704, %rdi
mov (%rcx), %ax
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x1115, %rsi
clflush (%rsi)
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x515, %rbx
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%rbx)
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x3315, %rsi
lea addresses_WT_ht+0x1cbf, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $78, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x6c15, %rsi
lea addresses_D_ht+0x1d178, %rdi
nop
nop
and %r11, %r11
mov $49, %rcx
rep movsq
nop
nop
sub $17129, %rcx
lea addresses_A_ht+0x137cd, %rdi
nop
nop
nop
nop
nop
sub $27179, %r11
mov (%rdi), %esi
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1515, %r11
and $20058, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r11)
nop
nop
xor $30937, %rdi
lea addresses_WT_ht+0x13f15, %rdi
nop
nop
nop
xor $29990, %rax
mov (%rdi), %bx
nop
nop
add $46652, %rsi
lea addresses_UC_ht+0xb7a5, %rax
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x8115, %rsi
lea addresses_A_ht+0xee95, %rdi
add $39899, %r13
mov $90, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x12aed, %rcx
nop
and %r13, %r13
mov (%rcx), %ax
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0xad15, %r8
nop
nop
sub $17963, %rsi
movb $0x61, (%r8)
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_RW+0x11515, %rsi
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
xor $28832, %r10

// Store
mov $0x280ca400000005d5, %rbp
sub $6349, %rdx
movw $0x5152, (%rbp)
nop
nop
nop
nop
add $35667, %r12

// Store
lea addresses_RW+0x11515, %r12
clflush (%r12)
nop
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_RW+0x11515, %rsi
nop
nop
nop
add $41304, %r10
movb (%rsi), %r12b
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'54': 17}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
