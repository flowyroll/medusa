.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x190ab, %r8
nop
nop
nop
nop
inc %r12
movw $0x6162, (%r8)
inc %rdi
lea addresses_WC_ht+0x85a7, %rsi
lea addresses_normal_ht+0x10ee7, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $97, %rcx
rep movsl
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x6c27, %rdi
add $43113, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdi)
cmp $57539, %r12
lea addresses_A_ht+0x12a8f, %r12
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
sub $12142, %rdi
lea addresses_WT_ht+0x13197, %rcx
nop
nop
and $26772, %r8
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
dec %r14
lea addresses_D_ht+0x129a7, %r14
nop
nop
nop
xor $20170, %rcx
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
inc %r12
lea addresses_A_ht+0x172e7, %rcx
nop
nop
nop
nop
nop
xor $29856, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $14470, %rdi
lea addresses_WC_ht+0x1467, %rdi
nop
nop
nop
nop
nop
inc %rsi
movb (%rdi), %r15b
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x16239, %rcx
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
sub $55055, %rdi
lea addresses_normal_ht+0x8a57, %r15
clflush (%r15)
xor %r14, %r14
movb (%r15), %r12b
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x12767, %r14
xor $41396, %rsi
movb $0x61, (%r14)
nop
nop
dec %r14
lea addresses_WC_ht+0xc87, %rsi
lea addresses_A_ht+0xb107, %rdi
nop
nop
nop
nop
nop
and $19943, %rdx
mov $2, %rcx
rep movsl
nop
nop
sub $30516, %rdi
lea addresses_WC_ht+0x11267, %rsi
lea addresses_WC_ht+0x1edbf, %rdi
nop
nop
nop
and $64161, %r15
mov $84, %rcx
rep movsw
nop
nop
nop
nop
xor $59243, %rdi
lea addresses_normal_ht+0x1a907, %r12
cmp $11613, %rdi
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
xor $28733, %r8
lea addresses_normal_ht+0x10c67, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%rdx), %r14b
nop
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rdx
push %rsi

// Faulty Load
lea addresses_UC+0x1b067, %rbp
nop
nop
and $36886, %r15
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'44': 496, '46': 428, '49': 381, '00': 1718, '48': 18806}
48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 00 44 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 49 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 49 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 44 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 49 48 48 49 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 44 48 48 48 44 48 00 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 44 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 46 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 44 00 00 48 48 48 00 48 48 49 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 49 48 48 48 48 48 49 48 48 48 48 48 00 00 00 48 48 48 48 48 00 46 48 48 00 46 48 48 00 48 48 48 48 46 48 48 48 48 48 00 48 48 48 48 48 48 48 44 48 49 44 00 00 48 48 48 48 48 48 44 48 48 48 48 48 49 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 44 44 48 00 48 48 48 44 48 46 48 48 48 48 48 00 48 48 48 48 48 48 48 46 48 49 48 48 48 44 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 46 48 48 00 48 48 48 48 48 48 48 00 48 48 00 46 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 44 48 48 48 48 48 48 49 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 00 48 48 48 48 48 48 49 48 48 48 48 48 48 46 48 48 48 00 46 48 48 48 48 48 49 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 44 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 46 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 46 00 48 44 46 48 48 46 48 48 48 48 46 48 48 48 48 48 48 48 49 48 48 48 48 48 48 48 48 48 48 48 49 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 49 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 49 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 46 48 48 00 48 48 48 48 48 48 48 48 48 48 44 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 44 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 49 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 46 48 48 48 00 48 48 48 00 48 48 48 48 48 48 44 48 48 48 48 46 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48
*/
