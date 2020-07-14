.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rsi
lea addresses_WC_ht+0x1e045, %rsi
nop
nop
inc %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rsi)
nop
and %r14, %r14
lea addresses_normal_ht+0x1311d, %r13
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x61626364, (%r13)
nop
nop
nop
nop
and $42383, %r11
lea addresses_normal_ht+0x315, %r13
clflush (%r13)
nop
nop
and $61337, %r14
mov (%r13), %eax
nop
and $17224, %rax
lea addresses_A_ht+0xdf45, %rbp
nop
and %rcx, %rcx
mov (%rbp), %r11
nop
nop
nop
mfence
lea addresses_D_ht+0x13585, %rsi
nop
cmp %r13, %r13
mov (%rsi), %bp
xor %r13, %r13
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx

// Store
mov $0x4197cc0000000c55, %r13
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r13)
and $15789, %r13

// Faulty Load
lea addresses_normal+0x12445, %r12
nop
cmp %r9, %r9
mov (%r12), %ebx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'34': 24}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
