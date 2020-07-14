.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xbd86, %rsi
lea addresses_normal_ht+0xbf3a, %rdi
cmp $19417, %r14
mov $4, %rcx
rep movsl
nop
nop
nop
nop
sub $43787, %rcx
lea addresses_WT_ht+0x104a6, %rsi
lea addresses_UC_ht+0xb586, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r13, %r13
mov $107, %rcx
rep movsb
nop
xor $48822, %rsi
lea addresses_WT_ht+0x10f86, %rax
nop
nop
nop
nop
xor %r12, %r12
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0xf986, %r14
nop
nop
nop
nop
nop
dec %rdi
movw $0x6162, (%r14)
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x14c4e, %rsi
lea addresses_WC_ht+0x4846, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r14, %r14
mov $110, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $11673, %rdi
lea addresses_D_ht+0x4e42, %rdi
xor %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rdi)
inc %rdi
lea addresses_WC_ht+0x14786, %rdi
nop
dec %rcx
mov (%rdi), %rax
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x18d86, %rsi
lea addresses_D_ht+0x4986, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $88, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x14986, %rcx
nop
and %r12, %r12
mov (%rcx), %r13w
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x3bfa, %rsi
lea addresses_D_ht+0x183ee, %rdi
xor $63062, %r12
mov $12, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x4986, %rcx
clflush (%rcx)
nop
cmp $63477, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rcx
movntdq %xmm6, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1e5e6, %r8
nop
sub %r11, %r11
movw $0x5152, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rsi
nop
nop
nop
nop
xor $25409, %r10

// Faulty Load
lea addresses_D+0x1f186, %rdx
nop
nop
nop
nop
sub %r8, %r8
mov (%rdx), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
