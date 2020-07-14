.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e3, %rdi
nop
nop
nop
nop
nop
cmp $12872, %r12
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0xdc53, %rcx
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rcx), %r15
nop
nop
nop
cmp $62249, %r12
lea addresses_UC_ht+0x154eb, %rcx
nop
xor $40902, %r11
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x17e63, %r11
nop
inc %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
dec %r11
lea addresses_normal_ht+0x162e3, %rcx
nop
inc %r15
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x19ae3, %rcx
nop
nop
add $18653, %r9
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x16889, %r13
nop
nop
nop
nop
and $18782, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
and $24529, %r15
lea addresses_normal_ht+0x1c233, %r15
add $61293, %r11
mov (%r15), %r12w
nop
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0xc6a3, %rdi
nop
xor %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xcabb, %r13
nop
nop
nop
nop
and $34273, %rcx
mov (%r13), %r12d
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x5ce3, %r15
nop
nop
nop
nop
nop
cmp $28504, %r12
movb (%r15), %r11b
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x82c3, %rsi
lea addresses_D_ht+0x42b3, %rdi
nop
sub %r13, %r13
mov $63, %rcx
rep movsw
sub $12987, %rcx
lea addresses_A_ht+0x10cf2, %r12
nop
nop
nop
sub $46728, %r11
movw $0x6162, (%r12)
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp

// Store
lea addresses_WT+0x36a3, %r13
nop
nop
nop
lfence
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r13)
cmp $14473, %r13

// Faulty Load
lea addresses_UC+0x44e3, %r14
nop
nop
nop
nop
nop
sub $53309, %r8
movaps (%r14), %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'49': 928, '44': 994, '48': 12548, '47': 2267, '00': 5092}
48 44 48 47 48 48 48 00 00 48 47 47 48 00 00 48 00 48 48 48 00 48 48 48 48 00 48 00 00 48 48 47 48 48 48 00 00 48 00 00 48 00 00 47 44 00 48 48 48 48 48 00 48 48 48 00 00 47 48 44 00 00 48 48 00 48 48 00 00 48 00 00 00 48 48 48 48 48 47 00 49 47 48 48 48 00 00 48 48 44 47 48 48 48 48 48 48 48 49 47 48 48 48 48 49 48 00 48 48 48 49 48 48 49 47 00 48 44 48 00 48 48 48 00 49 48 00 00 48 48 48 00 48 48 48 44 00 48 48 48 48 48 47 48 48 48 00 00 48 48 47 48 48 48 00 48 47 44 48 48 48 48 00 47 48 00 00 00 48 00 48 48 00 48 00 48 48 48 48 47 00 48 48 49 47 48 48 48 44 48 48 48 47 48 48 48 00 44 47 00 48 00 48 47 47 48 00 48 00 48 47 48 48 48 00 00 48 48 48 48 00 00 47 48 44 47 48 48 48 48 47 44 47 48 00 48 47 48 48 48 44 00 48 48 48 00 00 47 44 00 47 44 00 48 48 47 48 48 48 00 48 48 48 48 48 00 48 48 48 47 48 48 48 00 00 47 00 00 44 49 48 00 00 48 48 44 44 47 48 49 48 44 48 48 48 48 48 48 48 48 00 48 48 47 48 48 48 00 48 00 48 48 48 44 48 48 48 47 48 48 48 48 00 48 48 48 00 00 48 48 47 48 48 48 00 00 48 00 00 48 44 47 48 00 00 49 48 48 48 00 44 47 00 00 48 48 49 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 44 48 47 44 00 48 00 44 00 00 00 48 48 48 48 44 48 48 48 44 48 48 00 48 48 48 48 47 44 00 48 44 48 48 00 00 48 44 48 48 00 48 48 48 48 44 48 00 00 48 44 47 00 48 00 00 48 48 49 48 44 44 47 48 49 47 00 48 48 48 47 48 48 44 48 47 48 48 48 48 49 48 00 48 47 47 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 44 00 48 48 47 44 47 48 44 47 48 48 48 48 48 00 47 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 48 44 47 47 48 48 47 48 48 44 49 48 48 48 44 47 48 00 48 48 47 00 48 48 00 48 48 48 47 48 48 48 48 48 48 48 48 00 48 48 00 48 48 00 00 48 00 48 48 44 00 48 00 48 48 48 48 47 47 48 00 00 48 00 48 48 00 48 48 00 48 47 48 49 48 00 00 48 48 00 48 48 48 00 00 48 48 48 49 48 48 48 00 48 48 48 00 48 47 44 48 48 44 48 47 47 48 48 48 47 00 48 48 49 47 49 00 48 00 00 47 48 49 48 00 48 00 48 00 48 48 00 48 48 48 00 00 48 48 48 48 48 48 47 49 47 48 48 48 48 48 47 48 48 48 44 48 48 48 00 48 48 48 00 44 47 00 00 44 49 48 48 48 00 48 48 44 48 48 48 48 47 00 47 48 48 00 48 49 48 00 48 48 48 48 47 48 48 48 48 48 48 44 48 48 00 48 00 48 00 48 47 44 48 00 48 00 44 49 00 48 48 48 00 48 48 48 00 48 48 48 44 48 00 48 48 49 47 48 47 00 48 00 44 48 00 48 48 49 48 48 48 48 48 48 48 49 48 48 48 48 00 48 00 48 00 48 48 48 48 47 48 48 44 49 48 00 48 00 48 00 48 48 48 47 47 48 48 48 48 48 48 48 00 48 48 00 00 48 00 00 48 44 48 48 48 47 49 47 48 00 00 47 49 48 48 49 48 48 00 48 48 00 00 48 00 00 00 48 00 00 48 00 00 48 00 48 48 00 48 47 48 48 47 44 00 48 00 00 48 44 47 48 48 00 00 00 48 00 48 00 48 48 47 49 48 48 00 48 47 47 48 00 47 48 47 00 48 44 48 48 00 48 48 00 48 48 00 00 47 48 48 48 48 48 49 48 48 48 48 48 00 44 47 48 48 48 00 00 48 00 48 48 00 48 47 48 00 00 48 48 49 48 48 48 48 47 48 00 48 48 00 48 48 48 49 47 49 00 48 00 00 47 48 48 48 00 48 48 49 44 48 48 47 48 47 48 48 00 48 48 48 00 00 48 48 48 48 48 48 49 47 48 00 00 48 00 00 47 49 48 48 49 44 48
*/
