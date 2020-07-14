.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x4e98, %rsi
lea addresses_UC_ht+0x15698, %rdi
nop
nop
nop
nop
add $53844, %r13
mov $6, %rcx
rep movsq
nop
nop
and %r15, %r15
lea addresses_UC_ht+0xf498, %r14
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x1804e, %r13
nop
nop
nop
nop
add %rcx, %rcx
movups (%r13), %xmm2
vpextrq $0, %xmm2, %rdx
nop
sub $31380, %rcx
lea addresses_UC_ht+0x6c48, %rsi
and %rcx, %rcx
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
add $59034, %rsi
lea addresses_WT_ht+0x7b98, %rsi
nop
nop
and $4644, %r14
mov (%rsi), %r15w
cmp %rdi, %rdi
lea addresses_A_ht+0x17618, %rdx
nop
nop
nop
nop
xor $63763, %r15
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0xd498, %rsi
lea addresses_WT_ht+0xec98, %rdi
nop
and %r11, %r11
mov $34, %rcx
rep movsq
nop
nop
add $11141, %rcx
lea addresses_WT_ht+0x168aa, %r13
nop
nop
nop
nop
nop
add $52862, %rsi
mov (%r13), %r14
cmp $18092, %r13
lea addresses_WT_ht+0x1b498, %rdi
nop
nop
nop
nop
and $40512, %r14
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
xor $30962, %rdx
lea addresses_D_ht+0x9e98, %rsi
lea addresses_WT_ht+0xcd8, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $67, %rcx
rep movsw
nop
nop
sub $25998, %r11
lea addresses_WT_ht+0xd918, %rsi
lea addresses_WT_ht+0x1dd12, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $3, %rcx
rep movsq
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x4c00, %rdx
xor %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rdx)
nop
nop
xor $45285, %r14
lea addresses_normal_ht+0x10c60, %r11
inc %rdi
movb $0x61, (%r11)
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0xdb6a, %r15
nop
nop
nop
xor $1606, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0xc498, %rbp
nop
nop
cmp %r11, %r11
mov (%rbp), %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'00': 7}
00 00 00 00 00 00 00
*/
