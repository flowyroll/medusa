.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x13671, %rsi
lea addresses_WC_ht+0x12d81, %rdi
cmp $7555, %r11
mov $41, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xa2d1, %r9
nop
nop
sub %rdx, %rdx
movb (%r9), %r13b
dec %r9
lea addresses_WC_ht+0x6bf1, %rdx
sub $31312, %r9
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %r11
and $51447, %rcx
lea addresses_D_ht+0xe125, %r13
nop
nop
nop
nop
nop
and $28138, %r9
movw $0x6162, (%r13)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x1dd11, %rdi
nop
nop
nop
nop
dec %rdx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x34d, %rsi
lea addresses_WC_ht+0xa7b1, %rdi
nop
nop
nop
cmp $19227, %rax
mov $23, %rcx
rep movsq
nop
add %r11, %r11
lea addresses_WT_ht+0xc005, %rsi
lea addresses_WT_ht+0xe8d1, %rdi
nop
and $53768, %rdx
mov $41, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x1ebb1, %rax
nop
nop
nop
nop
sub $20825, %rdi
movl $0x61626364, (%rax)
nop
nop
and %r13, %r13
lea addresses_D_ht+0x2df1, %rdi
nop
nop
nop
nop
add $12304, %rax
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
and $31286, %r11
lea addresses_D_ht+0x127f1, %rcx
nop
nop
nop
nop
add %rax, %rax
movb (%rcx), %dl
cmp %rdx, %rdx
lea addresses_WT_ht+0x18971, %rdi
nop
nop
nop
nop
add %rax, %rax
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
nop
xor $7438, %rdx
lea addresses_D_ht+0x10b81, %r11
nop
nop
xor $41574, %r13
movw $0x6162, (%r11)
nop
nop
nop
and $57984, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r9
push %rsi

// Store
lea addresses_WT+0xfff1, %r13
nop
and %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
add $56844, %r10

// Store
lea addresses_WT+0x15b53, %r12
nop
nop
nop
nop
nop
add $285, %r15
movw $0x5152, (%r12)
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_PSE+0x1b7f1, %r13
nop
nop
nop
nop
nop
cmp $46799, %r9
movaps (%r13), %xmm2
vpextrq $1, %xmm2, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'47': 11, 'ff': 1, '00': 9254, '49': 11405, '48': 7, '44': 1151}
00 00 00 49 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 44 00 49 00 49 49 00 49 49 00 00 49 44 49 49 00 49 44 00 49 00 49 49 00 49 00 49 49 00 49 00 00 49 00 49 49 00 49 49 44 00 49 00 49 44 00 49 00 00 49 49 00 49 00 49 49 44 00 49 44 00 49 00 49 49 44 00 49 00 00 49 00 49 00 49 49 49 00 49 44 00 49 00 00 49 00 00 49 00 00 49 00 00 49 49 00 49 00 00 49 00 00 49 00 49 49 00 49 49 00 49 49 00 49 00 49 49 49 00 49 49 00 49 49 00 49 44 00 49 49 00 49 00 49 49 00 49 44 00 49 44 00 49 49 44 49 49 00 49 49 00 00 49 00 49 00 49 49 00 00 49 49 00 49 44 00 49 44 00 49 44 49 49 00 49 00 49 49 00 49 49 00 00 49 00 00 49 00 00 49 44 00 49 49 49 00 49 49 00 49 49 49 49 00 49 49 00 00 49 00 00 49 44 00 49 00 00 49 00 49 49 00 49 44 00 49 44 00 49 44 00 49 00 49 49 00 49 44 00 49 00 49 49 00 49 49 00 49 00 49 49 00 00 49 00 00 49 00 00 49 00 49 49 00 49 49 00 49 44 00 49 44 49 49 49 49 00 49 49 00 00 49 00 49 00 00 49 00 49 00 49 49 00 49 49 00 49 00 00 49 00 49 49 44 00 49 44 00 49 49 00 49 00 00 49 00 49 00 49 49 00 00 49 00 49 00 00 49 00 49 49 00 49 49 49 44 00 49 00 49 49 00 49 44 49 49 49 00 49 44 00 49 00 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 00 49 49 44 00 49 44 00 49 00 49 49 00 49 44 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 44 00 49 49 00 49 00 00 49 49 00 49 49 00 00 49 00 00 49 00 49 00 00 49 44 00 49 49 00 49 49 00 49 00 49 49 00 49 49 00 00 49 00 49 49 00 00 49 00 00 49 44 00 49 49 00 49 00 00 49 00 49 00 49 49 00 49 00 49 49 00 49 49 00 49 49 49 00 49 49 00 49 49 00 49 00 49 00 49 49 00 49 00 49 49 00 49 00 00 49 49 49 49 49 00 49 00 49 49 00 49 00 49 49 00 49 00 49 49 00 49 49 00 00 49 00 49 49 00 49 49 00 49 49 00 00 49 49 00 49 44 00 49 00 49 49 49 44 00 49 49 00 49 44 00 49 49 00 49 00 00 49 44 00 49 00 49 00 00 49 49 49 00 49 49 00 49 49 00 49 49 00 00 49 44 00 49 44 49 49 00 49 49 00 49 49 00 49 00 49 49 00 49 49 00 49 44 00 49 00 00 49 44 00 49 44 00 49 49 00 49 49 00 49 44 00 49 44 49 49 44 49 49 49 00 49 44 00 49 00 49 49 00 49 00 49 49 00 49 00 49 49 00 00 49 00 49 49 00 49 49 00 49 00 49 00 00 49 00 49 49 00 49 49 00 49 00 00 49 00 00 49 00 49 49 00 49 00 49 49 00 49 49 00 00 49 00 49 49 00 49 00 00 49 00 49 49 00 49 49 00 49 49 00 49 00 00 49 49 49 00 00 49 00 00 49 00 49 49 00 00 49 00 49 49 00 49 00 00 49 00 49 49 00 00 49 00 49 49 00 49 44 00 49 00 49 49 00 49 00 49 00 49 49 00 49 44 00 49 00 49 49 00 00 49 44 00 49 00 49 49 00 49 00 49 49 00 49 49 00 00 49 44 00 49 44 00 49 00 49 49 00 00 49 44 00 49 00 00 49 00 49 00 00 49 44 00 49 00 49 49 49 44 00 49 00 49 00 00 49 49 00 49 49 00 00 49 00 49 49 00 49 49 00 49 00 00 49 00 49 44 00 49 00 49 49 00 49 49 00 49 49 00 49 00 49 00 00 49 00 49 49 00 00 49 00 49 00 49 49 00 49 49 00 49 44 00 49 00 49 44 00 00 49 00 49 49 00 49 49 00 00 49 44 49 44 00 49 00 49 49 00 00 49 00 49 49 00 00 44 00 49 00 49 49 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 49 00 00 49 00 49 49 00 49 49 00 00 49 49 00 49 00 00 49 00 49 49 49 49 00 49 00 49 49
*/
