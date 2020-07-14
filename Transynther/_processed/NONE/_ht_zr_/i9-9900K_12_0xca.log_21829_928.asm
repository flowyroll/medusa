.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x43e3, %r8
nop
nop
nop
nop
nop
xor $6040, %r13
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x15ae3, %rsi
lea addresses_D_ht+0x7ae3, %rdi
and $9297, %r13
mov $6, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x152e3, %rdi
nop
nop
and %r10, %r10
mov (%rdi), %r8w
nop
nop
sub $29791, %rcx
lea addresses_normal_ht+0xf7e3, %r13
nop
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%r13)
nop
add %r10, %r10
lea addresses_normal_ht+0xbee3, %r13
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0xb353, %r10
nop
nop
nop
and %r8, %r8
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
add %rcx, %rcx
lea addresses_WT_ht+0x15af3, %r14
nop
nop
nop
nop
and $18536, %rcx
movb (%r14), %r13b
nop
nop
dec %rcx
lea addresses_WC_ht+0x19a23, %rdi
nop
xor $36632, %r10
mov (%rdi), %r13
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xbae3, %r10
nop
nop
and $37613, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x32e3, %r10
nop
nop
nop
nop
and $10248, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r10)
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_RW+0xd63, %r13
nop
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_RW+0x197e3, %r9
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%r9)
nop
nop
cmp %r13, %r13

// Store
mov $0xae3, %r15
xor %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r15)
nop
and %r9, %r9

// Faulty Load
lea addresses_WC+0x152e3, %r8
clflush (%r8)
inc %rsi
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'44': 932, '45': 3079, '00': 50, '46': 17768}
46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 45 45 45 45 45 45 45 45 45 45 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 45 45 45 45 44 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 45 45 45 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 00 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 00 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 45 45 45 45 45 45 45 45 45 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 45 45 45 45
*/
