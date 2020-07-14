.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x9f6e, %rbx
nop
nop
nop
sub $52080, %rax
movl $0x61626364, (%rbx)
nop
nop
and %r15, %r15
lea addresses_D_ht+0xfaae, %r10
nop
nop
mfence
mov (%r10), %r8d
nop
cmp $44162, %rbx
lea addresses_normal_ht+0x38ae, %rsi
lea addresses_WC_ht+0x18cae, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $124, %rcx
rep movsb
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x142ae, %rbx
sub %r14, %r14
mov (%rbx), %rax
nop
nop
nop
add $15535, %r14
lea addresses_WT_ht+0xa9ae, %r15
nop
nop
nop
nop
nop
sub $16825, %rax
mov (%r15), %r8w
add $46417, %rbx
lea addresses_WC_ht+0x1a2ae, %rsi
lea addresses_D_ht+0x76ae, %rdi
nop
nop
nop
cmp $17007, %r10
mov $49, %rcx
rep movsb
and $59799, %r14
lea addresses_D_ht+0x1600e, %rsi
lea addresses_WC_ht+0x62ae, %rdi
nop
nop
nop
sub $27049, %r14
mov $106, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1eae, %rsi
lea addresses_normal_ht+0x5082, %rdi
clflush (%rsi)
nop
nop
and %r8, %r8
mov $66, %rcx
rep movsw
nop
nop
sub $54655, %rcx
lea addresses_UC_ht+0xa2ae, %rsi
lea addresses_normal_ht+0x10aae, %rdi
nop
add $49294, %r14
mov $44, %rcx
rep movsl
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x10c52, %rsi
nop
nop
nop
nop
and $50486, %r8
movw $0x6162, (%rsi)
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Faulty Load
mov $0x2ae, %rcx
cmp $65105, %rdi
movntdqa (%rcx), %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'46': 14759, '00': 5793, '48': 1, '44': 1276}
46 00 46 46 00 00 00 44 46 00 00 44 46 00 44 00 00 46 46 46 46 46 46 46 46 46 00 46 46 46 44 46 46 46 00 46 00 46 44 44 46 00 00 46 46 00 46 46 46 00 00 46 00 46 46 46 00 44 00 46 46 46 46 46 00 00 46 00 46 44 46 46 00 46 00 46 46 00 00 46 00 00 46 00 46 46 46 00 46 46 00 46 46 00 46 46 46 00 46 46 46 46 46 46 46 00 44 46 46 46 46 46 46 44 00 00 46 46 46 46 46 00 46 44 46 46 46 46 46 44 46 46 46 00 46 00 44 46 46 46 46 46 46 00 46 00 44 00 46 46 00 44 00 46 46 44 46 00 46 00 00 00 00 46 46 46 00 00 00 46 46 00 00 46 46 00 46 00 46 00 46 46 46 46 00 46 00 46 44 46 44 46 46 00 00 00 46 44 44 46 00 00 46 46 00 46 46 46 00 00 46 00 00 00 46 00 46 00 46 46 46 46 46 00 46 46 00 46 46 00 46 46 00 00 46 00 00 46 46 46 00 46 46 00 46 46 46 46 46 00 00 44 46 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 46 00 44 00 46 00 00 46 00 00 00 46 46 46 46 46 46 00 00 46 00 00 46 46 46 46 46 00 46 46 46 46 00 00 44 00 46 46 44 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 44 00 00 46 46 46 00 46 00 00 00 46 46 46 00 00 46 46 46 46 00 00 00 46 00 46 46 44 44 46 46 46 00 00 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 44 46 00 44 46 00 44 46 46 46 46 46 00 00 44 00 00 44 46 46 00 00 00 00 00 00 46 46 46 46 00 46 46 44 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 44 46 46 46 46 46 46 00 46 00 44 46 00 00 46 46 46 46 00 00 00 44 46 00 46 00 46 00 46 46 00 46 00 46 44 00 44 00 44 44 46 44 46 46 44 46 44 46 46 46 46 46 46 46 46 00 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 00 46 00 44 46 46 46 00 00 00 00 46 44 46 00 00 00 46 00 00 46 00 00 46 46 46 46 46 46 00 44 46 46 46 00 00 46 46 46 46 46 46 46 46 00 46 00 46 44 46 00 00 00 46 46 46 44 00 44 00 46 46 00 46 00 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 00 00 46 00 00 46 44 46 44 00 46 46 46 46 00 46 46 00 00 46 00 46 00 00 46 00 44 46 46 46 46 46 00 46 46 46 46 00 00 46 00 46 46 00 46 00 00 46 46 46 46 46 46 46 00 46 00 46 46 00 44 00 46 46 46 44 46 46 00 00 00 00 00 46 00 46 46 46 46 46 46 46 46 00 00 00 46 00 44 00 46 00 46 46 00 46 44 00 46 46 46 46 00 46 00 46 00 46 46 00 46 46 44 00 00 00 46 44 46 46 46 46 46 00 46 46 00 00 46 46 46 00 46 00 00 46 46 44 46 46 46 00 46 46 46 46 00 46 00 00 46 00 46 44 46 46 46 46 46 46 46 44 46 00 46 00 46 00 46 44 44 00 46 00 00 44 00 46 44 00 46 46 46 44 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 00 46 46 46 46 46 00 00 46 46 00 46 00 00 44 44 46 46 46 00 46 46 46 00 46 46 46 00 46 44 46 46 46 00 46 00 46 00 46 00 46 46 46 46 46 44 46 00 46 46 46 46 00 00 46 44 46 46 00 44 46 00 46 46 46 00 00 00 46 46 00 46 46 00 46 00 46 00 00 46 44 46 46 00 00 46 00 44 46 46 46 00 44 46 00 00 46 00 46 46 46 44 46 46 00 46 46 44 00 46 44 46 00 00 46 46 44 46 46 00 46 46 46 00 00 46 00 00 46 00 46 46 46 00 00 46 46 00 46 46 46 00 46 00 46 46 46 00 00 00 00 46 46 44 00 00 46 46 00 46 46 00 00 00 46 46 00 46 46 46 46 46 46 46 46
*/
