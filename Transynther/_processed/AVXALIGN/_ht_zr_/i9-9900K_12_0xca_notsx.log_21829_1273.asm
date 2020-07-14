.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1b8ab, %r9
add $9149, %r8
movb $0x61, (%r9)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x16dc1, %r10
nop
nop
nop
xor $32880, %r14
mov $0x6162636465666768, %r8
movq %r8, (%r10)
xor %rbx, %rbx
lea addresses_WT_ht+0x1aeab, %r9
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%r9)
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x3e03, %rsi
lea addresses_A_ht+0x26ab, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $79, %rcx
rep movsq
nop
nop
and $55630, %r10
lea addresses_A_ht+0x1003c, %rsi
add $57088, %rbx
movl $0x61626364, (%rsi)
add $9081, %rcx
lea addresses_UC_ht+0x13eab, %r14
nop
sub %rdi, %rdi
movl $0x61626364, (%r14)
nop
inc %rbx
lea addresses_A_ht+0x1ddb, %rsi
nop
nop
nop
nop
sub $3083, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
and $18691, %r14
lea addresses_D_ht+0x15713, %rsi
lea addresses_A_ht+0xa52b, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $4721, %r8
mov $70, %rcx
rep movsw
inc %rsi
lea addresses_D_ht+0x12fd1, %r8
nop
nop
nop
nop
nop
xor $2707, %r10
movw $0x6162, (%r8)
add %r8, %r8
lea addresses_UC_ht+0x7cb, %rcx
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
add $7288, %rsi
lea addresses_WC_ht+0xfad, %r9
add $54301, %r14
movb $0x61, (%r9)
nop
cmp %r9, %r9
lea addresses_D_ht+0x5eb3, %r9
nop
nop
nop
nop
dec %r10
mov (%r9), %ebx
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x584b, %rcx
nop
nop
nop
nop
nop
inc %r8
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
nop
sub $30562, %rcx
lea addresses_WT_ht+0x1a283, %rcx
nop
nop
nop
nop
inc %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x73ab, %rsi
lea addresses_normal_ht+0xed64, %rdi
cmp %rbx, %rbx
mov $6, %rcx
rep movsw
nop
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9

// Faulty Load
mov $0xeab, %r9
xor $56741, %r14
vmovntdqa (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'46': 2213, '00': 5707, '48': 13909}
48 46 48 48 48 00 48 48 00 48 00 48 48 00 48 48 48 48 48 00 48 48 00 48 48 46 48 00 48 48 48 48 48 00 46 48 48 48 00 48 48 00 00 48 00 48 00 48 48 00 48 48 00 48 48 48 46 48 00 48 48 00 48 46 48 48 00 48 00 48 48 00 46 48 46 48 00 00 00 00 46 48 48 48 48 00 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 46 00 00 46 48 48 48 48 48 00 48 48 00 48 00 48 48 46 00 48 00 00 48 00 48 48 46 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 00 46 48 48 00 48 00 48 46 48 48 00 48 48 48 48 48 00 48 48 00 48 48 00 46 48 48 00 48 48 46 48 48 46 48 46 00 46 48 48 48 00 48 48 00 48 48 48 00 48 00 00 48 00 00 00 00 46 48 48 48 48 00 48 48 48 48 00 48 00 48 00 48 48 46 48 48 46 48 48 00 48 48 46 48 48 48 48 48 48 48 00 48 00 46 48 48 00 00 46 48 48 48 00 48 00 48 48 48 48 46 00 48 00 48 48 00 46 48 48 48 00 48 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 48 48 00 48 00 00 48 46 48 48 00 48 48 46 48 48 46 48 48 00 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 46 48 48 00 48 48 46 48 48 48 48 48 48 48 00 48 48 00 48 48 46 48 00 48 48 48 48 00 48 48 48 48 46 48 46 48 48 00 48 48 46 48 48 00 46 48 48 48 46 00 48 00 48 48 48 00 48 00 48 48 48 00 48 48 48 00 48 48 46 48 48 46 48 48 00 48 48 46 00 00 46 46 00 46 48 48 48 46 00 00 48 00 00 48 00 48 48 00 48 48 00 48 48 46 48 48 48 48 48 46 48 00 48 48 00 48 48 46 48 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 48 00 00 48 00 48 48 00 48 48 00 00 48 48 46 00 48 00 48 48 48 48 46 00 48 00 48 48 48 48 48 48 00 48 46 48 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 48 46 48 00 48 48 00 48 48 46 48 48 46 48 00 00 48 00 00 48 00 00 48 00 00 46 00 46 46 48 48 00 48 48 46 00 00 46 48 48 48 48 46 00 48 00 48 00 00 00 46 48 46 48 48 48 48 48 48 48 48 00 48 48 46 48 48 48 48 00 46 48 00 48 00 48 48 48 00 48 48 48 00 48 00 48 00 00 00 46 46 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 00 48 00 00 00 48 00 00 48 00 00 46 48 48 00 48 48 48 00 48 48 48 48 48 46 48 48 00 48 48 48 48 46 46 00 46 48 00 48 00 48 00 48 48 46 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 46 48 00 00 46 46 48 48 48 00 48 00 48 00 48 00 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 00 46 48 00 48 00 48 48 46 48 48 46 48 48 00 48 48 46 48 48 46 48 48 48 48 48 48 48 48 00 48 00 48 00 00 00 46 00 48 00 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 46 00 46 48 48 48 48 48 48 00 48 48 48 00 48 46 48 48 48 46 48 48 48 48 48 00 48 48 48 48 00 48 46 48 48 48 00 48 48 48 48 00 48 00 48 48 00 48 48 00 48 48 00 48 00 00 48 48 00 48 48 46 48 48 48 00 48 48 48 48 46 48 48 00 48 00 48 46 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 46 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 46 48 00 00 48 00 48 48 48 00 48 00 48 00 48 46 48 48 48 46 48 00 48 00 48 48 00 48 48 46 48 48 00 48 48 48 00 00 46 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 46 48
*/
