.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x7b30, %r9
nop
nop
nop
nop
and %rdx, %rdx
movw $0x6162, (%r9)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0xc8b0, %r9
nop
nop
nop
nop
nop
cmp %r11, %r11
movw $0x6162, (%r9)
nop
nop
add $51457, %r11
lea addresses_A_ht+0xa388, %rsi
lea addresses_WC_ht+0x15cb0, %rdi
clflush (%rdi)
and %r11, %r11
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xa530, %rdx
nop
nop
nop
nop
xor $7290, %rbp
movb (%rdx), %r9b
nop
cmp $62590, %rcx
lea addresses_WT_ht+0x1e130, %rsi
lea addresses_normal_ht+0x11830, %rdi
nop
nop
add $36486, %r11
mov $96, %rcx
rep movsw
nop
xor $4793, %rcx
lea addresses_D_ht+0x10ff0, %rsi
lea addresses_A_ht+0xc540, %rdi
nop
lfence
mov $51, %rcx
rep movsb
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x6008, %r10
nop
nop
nop
nop
nop
dec %rbp
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
sub $1949, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Load
lea addresses_WT+0x9130, %r14
nop
nop
nop
xor $15877, %rdi
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
nop
nop
and $7383, %rcx

// Load
lea addresses_RW+0x8130, %r10
nop
nop
nop
nop
sub $58119, %r15
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
add %rbp, %rbp

// Store
lea addresses_UC+0x11840, %r14
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%r14)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WT+0x5930, %r10
nop
nop
nop
nop
nop
inc %r15
movl $0x51525354, (%r10)
and $52804, %r15

// Load
mov $0x2149fb0000000cc0, %rcx
nop
nop
add $41270, %r10
mov (%rcx), %r14w
nop
nop
nop
nop
xor $15526, %r14

// Store
lea addresses_UC+0x2ab0, %r14
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovntdq %ymm7, (%r14)
nop
nop
sub %rcx, %rcx

// Load
lea addresses_D+0x123b0, %r15
nop
nop
nop
nop
nop
add $216, %rcx
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
sub $23731, %r14

// Store
lea addresses_WC+0x10630, %r14
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x13720, %r14
nop
nop
nop
sub $11411, %r15
movl $0x51525354, (%r14)
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WT+0x9130, %r14
and $26056, %rbp
mov (%r14), %r10d
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'39': 14041}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
