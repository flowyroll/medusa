.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x62d7, %r13
cmp %rax, %rax
movb $0x61, (%r13)
nop
xor $35126, %r10
lea addresses_D_ht+0x198d7, %rsi
lea addresses_normal_ht+0xa0d7, %rdi
xor $30396, %r9
mov $78, %rcx
rep movsl
nop
nop
nop
cmp $43593, %r13
lea addresses_D_ht+0x72d7, %r9
nop
add $4166, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
nop
xor $19969, %r9
lea addresses_A_ht+0x185d7, %r9
nop
nop
and $40893, %r10
movb (%r9), %r8b
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x5f9a, %rsi
lea addresses_WT_ht+0x9df, %rdi
nop
nop
nop
add %r9, %r9
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x15ff7, %rax
nop
nop
and $59119, %r13
movups (%rax), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
sub $59851, %rax
lea addresses_A_ht+0xe4d7, %rsi
lea addresses_UC_ht+0x103c7, %rdi
add %r9, %r9
mov $18, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xe21b, %rcx
add %rsi, %rsi
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
inc %rax
lea addresses_WT_ht+0x7537, %r8
nop
nop
nop
dec %r9
mov (%r8), %edi
nop
nop
xor $36788, %r10
lea addresses_UC_ht+0x517, %rsi
nop
nop
nop
nop
and $12550, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x957, %r10
sub %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
nop
cmp $39181, %rcx

// Store
lea addresses_normal+0x1a877, %rdx
nop
cmp %rdi, %rdi
movb $0x51, (%rdx)
nop
nop
inc %r10

// Store
lea addresses_normal+0x18c13, %r10
nop
add $25296, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
add %rcx, %rcx

// Store
lea addresses_PSE+0xd43, %r8
nop
nop
cmp $45169, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r8)
nop
and %r15, %r15

// Store
lea addresses_D+0x12856, %r10
clflush (%r10)
nop
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_A+0x52d7, %r10
nop
nop
nop
nop
nop
add $27444, %rdx
movups (%r10), %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'45': 2049, '49': 5331, '46': 14449}
46 46 46 46 49 45 46 49 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 49 46 49 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 49 45 46 46 46 46 46 46 49 46 46 49 46 46 49 45 45 46 46 46 46 46 46 49 46 46 46 46 46 49 45 45 46 46 46 46 46 46 46 46 46 46 49 46 46 49 46 46 46 49 45 45 45 46 46 46 46 49 46 49 46 46 46 46 46 49 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 49 45 46 46 46 46 46 46 46 46 46 46 46 49 49 45 45 45 45 46 46 46 46 49 46 46 49 46 46 49 46 49 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 46 49 46 46 46 49 45 45 46 46 46 46 46 49 46 46 49 46 49 46 46 49 46 46 49 45 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 45 46 49 46 46 49 45 46 49 46 46 46 46 49 46 46 46 46 46 46 49 45 46 49 46 49 46 49 46 49 46 46 46 49 45 45 46 46 46 49 46 49 46 49 46 46 46 46 49 46 49 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 49 46 46 46 46 49 46 49 45 46 46 49 45 46 49 45 49 46 45 46 49 46 49 45 46 49 46 46 46 46 46 46 46 49 46 49 45 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 49 46 49 45 46 49 46 46 46 46 49 46 49 46 46 46 49 46 46 46 46 49 46 49 46 46 46 49 45 45 46 46 49 46 46 46 46 46 46 46 46 49 45 46 46 46 45 46 49 46 49 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 45 45 46 46 49 46 49 46 49 45 46 46 46 49 45 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 49 46 49 45 46 46 49 45 45 46 46 46 46 46 46 49 46 46 46 49 46 49 46 46 46 46 49 45 46 46 46 46 49 46 49 46 46 46 46 49 46 49 46 46 46 46 49 46 49 45 46 46 46 49 46 46 46 46 46 49 45 46 46 49 45 45 45 46 49 46 46 49 46 46 46 49 45 46 49 45 46 49 46 46 46 46 46 46 46 46 46 49 45 46 49 46 49 46 49 46 46 46 46 46 46 46 49 49 46 49 46 46 46 49 46 46 46 49 45 46 46 46 46 49 45 46 49 46 49 46 49 45 45 45 45 45 46 46 46 46 49 46 46 49 45 46 49 46 46 46 46 49 46 46 46 46 49 45 46 49 46 49 45 46 45 46 46 49 46 49 46 46 49 45 46 46 49 46 49 46 49 45 46 46 46 46 49 46 49 46 49 46 46 46 46 49 45 46 46 46 46 46 46 49 46 49 46 46 46 46 49 46 46 46 46 49 45 45 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 45 46 46 46 46 46 46 49 46 46 46 46 46 46 49 45 46 49 46 46 46 49 46 46 46 49 45 46 46 46 46 45 46 49 46 46 49 46 46 49 45 45 46 46 46 46 46 49 46 46 46 46 49 46 46 49 46 46 49 45 45 46 46 46 49 49 46 46 49 46 45 46 49 45 46 46 46 46 46 46 49 46 49 45 46 46 46 49 45 46 46 46 49 45 46 49 46 46 46 46 49 45 46 49 46 49 46 46 46 46 49 46 46 46 46 46 46 49 45 46 49 46 49 46 49 46 46 49 46 49 46 49 46 46 46 46 49 45 46 46 46 46 46 46 49 46 46 49 46 46 46 46 49 46 49 46 46 46 46 49 46 49 46 46 46 46 49 46 46 46 46 46 49 49 45 46 46 46 46 49 46 46 46 46 46 46 49 45 46 46 46 49 46 49 46 46 46 49 45 45 46 46 46 46 46 46 49 46 49 46 49 46 49 46 46 46 46 49 45 46 46 46 46 49 46 49 46 46 46 46 46 46 46 49 46 46 46 46 49 46 49 46 46 46 49 46 46 46 46 46 46 46 49 46 46 49 45 46 46 46 46 49 46 46 46 46 46 49 45 45 46 46 49 46 49 46 46 49 46 46 46 49 45 46 46 46 46 49 46 49 46 49 45 46 46 46 46 49 46 46 46 46 49 46 46 49 46 49 46 49 46 46 46 46 49
*/
