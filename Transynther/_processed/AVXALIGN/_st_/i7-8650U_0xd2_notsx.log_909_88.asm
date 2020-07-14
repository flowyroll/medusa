.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf668, %r10
xor $5906, %r14
movb (%r10), %r12b
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x15428, %r8
sub $35357, %rbp
mov (%r8), %si
add %rbp, %rbp
lea addresses_D_ht+0x17a28, %r12
dec %rsi
movb $0x61, (%r12)
nop
inc %r10
lea addresses_D_ht+0x13428, %r10
nop
nop
dec %r9
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
nop
nop
cmp $15005, %rbp
lea addresses_normal_ht+0x16c28, %r10
nop
nop
dec %r14
movb $0x61, (%r10)
nop
mfence
lea addresses_WT_ht+0xa96c, %rsi
nop
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rsi)
nop
add %r14, %r14
lea addresses_WC_ht+0x5628, %r10
nop
nop
nop
nop
add %r12, %r12
mov (%r10), %r14
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0xfc28, %rsi
lea addresses_WC_ht+0xa580, %rdi
sub %r9, %r9
mov $95, %rcx
rep movsl
xor %r12, %r12
lea addresses_WT_ht+0x12228, %r8
nop
and $51886, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r8)
nop
add %r14, %r14
lea addresses_WC_ht+0x8028, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
movb (%rdi), %r12b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1a188, %rbp
clflush (%rbp)
nop
nop
nop
nop
and %r8, %r8
mov (%rbp), %rcx
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x160d8, %r14
dec %r10
mov (%r14), %ecx
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x13828, %r9
and %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
inc %rcx

// REPMOV
lea addresses_WC+0x4c38, %rsi
lea addresses_D+0x1294b, %rdi
cmp $7814, %r13
mov $31, %rcx
rep movsw
nop
nop
dec %rcx

// Load
lea addresses_WT+0x178d0, %r13
nop
nop
nop
inc %rsi
mov (%r13), %di
nop
nop
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_WC+0x1a28, %rsi
lea addresses_WC+0xcef0, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $84, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $65326, %rbx

// Load
lea addresses_normal+0x15a28, %r9
nop
nop
nop
nop
dec %rdi
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
add %r10, %r10

// Load
lea addresses_PSE+0x2e60, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %r11, %r11
movups (%r9), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
nop
cmp $47822, %rsi

// REPMOV
lea addresses_D+0xe828, %rsi
lea addresses_PSE+0xad0, %rdi
nop
nop
nop
xor $61567, %rbx
mov $111, %rcx
rep movsq
nop
nop
nop
xor %r13, %r13

// Store
mov $0x5f35360000000778, %r11
nop
nop
nop
and $44063, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r11)
nop
and %r13, %r13

// Store
lea addresses_US+0x1b28, %rsi
cmp $40500, %r10
movl $0x51525354, (%rsi)
xor $19447, %r13

// Faulty Load
lea addresses_D+0xe828, %r11
nop
and %r10, %r10
mov (%r11), %esi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': True}}
{'36': 909}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
