.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xd4f4, %r12
nop
nop
nop
add $52343, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%r12)
nop
dec %r11
lea addresses_WT_ht+0xfb4, %rsi
lea addresses_D_ht+0x17e74, %rdi
clflush (%rdi)
nop
nop
nop
add $45682, %r10
mov $16, %rcx
rep movsw
cmp %r12, %r12
lea addresses_WT_ht+0xc7b4, %r14
nop
nop
nop
add $24819, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
nop
nop
sub $64557, %r11
lea addresses_WT_ht+0xfff4, %rdi
dec %r11
movw $0x6162, (%rdi)
nop
nop
nop
nop
cmp $15799, %r11
lea addresses_WT_ht+0x1ccd4, %rsi
lea addresses_UC_ht+0x158f4, %rdi
nop
nop
nop
nop
nop
sub $58750, %r9
mov $5, %rcx
rep movsb
nop
nop
nop
nop
add $9578, %rsi
lea addresses_WC_ht+0x8a74, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
nop
nop
xor $12456, %r12
lea addresses_WC_ht+0x67f4, %r12
nop
nop
nop
xor $32843, %r10
mov (%r12), %r14w
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1d730, %rcx
nop
nop
nop
nop
cmp $21646, %r11
mov (%rcx), %r12
nop
and %r9, %r9
lea addresses_WC_ht+0x105b4, %rsi
lea addresses_A_ht+0x9aa4, %rdi
nop
xor $18605, %r9
mov $67, %rcx
rep movsw
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x17af4, %r14
nop
nop
nop
nop
sub %rdi, %rdi
movb (%r14), %r11b
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1477c, %r15
nop
nop
nop
nop
sub $59705, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
add $3655, %rdx

// REPMOV
lea addresses_RW+0x3c44, %rsi
lea addresses_PSE+0x1a1f4, %rdi
nop
add $59996, %rdx
mov $12, %rcx
rep movsl
sub %rsi, %rsi

// Load
lea addresses_A+0xb4f4, %rdi
and %r13, %r13
mov (%rdi), %edx
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_A+0x1c4f4, %r11
nop
inc %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r11)
nop
nop
cmp $11403, %r11

// Load
lea addresses_WC+0x6f14, %r11
nop
nop
nop
nop
dec %r15
mov (%r11), %ecx
nop
nop
nop
add $56607, %r14

// Store
mov $0x5d268200000002f4, %r15
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_A+0x1c4f4, %r13
nop
inc %r11
movl $0x51525354, (%r13)
nop
add $17970, %r11

// Store
lea addresses_UC+0x2d2c, %r15
nop
nop
nop
nop
and $33454, %rdi
movb $0x51, (%r15)

// Exception!!!
mov (0), %rsi
nop
nop
nop
nop
sub $5500, %rdx

// Store
lea addresses_WT+0xa74, %rcx
xor $14641, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
and $59025, %rcx

// Store
lea addresses_D+0x169e4, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%rsi)
dec %rcx

// Store
lea addresses_WT+0x3ff4, %rdi
nop
add %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
and %rsi, %rsi

// Store
lea addresses_PSE+0xe11c, %rcx
clflush (%rcx)
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
and %rcx, %rcx

// Faulty Load
lea addresses_A+0x1c4f4, %r11
nop
cmp $65351, %rsi
mov (%r11), %ecx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'54': 454}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
