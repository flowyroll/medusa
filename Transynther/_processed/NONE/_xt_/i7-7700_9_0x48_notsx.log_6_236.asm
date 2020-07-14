.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x188e3, %rsi
lea addresses_WT_ht+0xab3, %rdi
nop
nop
nop
nop
nop
lfence
mov $25, %rcx
rep movsl
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1b063, %rdx
nop
nop
nop
xor $8270, %rdi
movl $0x61626364, (%rdx)
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x40e3, %rbp
clflush (%rbp)
nop
add %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm3, (%rbp)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1e68b, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%r15)
nop
nop
nop
nop
and $62864, %rbp
lea addresses_WC_ht+0x15ee3, %rsi
clflush (%rsi)
nop
nop
nop
xor %rbx, %rbx
mov (%rsi), %ecx
nop
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_WT+0x1b6a3, %rbx
nop
nop
and $16266, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
xor $46659, %r15

// Store
mov $0x6f38fa0000000c83, %r10
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%r10)
nop
nop
nop
nop
and $32355, %rbx

// Store
lea addresses_RW+0x17857, %rdx
nop
nop
nop
nop
nop
dec %r15
movb $0x51, (%rdx)
nop
nop
and $64072, %r10

// Faulty Load
lea addresses_normal+0x170e3, %r10
nop
nop
nop
xor $19968, %rbx
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'34': 6}
34 34 34 34 34 34
*/
