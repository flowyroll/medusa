.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x326a, %rsi
lea addresses_normal_ht+0x1d26a, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $62219, %rax
mov $67, %rcx
rep movsl
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x1476a, %rsi
lea addresses_A_ht+0x1366a, %rdi
nop
nop
nop
sub $28432, %rax
mov $53, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1c14a, %rsi
lea addresses_WC_ht+0xeb96, %rdi
cmp $10479, %r12
mov $100, %rcx
rep movsw
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x1ea, %rsi
lea addresses_WT_ht+0x1ea6a, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $102, %rcx
rep movsw
cmp $52002, %rcx
lea addresses_WC_ht+0x13c6a, %rcx
nop
nop
nop
nop
nop
xor $50353, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rcx)
nop
sub $59940, %rdx
lea addresses_WT_ht+0x1a17a, %rcx
lfence
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
nop
add $30199, %r13
lea addresses_normal_ht+0x1c26a, %rsi
lea addresses_UC_ht+0x1eea, %rdi
nop
nop
nop
sub %r8, %r8
mov $1, %rcx
rep movsq
nop
nop
add $60554, %r12
lea addresses_normal_ht+0x126a, %rdx
nop
sub $19615, %rsi
movb $0x61, (%rdx)
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0xd632, %rsi
lea addresses_UC_ht+0x88ea, %rdi
nop
nop
nop
and %rdx, %rdx
mov $107, %rcx
rep movsw
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbx
push %rcx

// Faulty Load
lea addresses_WC+0x14a6a, %r14
nop
add $51701, %rcx
vmovaps (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'44': 78, '45': 3197, '00': 15646, '46': 2908}
00 00 00 00 46 00 45 00 45 00 45 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 45 00 45 00 45 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 45 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 46 00 46 00 45 00 45 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 46 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 46 00 46 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 46 00 46 00 45 00 45 00 45 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 46 00 46 00 46 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 46 00 46 00 46 00 46 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 46 00 46 00 45 00 45 00 00 00 00 00 00 00 00 00 46 00 46 00 45 00 45 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 45 00 45 00 45 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 46 00 00 45 00 45 00 00 00 00 00 00 00 46 00 46 00 46 00 46 00 45 00 45 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 46 00 46 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 45 00 45 00 44 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 45 00 45 00 45 00 00 00 00 00 00 00 46 00 46 00 46 00 45 00 45 00 45 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 46 00 46 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 45 00 45 00 44 00 00 00 00 00 00 46 00 46 00 00 46 00 00 00 45 00 45 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 46 00 46 00 46 00 46 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 46 00 45 00 45 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 46 00 00 45 00 45 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 46 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 44 00 00 00 00 00 45 00 00 00 00 46 00 00 46 00 46 00 46 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 00 46 00 46 00 46 00 46 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 00 45 00 00 00 00 46 00 00 46 00 46 00 45 00 45 46 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 00 45 00 45 00 45 00 00 00
*/
