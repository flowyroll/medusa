.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1628c, %r11
nop
mfence
movw $0x6162, (%r11)
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x1738c, %rbx
nop
sub %r14, %r14
movb $0x61, (%rbx)
xor $22917, %r14
lea addresses_A_ht+0x560c, %rsi
lea addresses_WT_ht+0x99cc, %rdi
nop
xor %rbx, %rbx
mov $38, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x14b8c, %r14
nop
nop
cmp $37221, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%r14)
nop
nop
nop
nop
add $59174, %rdx
lea addresses_A_ht+0x1e38c, %rdi
nop
nop
lfence
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
nop
and $47115, %r14
lea addresses_A_ht+0x1db8c, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
add %r14, %r14
lea addresses_WT_ht+0xe78c, %rsi
lea addresses_WC_ht+0x75cc, %rdi
nop
nop
nop
xor $16487, %rdx
mov $47, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_UC_ht+0x16b8c, %rbx
cmp $37038, %r15
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
nop
and %r11, %r11
lea addresses_A_ht+0xf21c, %rsi
lea addresses_UC_ht+0x1198c, %rdi
nop
nop
nop
nop
nop
xor $39957, %r11
mov $8, %rcx
rep movsw
xor %rbx, %rbx
lea addresses_WT_ht+0x13c4c, %rcx
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp $2299, %r14
lea addresses_D_ht+0x1b34c, %rcx
nop
nop
nop
cmp %rdi, %rdi
movb (%rcx), %r11b
nop
nop
nop
add $42887, %rbx
lea addresses_A_ht+0x70cc, %rcx
nop
sub %r14, %r14
movb $0x61, (%rcx)
nop
nop
cmp $52716, %rbx
lea addresses_D_ht+0x182c, %r15
nop
xor $18029, %rsi
mov (%r15), %r11d
nop
nop
nop
dec %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rdi

// Load
lea addresses_A+0xf628, %r8
cmp %r13, %r13
movups (%r8), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
add $19620, %r15

// Store
mov $0x3ec, %r15
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovntdq %ymm0, (%r15)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_WT+0x1e78c, %r11
nop
add $8189, %r9
movl $0x51525354, (%r11)
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_RW+0x13b8c, %r11
sub $42142, %r15
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 540}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
