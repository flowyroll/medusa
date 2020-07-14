.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xeffe, %rcx
nop
nop
nop
nop
nop
sub $23849, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rcx)
nop
nop
xor $19542, %rsi
lea addresses_WC_ht+0x1892, %rsi
lea addresses_D_ht+0x1aeb2, %rdi
nop
nop
nop
nop
nop
xor $28525, %r15
mov $45, %rcx
rep movsq
nop
sub %r15, %r15
lea addresses_UC_ht+0xcc92, %rsi
lea addresses_WT_ht+0x892, %rdi
nop
nop
and %r8, %r8
mov $79, %rcx
rep movsw
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0xf312, %rcx
nop
sub %rsi, %rsi
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1c562, %rsi
lea addresses_A_ht+0x14c92, %rdi
nop
nop
add %r13, %r13
mov $71, %rcx
rep movsb
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1e192, %rdx
nop
nop
nop
nop
nop
cmp $27789, %r15
movb (%rdx), %r13b
nop
nop
cmp $39895, %r13
lea addresses_WC_ht+0x12f32, %r15
nop
add %rdi, %rdi
movb (%r15), %cl
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x16292, %rsi
nop
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%rsi)
sub $22611, %r13
lea addresses_WT_ht+0x4dfe, %rdx
nop
nop
nop
nop
nop
inc %rsi
mov (%rdx), %edi
nop
nop
nop
xor $12757, %rdx
lea addresses_UC_ht+0x92, %rsi
lea addresses_WC_ht+0xf0b2, %rdi
nop
nop
add $27979, %rbx
mov $95, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x8202, %rcx
clflush (%rcx)
nop
nop
nop
and $30150, %rbx
mov (%rcx), %r15w
add $22209, %rdi
lea addresses_UC_ht+0x14122, %rsi
lea addresses_WT_ht+0x15892, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $107, %rcx
rep movsw
dec %r8
lea addresses_UC_ht+0x1ac92, %rbx
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xdcb2, %r13
add %rsi, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
sub $5834, %r13
lea addresses_A_ht+0xef12, %rsi
lea addresses_normal_ht+0x16dd2, %rdi
sub $9302, %rbx
mov $41, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $5247, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rsi

// Store
lea addresses_WT+0x3072, %r11
nop
nop
sub $10216, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r11)
nop
xor $15660, %r9

// Store
mov $0x40a400000000492, %rcx
nop
nop
nop
nop
sub $7165, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovntdq %ymm1, (%rcx)
and %rcx, %rcx

// Store
lea addresses_D+0x43d6, %r11
nop
nop
dec %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
xor $43765, %r15

// Store
lea addresses_D+0x15e22, %r10
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r10)
xor $12489, %rsi

// Faulty Load
lea addresses_PSE+0xec92, %r11
nop
and $11217, %r13
mov (%r11), %ecx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'33': 8701}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
