.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc65f, %r9
and %rdi, %rdi
movl $0x61626364, (%r9)
nop
add %r14, %r14
lea addresses_D_ht+0x17f5f, %rcx
nop
nop
xor $46520, %r15
mov (%rcx), %r11w
nop
nop
add $24396, %rcx
lea addresses_UC_ht+0x21b7, %rsi
lea addresses_normal_ht+0xc55f, %rdi
clflush (%rsi)
sub %rax, %rax
mov $103, %rcx
rep movsq
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x1e8b9, %rax
and %r14, %r14
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm5
vpextrq $0, %xmm5, %r15
cmp %rdi, %rdi
lea addresses_WT_ht+0xdf0f, %rsi
lea addresses_D_ht+0x6f3f, %rdi
nop
dec %r9
mov $118, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x14f5f, %r11
nop
nop
lfence
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
and $18726, %rcx
lea addresses_normal_ht+0x10cdf, %rcx
nop
cmp %rdi, %rdi
movb (%rcx), %al
nop
nop
nop
xor $45806, %rsi
lea addresses_D_ht+0xa3b, %rcx
nop
nop
nop
nop
nop
cmp $59690, %rsi
mov (%rcx), %r9
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1d8df, %r15
and $26813, %r14
mov (%r15), %eax
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x835f, %r11
nop
nop
dec %rcx
mov (%r11), %r9
nop
cmp $50357, %rcx
lea addresses_A_ht+0x31c7, %rdi
nop
nop
add $8548, %r15
movl $0x61626364, (%rdi)
xor $18627, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi

// Store
lea addresses_WC+0xa55f, %r10
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
xor $3258, %r12

// Store
lea addresses_PSE+0x1615f, %rax
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rax)
nop
cmp %rax, %rax

// Store
lea addresses_D+0x8e1f, %rdi
nop
nop
nop
xor %r10, %r10
movl $0x51525354, (%rdi)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_A+0x655f, %r15
nop
nop
nop
sub %r11, %r11
movb $0x51, (%r15)
inc %r12

// Load
lea addresses_normal+0x758f, %rcx
nop
nop
nop
nop
nop
xor $35148, %r11
mov (%rcx), %r12
nop
nop
nop
nop
add $34551, %r11

// Store
mov $0x259c30000000041f, %rcx
nop
sub %r12, %r12
movb $0x51, (%rcx)
nop
nop
xor %r15, %r15

// Store
lea addresses_UC+0x12b5f, %r11
nop
cmp %rax, %rax
movl $0x51525354, (%r11)
dec %r12

// Store
lea addresses_WC+0x1fa5f, %r11
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovaps %ymm1, (%r11)
nop
nop
dec %r11

// Load
mov $0x5b5503000000053f, %r11
nop
nop
nop
nop
sub $18158, %r10
movb (%r11), %r12b
nop
nop
nop
nop
and $40119, %r12

// Load
lea addresses_WT+0x1fcdf, %rdi
nop
nop
nop
cmp %r10, %r10
mov (%rdi), %r15d
nop
and %rax, %rax

// Store
lea addresses_normal+0x19a5f, %r15
nop
nop
dec %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
nop
nop
sub $60793, %rcx

// Faulty Load
mov $0x52aade0000000d5f, %rdi
and $42639, %r10
mov (%rdi), %eax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
