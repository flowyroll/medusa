.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11ecf, %rsi
lea addresses_normal_ht+0x134cf, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r13, %r13
mov $70, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x12854, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
cmp $62885, %rsi
lea addresses_UC_ht+0x11bd7, %rbx
nop
nop
nop
nop
nop
and $8932, %rax
mov (%rbx), %rcx
nop
nop
nop
nop
nop
add $29959, %rdi
lea addresses_UC_ht+0x1cb83, %rcx
clflush (%rcx)
xor $50741, %rsi
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
lfence
lea addresses_WC_ht+0x198a7, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %r13
movw $0x6162, (%r11)
nop
nop
nop
add $52856, %rax
lea addresses_normal_ht+0x27bb, %rsi
lea addresses_WT_ht+0xab0f, %rdi
nop
lfence
mov $99, %rcx
rep movsq
nop
sub $45730, %r10
lea addresses_WT_ht+0x705f, %rsi
lea addresses_D_ht+0x94cf, %rdi
nop
nop
and %rbx, %rbx
mov $102, %rcx
rep movsb
nop
dec %rsi
lea addresses_A_ht+0xbccf, %rbx
sub %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rbx
movntdq %xmm4, (%rbx)
nop
nop
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rax
push %rdx

// Load
lea addresses_RW+0x191cf, %r13
nop
nop
nop
nop
nop
dec %r8
mov (%r13), %edx
xor $30341, %r10

// Store
lea addresses_WT+0x1d8cf, %rax
nop
inc %r14
movb $0x51, (%rax)
inc %r8

// Load
lea addresses_UC+0x18020, %r14
nop
nop
and %r8, %r8
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
and $37301, %r11

// Store
lea addresses_US+0x154cf, %r14
clflush (%r14)
nop
nop
nop
sub $56228, %r13
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_normal+0x11f99, %r14
nop
nop
nop
nop
nop
and $44200, %rax
movl $0x51525354, (%r14)
nop
and %rax, %rax

// Load
lea addresses_normal+0x26f, %r14
nop
nop
xor %r11, %r11
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
xor %r11, %r11

// Store
lea addresses_UC+0x38cf, %rdx
xor %r11, %r11
movw $0x5152, (%rdx)
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_PSE+0x1d3cf, %r10
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
add %rdx, %rdx

// Load
mov $0x4d7, %r10
nop
nop
nop
nop
sub $30753, %r11
movb (%r10), %dl
nop
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_WT+0x168cf, %r11
nop
nop
nop
nop
nop
sub %r10, %r10
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'39': 210}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
