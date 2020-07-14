.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rdi
lea addresses_UC_ht+0xec78, %r15
nop
nop
nop
nop
nop
cmp $28403, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
cmp %r14, %r14
pop %rdi
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_PSE+0x12f98, %r10
nop
xor $49878, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r10)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_US+0x17478, %rbp
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movntdq %xmm5, (%rbp)
nop
nop
nop
inc %rax

// Store
lea addresses_WC+0x18238, %rax
clflush (%rax)
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
nop
cmp $20465, %rax

// Faulty Load
lea addresses_US+0x8078, %r8
nop
nop
nop
and $6298, %rsi
mov (%r8), %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'00': 45}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
