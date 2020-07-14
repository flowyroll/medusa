.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5559, %rsi
lea addresses_normal_ht+0x18da7, %rdi
nop
nop
sub %r11, %r11
mov $86, %rcx
rep movsl
nop
cmp $37708, %r15
lea addresses_UC_ht+0x132a7, %rbp
nop
nop
nop
add $27990, %rsi
mov (%rbp), %edi
nop
nop
add $63075, %rdi
lea addresses_WC_ht+0xada7, %rdi
nop
xor $60470, %r15
mov (%rdi), %rbp
nop
nop
nop
nop
cmp $58770, %r15
lea addresses_WT_ht+0x1bfa7, %rsi
lea addresses_D_ht+0x8ea7, %rdi
nop
nop
nop
xor $3729, %rbx
mov $113, %rcx
rep movsq
nop
nop
nop
nop
nop
and $53163, %rsi
lea addresses_D_ht+0x15be2, %rsi
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
and $0xffffffffffffffc0, %rsi
movntdq %xmm6, (%rsi)
nop
and %rsi, %rsi
lea addresses_WC_ht+0x12a67, %rcx
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rcx)
lfence
lea addresses_WC_ht+0x14ccf, %rcx
xor $50204, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xeda7, %rbp
nop
nop
nop
nop
cmp %r15, %r15
mov (%rbp), %di
nop
nop
nop
nop
nop
cmp $65344, %rbx
lea addresses_normal_ht+0x1cda7, %r15
nop
cmp $9129, %rbp
movw $0x6162, (%r15)
dec %r11
lea addresses_normal_ht+0x1e2c7, %r11
clflush (%r11)
nop
nop
nop
dec %rbp
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x4c27, %rsi
nop
cmp $63324, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x12b17, %rsi
lea addresses_UC_ht+0x2da7, %rdi
nop
nop
mfence
mov $59, %rcx
rep movsq
nop
nop
nop
nop
add $47305, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Load
mov $0x35834100000009a7, %rdx
clflush (%rdx)
nop
xor %r11, %r11
mov (%rdx), %r10
nop
xor $35326, %r11

// Store
lea addresses_UC+0x4207, %r9
clflush (%r9)
nop
nop
sub $10596, %rbp
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
and $3209, %r10

// Faulty Load
lea addresses_normal+0x1cda7, %r10
nop
nop
cmp $39314, %rdi
movb (%r10), %dl
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'34': 16}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
