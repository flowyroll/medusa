.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x236e, %r12
nop
nop
nop
xor %r10, %r10
mov (%r12), %esi
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x47aa, %rcx
nop
nop
nop
nop
inc %rdx
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x19616, %rdx
nop
nop
nop
nop
nop
cmp $42903, %rcx
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1bbbe, %rsi
lea addresses_WT_ht+0x16756, %rdi
clflush (%rdi)
cmp %r12, %r12
mov $102, %rcx
rep movsb
sub %rsi, %rsi
lea addresses_normal_ht+0xbb56, %r8
nop
nop
add $60871, %r12
mov $0x6162636465666768, %rax
movq %rax, (%r8)
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x17956, %rsi
lea addresses_UC_ht+0x16c94, %rdi
clflush (%rdi)
cmp %r8, %r8
mov $80, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0x3356, %r13
clflush (%r13)
nop
nop
nop
nop
and $31696, %r10
movb $0x51, (%r13)
nop
cmp $26993, %rcx

// Store
lea addresses_WC+0x1d756, %rax
nop
sub $65478, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
cmp $4509, %rdi

// Store
mov $0x6364ca0000000fd6, %r13
nop
nop
nop
nop
sub $45328, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
xor $8729, %rdx

// Faulty Load
lea addresses_PSE+0x7756, %rbp
nop
nop
nop
add %rdi, %rdi
movb (%rbp), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'33': 4}
33 33 33 33
*/
