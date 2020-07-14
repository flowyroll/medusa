.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x71bf, %rdx
nop
nop
nop
nop
sub $60521, %r14
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
xor $41731, %r8
lea addresses_WT_ht+0xbc99, %rsi
lea addresses_WT_ht+0x3c99, %rdi
nop
nop
nop
inc %r9
mov $73, %rcx
rep movsw
nop
cmp $36896, %rdi
lea addresses_D_ht+0x1b0b9, %rsi
lea addresses_D_ht+0x11359, %rdi
nop
nop
add $2689, %r12
mov $84, %rcx
rep movsl
nop
nop
cmp $38885, %rsi
lea addresses_UC_ht+0x1a499, %rsi
lea addresses_WC_ht+0x1ca99, %rdi
nop
nop
nop
nop
nop
add $20570, %r8
mov $94, %rcx
rep movsq
nop
nop
nop
nop
add $40987, %rsi
lea addresses_UC_ht+0x1a351, %rdx
nop
nop
nop
cmp %rsi, %rsi
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0xc099, %rsi
lea addresses_A_ht+0x4c99, %rdi
add $12998, %r8
mov $105, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x6759, %rsi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
add $12765, %rsi
lea addresses_normal_ht+0x10051, %rdx
xor $32644, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rdx)
nop
inc %rdx
lea addresses_normal_ht+0x15762, %rsi
lea addresses_UC_ht+0x4c99, %rdi
nop
nop
nop
and $56140, %r9
mov $0, %rcx
rep movsw
nop
nop
nop
nop
add $14533, %rdx
lea addresses_normal_ht+0x621b, %rsi
lea addresses_WT_ht+0x18299, %rdi
nop
nop
nop
nop
dec %r9
mov $38, %rcx
rep movsq
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x21cd, %rsi
lea addresses_WC_ht+0x1c2d9, %rdi
nop
nop
nop
nop
and $13900, %r12
mov $92, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x15e99, %r13
nop
inc %r11
mov (%r13), %r15w
nop
nop
nop
nop
add $32099, %r8

// Store
lea addresses_A+0x18c89, %rsi
nop
nop
nop
nop
nop
inc %r9
movl $0x51525354, (%rsi)
nop
nop
xor $32994, %r11

// Store
lea addresses_UC+0x199a1, %rsi
clflush (%rsi)
nop
nop
inc %rcx
movw $0x5152, (%rsi)
nop
nop
nop
and $40038, %rcx

// REPMOV
lea addresses_A+0x17249, %rsi
lea addresses_UC+0x18b19, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $21, %rcx
rep movsq
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x131d9, %r8
nop
add $50157, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
xor $3916, %rcx

// Store
lea addresses_D+0x2c49, %r11
nop
and %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r11)
add $65349, %rdi

// Load
lea addresses_US+0x2e99, %r11
nop
add %r13, %r13
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
add $37982, %r13

// Store
lea addresses_D+0x12399, %r11
nop
nop
nop
nop
nop
dec %r15
movb $0x51, (%r11)
nop
nop
nop
cmp $34898, %r13

// Store
lea addresses_A+0x10775, %rcx
nop
nop
nop
nop
add $32130, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
and %r11, %r11

// Load
lea addresses_RW+0x1f299, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov (%rdi), %r9w
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_WT+0x13499, %r11
nop
nop
nop
nop
nop
dec %rsi
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'39': 13401}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
