.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1d610, %rdx
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rdx)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x14110, %r12
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r12), %r11w
nop
nop
nop
xor $55233, %r11
lea addresses_A_ht+0x6310, %rdi
nop
nop
nop
nop
and $44824, %rbx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
dec %r11
lea addresses_UC_ht+0x17a10, %rsi
lea addresses_WT_ht+0xe410, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $4, %rcx
rep movsl
nop
and $5012, %r11
lea addresses_A_ht+0x3790, %rsi
lea addresses_D_ht+0x17e10, %rdi
clflush (%rsi)
nop
and %r11, %r11
mov $99, %rcx
rep movsw
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x18530, %rdx
nop
nop
nop
nop
sub $8604, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0x1d350, %rsi
mfence
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
cmp %rbx, %rbx
lea addresses_WT_ht+0x1c810, %r14
add $56728, %r11
movb (%r14), %cl
nop
nop
and $9500, %r14
lea addresses_WT_ht+0x188f4, %rbx
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x105e0, %r15
nop
nop
add $47534, %r14
movb (%r15), %dl
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x67a0, %rsi
mov $0xa1c, %rdi
clflush (%rdi)
sub %r14, %r14
mov $43, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx

// Store
mov $0xe10, %r14
sub $21491, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_WT+0x16c10, %r9
dec %r15
mov (%r9), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
