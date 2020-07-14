.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf7cb, %rdx
nop
nop
nop
nop
sub $63388, %rax
movw $0x6162, (%rdx)
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x17230, %r8
nop
nop
nop
nop
nop
and %r15, %r15
movb $0x61, (%r8)
nop
and %r9, %r9
lea addresses_WT_ht+0xb0cb, %r13
sub $35723, %rbx
mov (%r13), %r9
nop
nop
cmp $33873, %r13
lea addresses_normal_ht+0x606b, %rdx
clflush (%rdx)
lfence
movb $0x61, (%rdx)
nop
nop
and %rax, %rax
lea addresses_D_ht+0xa54, %rsi
lea addresses_WT_ht+0xf6f3, %rdi
clflush (%rsi)
inc %r15
mov $111, %rcx
rep movsq
dec %r13
lea addresses_normal_ht+0x1028b, %rsi
lea addresses_A_ht+0x601b, %rdi
nop
nop
nop
add $36870, %rbx
mov $23, %rcx
rep movsw
nop
nop
dec %rsi
lea addresses_WC_ht+0x273b, %r9
nop
nop
nop
nop
and %rbx, %rbx
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
and $29298, %r8
lea addresses_WT_ht+0x17f8b, %rsi
lea addresses_WC_ht+0x798b, %rdi
nop
nop
nop
nop
inc %rax
mov $26, %rcx
rep movsw
xor %rdi, %rdi
lea addresses_normal_ht+0x348b, %rdi
xor $13739, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
dec %r9
lea addresses_D_ht+0x17f8b, %rsi
lea addresses_WC_ht+0x1c8b, %rdi
nop
xor %r9, %r9
mov $42, %rcx
rep movsq
and $7144, %rdx
lea addresses_normal_ht+0x1040b, %r9
nop
nop
nop
nop
inc %rax
movl $0x61626364, (%r9)
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1e8b, %rdi
nop
nop
nop
nop
cmp %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
and $44045, %rdx
lea addresses_normal_ht+0x7c2b, %rcx
sub $41855, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rcx)
nop
and $41234, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x2a8b, %rdx
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_US+0x2a8b, %rcx
nop
dec %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
inc %rdi

// Load
lea addresses_normal+0x1428b, %rdx
nop
sub %r15, %r15
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_A+0x1288b, %rcx
nop
nop
and %r8, %r8
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
sub $3819, %rsi

// Store
mov $0xc8b, %r14
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
nop
nop
nop
xor $64283, %rcx

// Store
lea addresses_D+0x1f773, %r15
sub $11630, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r15)
nop
nop
sub $23490, %rsi

// Faulty Load
lea addresses_US+0x2a8b, %rdi
nop
nop
nop
nop
sub %r15, %r15
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'08': 3, '00': 676, '46': 61}
00 00 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 08 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 08 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 08 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00
*/
