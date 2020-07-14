.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a074, %rsi
lea addresses_UC_ht+0xb7d4, %rdi
inc %r10
mov $90, %rcx
rep movsl
cmp %rdi, %rdi
lea addresses_WC_ht+0x4b4, %rax
nop
nop
nop
xor %r8, %r8
movb (%rax), %r13b
nop
add $16446, %rdi
lea addresses_WT_ht+0x1c71c, %rsi
nop
nop
nop
nop
nop
and %r8, %r8
mov (%rsi), %cx
nop
nop
nop
nop
sub $1849, %rdi
lea addresses_WT_ht+0x137d4, %r8
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x8fd4, %rsi
lea addresses_WC_ht+0x5d4, %rdi
nop
nop
and $9951, %r11
mov $21, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $32329, %rcx
lea addresses_normal_ht+0x1ee78, %rsi
lea addresses_normal_ht+0x3006, %rdi
nop
nop
inc %r11
mov $85, %rcx
rep movsq
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x135d4, %rdi
nop
nop
cmp $37540, %rsi
movb $0x61, (%rdi)
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x17fd4, %r8
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
cmp $606, %r8
lea addresses_WT_ht+0x16dd4, %rsi
lea addresses_A_ht+0xd114, %rdi
nop
nop
nop
nop
and $1426, %rax
mov $16, %rcx
rep movsb
cmp $56215, %rcx
lea addresses_UC_ht+0xdbd4, %rax
nop
and $45870, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rax)
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x125d4, %r8
nop
and $8934, %r11
mov (%r8), %rdi
nop
nop
nop
cmp $6133, %r11
lea addresses_WT_ht+0x11fd4, %r8
nop
nop
nop
nop
add $49966, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x95da, %rsi
lea addresses_A_ht+0x1ec10, %rdi
nop
nop
xor %r13, %r13
mov $78, %rcx
rep movsl
nop
nop
nop
add $12281, %r13
lea addresses_UC_ht+0x18646, %rsi
lea addresses_WC_ht+0x11bd4, %rdi
add $23047, %r13
mov $86, %rcx
rep movsw
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1d254, %rcx
nop
nop
sub %r11, %r11
movb (%rcx), %r10b
nop
nop
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x103d4, %rbp
nop
nop
nop
nop
nop
and $42402, %r9
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
nop
dec %r13

// Store
lea addresses_WT+0xa7d4, %r15
nop
nop
nop
cmp $27691, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
add $42955, %rbp

// Store
lea addresses_normal+0x8ab4, %rbp
xor $8520, %r14
movw $0x5152, (%rbp)
nop
nop
nop
nop
cmp %r9, %r9

// REPMOV
lea addresses_RW+0x2074, %rsi
lea addresses_A+0x5a59, %rdi
nop
and $22955, %r9
mov $113, %rcx
rep movsb
nop
nop
and $34081, %rdi

// Store
lea addresses_A+0x103d4, %r10
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
nop
nop
nop
cmp $45525, %rbp

// Store
lea addresses_WT+0x19268, %rdi
cmp $31361, %r14
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_A+0x103d4, %rbp
nop
nop
nop
nop
nop
cmp $26740, %r9
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
