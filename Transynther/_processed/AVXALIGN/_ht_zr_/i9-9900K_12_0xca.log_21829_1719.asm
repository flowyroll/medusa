.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xc86d, %rsi
lea addresses_WC_ht+0x1a52d, %rdi
clflush (%rsi)
nop
nop
nop
and %rdx, %rdx
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x182d, %rax
and %r14, %r14
mov (%rax), %r10
nop
nop
nop
add $65496, %rdi
lea addresses_WT_ht+0x1e39d, %rsi
lea addresses_WT_ht+0xee2d, %rdi
clflush (%rsi)
and $4836, %rax
mov $13, %rcx
rep movsq
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x1612d, %rsi
lea addresses_WT_ht+0x7cd, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $22, %rcx
rep movsb
nop
nop
nop
cmp $19358, %rdx
lea addresses_A_ht+0x6f2d, %rcx
nop
nop
nop
nop
and $51679, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp $43537, %rsi
lea addresses_D_ht+0x692d, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r10, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x412d, %rsi
lea addresses_UC_ht+0x1af2d, %rdi
nop
nop
nop
nop
dec %r15
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $58656, %rsi
lea addresses_normal_ht+0x3f2d, %rax
clflush (%rax)
nop
cmp %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rax)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x164d, %rsi
lea addresses_WC_ht+0x1df2d, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $8194, %r10
mov $37, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xb56d, %rsi
lea addresses_A_ht+0x10e4d, %rdi
nop
cmp $19391, %rdx
mov $0, %rcx
rep movsb
nop
add $21686, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rbx

// Faulty Load
lea addresses_PSE+0xf72d, %r12
clflush (%r12)
nop
nop
nop
dec %rbx
movntdqa (%r12), %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 4}}
{'44': 15202, '49': 696, '00': 2, '46': 5929}
46 44 46 44 46 44 44 46 44 44 46 44 44 44 44 46 44 44 46 44 44 46 44 44 49 44 44 44 44 44 46 44 44 46 44 44 46 44 49 44 46 44 44 46 44 44 46 44 44 44 44 46 44 44 49 44 44 44 46 44 44 46 44 44 44 46 44 44 46 44 44 44 44 49 44 44 44 44 44 44 44 46 44 44 49 44 44 44 46 44 44 44 44 44 44 44 49 44 44 46 44 44 44 46 44 46 44 44 46 44 44 46 44 44 49 44 44 46 44 44 46 44 44 46 44 44 46 44 44 49 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 46 44 44 44 44 44 44 44 46 44 46 44 46 44 44 46 44 49 44 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 49 44 44 44 44 44 44 44 49 44 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 44 49 44 44 46 44 44 46 44 44 46 44 46 44 44 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 44 44 46 44 46 44 44 46 44 46 44 44 44 44 44 44 44 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 44 44 44 46 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 44 44 44 46 44 46 44 49 44 44 46 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 46 44 46 44 44 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 44 44 44 44 44 44 44 46 44 44 46 44 44 49 44 44 44 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 49 44 44 44 44 44 46 44 46 44 44 46 44 44 44 46 44 44 44 44 44 44 44 49 44 46 44 46 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 49 44 44 46 44 44 46 44 46 44 44 44 44 44 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 49 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 46 44 44 49 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 44 44 44 46 44 49 44 44 46 44 44 44 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 49 44 44 44 44 44 44 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 46 44 44 44 46 44 49 44 44 49 44 44 44 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 49 44 44 44 44 44 44 44 44 46 44 44 46 44 44 49 44 44 49 44 44 46 44 44 46 44 44 46 44 44 46 44 44 44 44 44 46 44 44 46 44 46 44 44 44 44 46 44 44 46 44 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 44 46 44 44 49 44 44 46 44 46 44 44 46 44 44 46 44 44 49 44 44 44 46 44 44 44 44 46 44 44 46 44 44 46 44 44 46 44 46 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 46 44 44 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 49 44 44 49 44 44 44 46 44 44 44 44 44 46 44 46 44 46 44 44 44 44 44 46 44 44 46 44 44 49 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 44 46 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 49 44 44 46 44 44 46 44 44 46 44 44 46 44 44 49 44 44 44 46 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 49 44 44 44 46 44 46 44 46 44 44 46 44 44 49 44 44 49 44 44 44 44 44 46 44 44
*/
