.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x62ad, %rcx
nop
nop
nop
nop
sub $47160, %r13
movb (%rcx), %r14b
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x18fdd, %rbx
nop
nop
nop
nop
nop
dec %rdx
movl $0x61626364, (%rbx)
nop
and $5776, %r13
lea addresses_UC_ht+0x16a1d, %rsi
lea addresses_A_ht+0x14259, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $46, %rcx
rep movsq
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x1a285, %rdx
nop
nop
sub $16452, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
add $24354, %r14
lea addresses_UC_ht+0x15b5d, %r13
clflush (%r13)
nop
nop
add %rdi, %rdi
movb $0x61, (%r13)
nop
and %r9, %r9
lea addresses_D_ht+0x1815d, %rbx
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x10ddd, %r13
nop
nop
nop
nop
dec %r14
mov (%r13), %si
sub $30280, %rsi
lea addresses_D_ht+0x35dd, %rcx
add $5368, %rbx
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
dec %rdx
lea addresses_normal_ht+0xbdd, %rdx
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
and %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi

// Store
mov $0x8e9, %r14
nop
xor $4898, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r14)
nop
nop
and %rbp, %rbp

// Store
mov $0x41f4680000000a85, %rcx
inc %r11
movl $0x51525354, (%rcx)
nop
nop
nop
dec %rcx

// Load
lea addresses_D+0x5b5d, %r11
xor %r14, %r14
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
cmp %r13, %r13

// Store
lea addresses_WT+0x1ad9d, %rdi
nop
nop
nop
sub %r11, %r11
movl $0x51525354, (%rdi)
nop
nop
sub %r13, %r13

// Store
lea addresses_D+0xddd, %r13
nop
nop
sub %r14, %r14
movw $0x5152, (%r13)
and %r11, %r11

// Store
lea addresses_normal+0x101dd, %r14
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_US+0x1bd75, %r14
and %r13, %r13
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
dec %r9

// Store
lea addresses_PSE+0x1fb95, %r14
nop
nop
nop
add %r13, %r13
movl $0x51525354, (%r14)
nop
dec %rbp

// Store
lea addresses_PSE+0x1cddd, %r13
xor %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r13)
nop
nop
sub $42149, %rbp

// Load
lea addresses_RW+0x7a97, %r11
clflush (%r11)
nop
inc %rdi
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r14
add $27750, %rbp

// Store
lea addresses_PSE+0x14f95, %r13
inc %r11
movb $0x51, (%r13)
nop
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_PSE+0x1cddd, %r9
nop
nop
nop
sub %r14, %r14
mov (%r9), %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 192}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
