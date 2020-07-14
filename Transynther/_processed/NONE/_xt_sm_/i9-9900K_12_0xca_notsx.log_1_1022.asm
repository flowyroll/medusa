.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1859f, %rax
nop
nop
nop
nop
cmp $60041, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rax)
cmp $49726, %r14
lea addresses_normal_ht+0xc9f, %rsi
lea addresses_D_ht+0x1a5bb, %rdi
nop
xor $26876, %r9
mov $10, %rcx
rep movsb
nop
nop
dec %r10
lea addresses_UC_ht+0x18b9f, %rax
clflush (%rax)
sub %r9, %r9
mov (%rax), %r14
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x12589, %rcx
nop
nop
nop
nop
sub %r9, %r9
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x1dc9f, %rsi
lea addresses_WT_ht+0xc2eb, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $76, %rcx
rep movsl
nop
add %rdx, %rdx
lea addresses_A_ht+0x83f, %rsi
lea addresses_UC_ht+0x1c4bf, %rdi
nop
nop
add %r9, %r9
mov $66, %rcx
rep movsb
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x1e59f, %rdx
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x559f, %rsi
lea addresses_A_ht+0xab97, %rdi
nop
nop
nop
nop
cmp $21820, %rdx
mov $8, %rcx
rep movsw
xor %r9, %r9
lea addresses_normal_ht+0x1019f, %rsi
nop
nop
nop
nop
sub %r14, %r14
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
add $34577, %r14
lea addresses_D_ht+0x1667f, %rdx
nop
nop
nop
nop
xor %r10, %r10
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
add $57611, %rdx
lea addresses_WT_ht+0xf89f, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $53974, %rcx
movb $0x61, (%r9)
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rdx

// Store
lea addresses_UC+0x1629f, %r8
xor $31664, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
xor $64251, %r12

// Store
lea addresses_WC+0x1019f, %rdx
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
nop
nop
dec %r12

// Load
lea addresses_RW+0xb1cf, %r10
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r10), %r8
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_PSE+0x12a9f, %r8
nop
nop
nop
nop
sub %r11, %r11
movb (%r8), %r15b
nop
nop
inc %r8

// Store
lea addresses_WT+0x159f, %r8
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r8)
nop
nop
add $41484, %r10

// Store
lea addresses_RW+0x1f41f, %r12
nop
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_UC+0x1b99f, %rbp
nop
nop
nop
sub %r15, %r15
movw $0x5152, (%rbp)
nop
inc %r11

// Faulty Load
lea addresses_WT+0x159f, %r10
clflush (%r10)
cmp $2523, %r11
mov (%r10), %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'58': 1}
58
*/
