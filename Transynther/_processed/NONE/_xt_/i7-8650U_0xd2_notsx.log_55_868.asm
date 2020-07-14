.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x152c6, %rsi
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rsi)
nop
cmp $61023, %rbp
lea addresses_A_ht+0x936b, %r11
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x2247, %rsi
lea addresses_UC_ht+0x1e73b, %rdi
nop
add $34379, %r8
mov $59, %rcx
rep movsb
nop
inc %rsi
lea addresses_D_ht+0x1c40b, %rsi
lea addresses_normal_ht+0x17c1b, %rdi
clflush (%rsi)
xor $30413, %rax
mov $26, %rcx
rep movsq
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x1f60f0000000c5f, %rcx
inc %r13
movw $0x5152, (%rcx)
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_WT+0xd36b, %r12
nop
xor %r14, %r14
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'39': 55}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
